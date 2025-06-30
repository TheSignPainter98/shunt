use std::borrow::Cow;
use std::fmt::Display;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::path::{self, Path};
use std::sync::LazyLock;

use aho_corasick::{AhoCorasick, Match};
use anyhow::{Context, Result, anyhow};
use mdbook::BookItem;
use mdbook::book::{Book, Chapter};
use mdbook::errors::Result as MdbookResult;
use mdbook::preprocess::{Preprocessor, PreprocessorContext};
use pulldown_cmark::{Event, Parser};
use regex::Regex;

#[derive(Default)]
pub struct OxPreprocessor;

impl OxPreprocessor {
    pub fn new() -> Self {
        Self
    }

    fn preprocess_bookitem(&self, item: &mut BookItem, ctx: &PreprocessorContext) -> Result<()> {
        match item {
            BookItem::Chapter(chapter) => self.preprocess_chapter(chapter, ctx),
            BookItem::Separator | BookItem::PartTitle(_) => Ok(()),
        }
    }

    fn preprocess_chapter(&self, chapter: &mut Chapter, ctx: &PreprocessorContext) -> Result<()> {
        let parser = Parser::new(&chapter.content).map(|event| match event {
            Event::Text(text) => Event::Text(self.preprocess_text(&text, chapter, ctx).into()),
            _ => event,
        });
        let new_content_capacity = (chapter.content.len() as f64 * 1.05) as usize;
        let mut new_content = String::with_capacity(new_content_capacity);
        pulldown_cmark_to_cmark::cmark(parser, &mut new_content)?;
        chapter.content = new_content;

        for sub_item in &mut chapter.sub_items {
            self.preprocess_bookitem(sub_item, ctx)?;
        }

        Ok(())
    }

    fn preprocess_text(&self, text: &str, chapter: &Chapter, ctx: &PreprocessorContext) -> String {
        static MATCHER: LazyLock<AhoCorasick> = LazyLock::new(|| {
            AhoCorasick::new([StateSpecDirective::pattern()])
                .expect("internal error: cannot construct aho-corasick searcher")
        });

        let replacement_ctx = ReplacementCtx {
            chapter,
            preprocessor: ctx,
        };
        let mut fragments = Vec::with_capacity(8);
        let mut cursor = 0;
        MATCHER.find_iter(text).for_each(|match_result| {
            fragments.push(Cow::from(&text[cursor..match_result.start()]));
            cursor = match_result.start();

            match self.replacement(text, &match_result, &replacement_ctx) {
                Ok(replacement) => {
                    let Replacement {
                        gobble,
                        new_content,
                    } = replacement;
                    cursor += gobble;
                    fragments.push(new_content.into());
                }
                Err(err) => {
                    let raw_match = &text[match_result.range()];
                    eprintln!("cannot replace {raw_match}...}}}}: {err}");
                    fragments.push(raw_match.into());
                }
            }
        });
        fragments.push(text[cursor..].into());
        fragments.concat()
    }

    fn replacement(
        &self,
        text: &str,
        result: &Match,
        ctx: &ReplacementCtx<'_>,
    ) -> Result<Replacement> {
        let directive_name_end = result.span().end;
        let (arg_end_offset, _) = text[directive_name_end..]
            .match_indices("}}")
            .next()
            .ok_or_else(|| anyhow!("cannot find end of command invocation"))?;
        let directive_args = &text[directive_name_end..directive_name_end + arg_end_offset];
        let gobble = directive_name_end + arg_end_offset + "}}".len();

        let directive = match result.pattern().as_u32() {
            0 => OxDirective::StateSpec(StateSpecDirective::new(directive_args)?),
            index => panic!("internal error: unexpected pattern index {index}"),
        };
        let new_content = directive.replacement(ctx)?;
        Ok(Replacement {
            gobble,
            new_content,
        })
    }
}

impl Preprocessor for OxPreprocessor {
    fn name(&self) -> &str {
        "mdbook-ox"
    }

    fn supports_renderer(&self, renderer: &str) -> bool {
        renderer == "html"
    }

    fn run(&self, ctx: &PreprocessorContext, mut book: Book) -> MdbookResult<Book> {
        book.sections
            .iter_mut()
            .try_for_each(|section| self.preprocess_bookitem(section, ctx))?;
        Ok(book)
    }
}

enum OxDirective<'src> {
    StateSpec(StateSpecDirective<'src>),
}

impl OxDirective<'_> {
    fn replacement(&self, ctx: &ReplacementCtx<'_>) -> Result<String> {
        match self {
            Self::StateSpec(d) => d.replacement(ctx),
        }
    }
}

struct StateSpecDirective<'src> {
    src_path: &'src Path,
    state_machine_name: &'src str,
}

impl<'src> StateSpecDirective<'src> {
    const fn pattern() -> &'static str {
        "{{#state-machine-spec "
    }

    fn new(args: &'src str) -> Result<Self> {
        let [src_file, state_machine_name] = args
            .split(' ')
            .collect::<Vec<_>>()
            .try_into()
            .map_err(|_| anyhow!("cannot parse '{args}' as state-machine-spec args"))?;
        let src_path = Path::new(src_file);
        Ok(Self {
            src_path,
            state_machine_name,
        })
    }

    fn replacement(&self, ctx: &ReplacementCtx<'_>) -> Result<String> {
        let source_reader = self.source_reader(ctx)?;
        let state_machine = self.parse_state_machine_declaration(source_reader)?;
        Ok(format!("{state_machine}"))
    }

    fn source_reader(&self, ctx: &ReplacementCtx<'_>) -> Result<impl BufRead> {
        let joined_src_path = path::absolute(
            ctx.preprocessor
                .root
                .join("src")
                .join(
                    ctx.chapter
                        .source_path
                        .as_ref()
                        .expect("cannot get source path of chapter")
                        .parent()
                        .expect("internal error: source file has no parent directory"),
                )
                .join(self.src_path),
        )?;
        let abs_src_path = joined_src_path
            .canonicalize()
            .with_context(|| anyhow!("cannot canonicalise {}", joined_src_path.display()))?;
        let file = File::open(&abs_src_path)
            .with_context(|| anyhow!("cannot open {}", abs_src_path.display()))?;
        Ok(BufReader::new(file))
    }

    fn parse_state_machine_declaration(
        &self,
        buf_reader: impl BufRead,
    ) -> Result<StateMachineDeclaration> {
        static SET_INITIAL_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_initial_state '([^']*)'").unwrap());
        static ADD_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\add \(State '([^']*)'\)").unwrap());
        static DECLARE_END_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\declare_end_state!").unwrap());
        static ADD_STATE_TRANSITION: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\add_transition_to '([^']*)'").unwrap());
        static START_SET_DATA_TYPE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_data_type \[\[\{").unwrap());
        static END_SET_DATA_TYPE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\}\]\]$").unwrap());

        let state_machine_declaration =
            format!("StateMachineBuilder '{}'", self.state_machine_name);
        let declaration_lines = buf_reader
            .lines()
            .map(Result::ok)
            .fuse()
            .map(Option::unwrap)
            .skip_while(|line| !line.contains(&state_machine_declaration))
            .skip(1)
            .take_while(|line| !line.trim().is_empty())
            .take_while(|line| !line.trim_end().ends_with(r"\build!"));
        #[derive(Default)]
        struct ParserState {
            state_name: Option<String>,
            parsing_data_type: bool,
            data_type_lines: Vec<String>,
            data_type_prefix_len: Option<usize>,
            transitions: Vec<String>,
            is_start_state: bool,
            is_end_state: bool,
        }
        let mut initial_state_name = None;
        let mut parser_state = ParserState::default();
        let mut states = Vec::new();
        for line in declaration_lines {
            if parser_state.parsing_data_type {
                if END_SET_DATA_TYPE_LINE.is_match(&line) {
                    parser_state.parsing_data_type = false;
                } else {
                    if parser_state.data_type_prefix_len.is_none() {
                        parser_state.data_type_prefix_len =
                            Some(line.len() - line.trim_start().len());
                    }
                    parser_state
                        .data_type_lines
                        .push(line[parser_state.data_type_prefix_len.unwrap_or(0)..].to_owned());
                    continue;
                }
            } else if START_SET_DATA_TYPE_LINE.is_match(&line) {
                parser_state.parsing_data_type = true;
            } else if let Some(captures) = SET_INITIAL_STATE_LINE.captures(&line) {
                initial_state_name = Some(captures[1].to_owned());
            } else if let Some(captures) = ADD_STATE_LINE.captures(&line) {
                parser_state = match parser_state {
                    ParserState {
                        state_name: Some(state_name),
                        data_type_lines,
                        transitions,
                        is_start_state,
                        is_end_state,
                        ..
                    } => {
                        states.push(State {
                            state_name,
                            data_type_lines,
                            transitions,
                            is_start_state,
                            is_end_state,
                        });
                        ParserState::default()
                    }
                    _ => ParserState::default(),
                };
                let name = captures[1].to_owned();
                if initial_state_name
                    .as_ref()
                    .is_some_and(|initial_state_name| *initial_state_name == name)
                {
                    parser_state.is_start_state = true;
                }
                parser_state.state_name = Some(name);
            } else if DECLARE_END_STATE_LINE.is_match(&line) {
                parser_state.is_end_state = true;
            } else if let Some(captures) = ADD_STATE_TRANSITION.captures(&line) {
                parser_state.transitions.push(captures[1].to_owned())
            } else {
                return Err(anyhow!(
                    "cannot parse state machine declaration: unexpected line: {line}"
                ));
            }
        }
        let ParserState {
            state_name,
            data_type_lines,
            transitions,
            is_start_state,
            is_end_state,
            ..
        } = parser_state;
        if let Some(state_name) = state_name {
            states.push(State {
                state_name,
                data_type_lines,
                transitions,
                is_start_state,
                is_end_state,
            });
        }

        states.sort();
        Ok(StateMachineDeclaration {
            name: self.state_machine_name.to_owned(),
            states,
        })
    }
}

struct ReplacementCtx<'ctx> {
    chapter: &'ctx Chapter,
    preprocessor: &'ctx PreprocessorContext,
}

struct StateMachineDeclaration {
    name: String,
    states: Vec<State>,
}

impl Display for StateMachineDeclaration {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let Self { name, states } = self;
        writeln!(f, "The states of `{name}` contain the following data:")?;
        for state in states {
            let State {
                state_name,
                data_type_lines,
                transitions: _,
                is_start_state: _,
                is_end_state: _,
            } = state;
            writeln!(f, "- {state_name}:")?;

            if !data_type_lines.is_empty() {
                writeln!(f, "  ```yaml")?;
                for data_type_line in data_type_lines {
                    writeln!(f, "  {data_type_line}")?;
                }
                writeln!(f, "  ```")?;
            } else {
                writeln!(f, "  _none_")?;
            }
        }
        Ok(())
    }
}

#[derive(Default, Eq, PartialEq)]
struct State {
    state_name: String,
    data_type_lines: Vec<String>,
    #[allow(unused)]
    transitions: Vec<String>,
    is_start_state: bool,
    is_end_state: bool,
}

impl Ord for State {
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        self.state_name.cmp(&other.state_name)
    }
}

impl PartialOrd for State {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

struct Replacement {
    gobble: usize,
    new_content: String,
}
