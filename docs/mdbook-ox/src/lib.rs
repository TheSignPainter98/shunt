mod directives;

use std::borrow::Cow;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::path::{self, Path, PathBuf};
use std::sync::LazyLock;

use aho_corasick::{AhoCorasick, Match};
use anyhow::{anyhow, Context, Result};
use mdbook::book::{Book, Chapter};
use mdbook::errors::Result as MdbookResult;
use mdbook::preprocess::{Preprocessor, PreprocessorContext};
use mdbook::BookItem;
use pulldown_cmark::{Event, Parser};

use crate::directives::{StateSpecDirective, TypesDirective, VersionDirective};

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
        static PATTERNS: [&str; 3] = [
            StateSpecDirective::pattern(),
            TypesDirective::pattern(),
            VersionDirective::pattern(),
        ];
        static MATCHER: LazyLock<AhoCorasick> = LazyLock::new(|| {
            AhoCorasick::new(PATTERNS)
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
        let directive_name_start = result.span().start;
        let gobble = directive_name_end - directive_name_start + arg_end_offset + "}}".len();

        let directive = match result.pattern().as_u32() {
            0 => OxDirective::StateSpec(StateSpecDirective::new(directive_args)?),
            1 => OxDirective::Types(TypesDirective::new(directive_args)?),
            2 => OxDirective::Version(VersionDirective::new(directive_args)?),
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
    Types(TypesDirective<'src>),
    Version(VersionDirective),
}

impl OxDirective<'_> {
    fn replacement(&self, ctx: &ReplacementCtx<'_>) -> Result<String> {
        match self {
            Self::StateSpec(d) => d.replacement(ctx),
            Self::Types(d) => d.replacement(ctx),
            Self::Version(d) => d.replacement(ctx),
        }
    }
}

struct ReplacementCtx<'ctx> {
    chapter: &'ctx Chapter,
    preprocessor: &'ctx PreprocessorContext,
}

impl ReplacementCtx<'_> {
    pub(crate) fn relative_path(&self, file_path: impl AsRef<Path>) -> Result<PathBuf> {
        let ret = path::absolute(
            self.preprocessor
                .root
                .join("src")
                .join(
                    self.chapter
                        .source_path
                        .as_ref()
                        .expect("cannot get source path of chapter")
                        .parent()
                        .expect("internal error: source file has no parent directory"),
                )
                .join(file_path),
        )?;
        Ok(ret)
    }

    pub(crate) fn book_relative_path(&self, file_path: impl AsRef<Path>) -> Result<PathBuf> {
        let ret = path::absolute(self.preprocessor.root.join(file_path))?;
        Ok(ret)
    }

    pub(crate) fn file_reader(&self, file_path: &Path) -> Result<impl BufRead + use<>> {
        let project_relative_path = self.relative_path(file_path)?;
        let abs_src_path = project_relative_path
            .canonicalize()
            .with_context(|| anyhow!("cannot canonicalise {}", project_relative_path.display()))?;
        let file = File::open(&abs_src_path)
            .with_context(|| anyhow!("cannot open {}", abs_src_path.display()))?;
        Ok(BufReader::new(file))
    }
}

struct Replacement {
    gobble: usize,
    new_content: String,
}
