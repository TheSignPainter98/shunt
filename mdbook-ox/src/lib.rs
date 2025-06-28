use std::fs::File;
use std::io::{BufRead, BufReader};
use std::path::Path;
use std::sync::LazyLock;

use aho_corasick::{AhoCorasick, Match};
use anyhow::{anyhow, Context, Result};
use mdbook::book::{Book, Chapter};
use mdbook::errors::Result as MdbookResult;
use mdbook::preprocess::{Preprocessor, PreprocessorContext};
use mdbook::BookItem;
use pulldown_cmark::{Event, Parser};
use regex::Regex;

#[derive(Default)]
pub struct OxPreprocessor;

impl OxPreprocessor {
    pub fn new() -> Self {
        Self::default()
    }

    fn preprocess_bookitem(&self, item: &mut BookItem) -> Result<()> {
        match item {
            BookItem::Chapter(chapter) => self.preprocess_chapter(chapter),
            BookItem::Separator | BookItem::PartTitle(_) => Ok(()),
        }
    }

    fn preprocess_chapter(&self, chapter: &mut Chapter) -> Result<()> {
        let parser = Parser::new(&chapter.content).map(|event| match event {
            Event::Text(text) => Event::Text(self.preprocess_text(&text, chapter).into()),
            _ => event,
        });
        let new_content_capacity = (chapter.content.len() as f64 * 1.05) as usize;
        let mut new_content = String::with_capacity(new_content_capacity);
        pulldown_cmark_to_cmark::cmark(parser, &mut new_content)?;
        chapter.content = new_content;

        for sub_item in &mut chapter.sub_items {
            self.preprocess_bookitem(sub_item)?;
        }

        Ok(())
    }

    fn preprocess_text(&self, text: &str, chapter: &Chapter) -> String {
        static MATCHER: LazyLock<AhoCorasick> = LazyLock::new(|| {
            AhoCorasick::new([StateSpecDirective::pattern()])
                .expect("internal error: cannot construct aho-corasick searcher")
        });

        let mut ret = String::with_capacity(text.len());
        MATCHER.replace_all_with(text, &mut ret, |result, raw_match, ret| {
            if let Err(err) = self.handle_replacement(text, result, ret, chapter) {
                eprintln!("cannot replace {raw_match}...}}}}: {err}");
                ret.push_str(raw_match);
            }
            true
        });
        ret
    }

    fn handle_replacement(
        &self,
        text: &str,
        result: &Match,
        buf: &mut String,
        chapter: &Chapter,
    ) -> Result<()> {
        let directive_name_end = result.span().end;
        let (arg_end_offset, _) = text[directive_name_end..]
            .match_indices("}}")
            .next()
            .ok_or_else(|| anyhow!("cannot find end of command invocation"))?;
        let directive_args = &text[directive_name_end..directive_name_end + arg_end_offset];
        let directive = match result.pattern().as_u32() {
            0 => OxDirective::StateSpec(StateSpecDirective::new(directive_args)?),
            index => panic!("internal error: unexpected pattern index {index}"),
        };
        directive.write_replacement_to(buf, chapter)?;
        Ok(())
    }
}

impl Preprocessor for OxPreprocessor {
    fn name(&self) -> &str {
        "mdbook-ox"
    }

    fn supports_renderer(&self, renderer: &str) -> bool {
        renderer == "html"
    }

    fn run(&self, _ctx: &PreprocessorContext, mut book: Book) -> MdbookResult<Book> {
        book.sections
            .iter_mut()
            .try_for_each(|section| self.preprocess_bookitem(section))?;
        Ok(book)
    }
}

enum OxDirective<'src> {
    StateSpec(StateSpecDirective<'src>),
}

impl<'src> OxDirective<'src> {
    fn write_replacement_to(&self, buf: &mut String, chapter: &Chapter) -> Result<()> {
        match self {
            Self::StateSpec(d) => d.write_replacement_to(buf, chapter),
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

    fn write_replacement_to(&self, _buf: &mut String, chapter: &Chapter) -> Result<()> {
        static SET_INITIAL_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_initial_state '([^']*)'").unwrap());
        static ADD_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\add \(State '([^']*)'\)").unwrap());
        static ADD_STATE_TRANSITION: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\add_transition_to '([^']*)'").unwrap());
        static START_SET_DATA_TYPE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_data_type \[\[{").unwrap());
        static END_SET_DATA_TYPE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\}\]\]$").unwrap());

        let Self {
            src_path,
            state_machine_name,
        } = self;

        let abs_src_path = chapter
            .source_path
            .as_ref()
            .expect("cannot get source path of chapter")
            .join(src_path);
        let file = File::open(&abs_src_path)
            .with_context(|| anyhow!("cannot open {}", abs_src_path.display()))?;

        let state_machine_declaration = format!("StateMachineBuilder '{state_machine_name}'");
        let mut declaration_lines = BufReader::new(file)
            .lines()
            .map(Result::ok)
            .fuse()
            .map(Option::unwrap)
            .skip_while(|line| !line.contains(&state_machine_declaration))
            .skip(1)
            .take_while(|line| !line.trim().is_empty())
            .take_while(|line| !line.trim_start().starts_with(r"\build!"));

        let start_state = {
            let first_line = declaration_lines.next().ok_or_else(|| {
                anyhow!("cannot parse state machine declaration: declaration empty")
            })?;
            let line = match declaration_lines.next() {
                Some(line) => line,
                None => {
                    return Err(anyhow!(
                        "cannot parse state machine declaration: no start state declared"
                    ));
                }
            };

            SET_INITIAL_STATE_LINE.captures(&line).ok_or_else(|| anyhow!("cannot parse state machine declaration: expected set_initial_state line, got {line}"))?
                .get(0)
                .expect("internal error: no match")
                .as_str()
                .to_owned()
        };

        struct State {
            name: String,
            data_type: Vec<String>,
            transitions: Vec<String>,
            is_initial_state: bool,
            is_end_state: bool,
        }
        let mut states = Vec::new();
        enum ParserState {
            ParsingStateName,
            MaybeParsingDataType {
                state_name: String,
            },
            ParsingDataType {
                state_name: String,
                data_type: Vec<String>,
                prefix_len: Option<usize>,
            },
            ParsingTransitions {
                state_name: String,
                data_type: Vec<String>,
                transitions: Vec<String>,
            },
            End(Option<ParserEndState>),
        }
        struct ParserEndState {
            state_name: String,
            data_type: Vec<String>,
            transitions: Vec<String>,
        }
        let mut parse_state = ParserState::ParsingStateName;
        loop {
            parse_state = match parse_state {
                ParserState::ParsingStateName => {
                    let line = match declaration_lines.next() {
                        Some(line) => line,
                        None => {
                            parse_state = ParserState::End(None);
                            continue;
                        }
                    };
                    let state_name = ADD_STATE_LINE
                        .captures(&line)
                        .ok_or_else(|| {
                            anyhow!(
                                "cannot parse state machine declaration: expected add-state line"
                            )
                        })?
                        .get(0)
                        .expect("internal error: no match")
                        .as_str()
                        .to_owned();
                    ParserState::MaybeParsingDataType { state_name }
                }
                ParserState::MaybeParsingDataType { state_name } => {
                    let line = match declaration_lines.next() {
                        Some(line) => line,
                        None => {
                            parse_state = ParserState::End(Some(ParserEndState {
                                state_name,
                                data_type: Vec::new(),
                                transitions: Vec::new(),
                            }));
                            continue;
                        }
                    };
                    if START_SET_DATA_TYPE_LINE.is_match(&line) {
                        ParserState::ParsingDataType {
                            state_name,
                            data_type: Vec::new(),
                            prefix_len: None,
                        }
                    } else {
                        ParserState::ParsingTransitions {
                            state_name,
                            data_type: Vec::new(),
                            transitions: Vec::new(),
                        }
                    }
                }
                ParserState::ParsingDataType {
                    state_name,
                    mut data_type,
                    mut prefix_len,
                } => {
                    let line = match declaration_lines.next() {
                        Some(line) => line,
                        None => {
                            return Err(anyhow!("cannot parse state machine declaration: data type declaration ended early"))
                        },
                    };
                    if prefix_len.is_none() {
                        prefix_len = Some(line.len() - line.trim_start().len())
                    }
                    if END_SET_DATA_TYPE_LINE.is_match(&line) {
                        ParserState::ParsingTransitions {
                            state_name,
                            data_type,
                            transitions: Vec::new(),
                        }
                    } else {
                        data_type.push(line[prefix_len.unwrap_or(0)..].to_owned());
                        ParserState::ParsingDataType {
                            state_name,
                            data_type,
                            prefix_len,
                        }
                    }
                }
                ParserState::ParsingTransitions {
                    state_name,
                    data_type,
                    mut transitions,
                } => {
                    let line = match declaration_lines.next() {
                        Some(line) => line,
                        None => {
                            parse_state = ParserState::End(Some(ParserEndState {
                                state_name,
                                data_type,
                                transitions,
                            }));
                            continue;
                        }
                    };
                    if let Some(captures) = ADD_STATE_TRANSITION.captures(&line) {
                        transitions.push(captures[0].to_owned());
                        ParserState::ParsingTransitions {
                            state_name,
                            data_type,
                            transitions,
                        }
                    } else if let Some(captures) = ADD_STATE_LINE.captures(&line) {
                        let state_name = captures[0].to_owned();
                        ParserState::MaybeParsingDataType { state_name }
                    } else {
                        return Err(anyhow!(
                            "cannot parse state machine declaration: unexpected line: {line:?}"
                        ));
                    }
                }
                ParserState::End(end_state) => {
                    if let Some(ParserEndState { state_name, data_type, transitions }) {
                        states.push(State {
                            name: state_name,
                            data_type,
                            transitions,
                        })
                    }
                }
            };
        }
        // if let Some(state) = state {
        //     states.push(state);
        // }

        Ok(())
    }
}
