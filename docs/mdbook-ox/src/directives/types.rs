use std::io::BufRead;
use std::path::{Component, Path};
use std::sync::LazyLock;
use std::{fmt::Display, path::PathBuf};

// TODO(kcza): scan for declare_singleton_type
// TODO(kcza): link to source files on github for definitions! (Track line numbers)

use anyhow::{Result, anyhow};
use regex::Regex;
use walkdir::WalkDir;

use crate::ReplacementCtx;

pub(crate) struct TypesDirective<'src> {
    yue_root: &'src Path,
}

impl<'src> TypesDirective<'src> {
    pub(crate) fn new(args: &'src str) -> Result<Self> {
        if args.is_empty() {
            return Err(anyhow!("cannot parse '{args}' as types args"));
        }
        let yue_root = Path::new(args);
        Ok(Self { yue_root })
    }

    pub(crate) const fn pattern() -> &'static str {
        "{{#types "
    }

    pub(crate) fn replacement(&self, ctx: &ReplacementCtx<'_>) -> Result<String> {
        use std::fmt::Write;

        let mut declarations: Vec<_> = self
            .yue_sources(ctx)?
            .flat_map(|reader| TypeDeclarations::new(reader))
            .flat_map(|declaration_result| {
                if let Err(err) = &declaration_result {
                    eprintln!("{err}");
                }
                declaration_result.ok()
            })
            .collect();
        declarations.sort();

        let mut ret = String::new();
        declarations
            .into_iter()
            .try_for_each(|declaration| write!(ret, "{declaration}"))?;
        Ok(ret)
    }

    fn yue_sources(
        &self,
        ctx: &ReplacementCtx<'_>,
    ) -> Result<impl Iterator<Item = YueSource<impl BufRead>>> {
        let walker = WalkDir::new(ctx.project_relative_path(self.yue_root)?)
            .into_iter()
            .filter_entry(|entry| {
                let path = entry.path();
                let last_component = match path.file_name().and_then(|name| name.to_str()) {
                    Some(last) => last,
                    None => return true,
                };
                if last_component.starts_with(".") {
                    return false;
                }
                if entry.depth() == 1 {
                    if last_component != "ox" && last_component != "ox.yue" {
                        return false;
                    }
                }
                true
            })
            .filter_map(|entry| entry.ok())
            .filter(|entry| {
                entry
                    .file_name()
                    .to_str()
                    .is_some_and(|file_name| file_name.ends_with(".yue"))
            })
            .map(|entry| {
                let path = entry.path().to_owned();
                let reader = ctx.file_reader(entry.path())?;
                Ok(YueSource { path, reader })
            })
            .filter_map(|source: Result<_>| {
                if let Err(err) = &source {
                    eprintln!("{err}");
                }
                source.ok()
            });
        Ok(walker)
    }
}

struct YueSource<R> {
    path: PathBuf,
    reader: R,
}

#[must_use]
struct TypeDeclarations<R> {
    line_buf: String,
    yue_source: YueSource<R>,
    current_line: u32,
}

impl<R: BufRead> TypeDeclarations<R> {
    fn new(yue_source: YueSource<R>) -> Self {
        let line_buf = String::new();
        let current_line = 0;
        Self {
            line_buf,
            yue_source,
            current_line,
        }
    }

    fn read_line(&mut self) -> Result<Option<&str>> {
        self.line_buf.clear();
        match self.yue_source.reader.read_line(&mut self.line_buf) {
            Ok(0) => Ok(None),
            Ok(_) => {
                self.current_line += 1;
                Ok(Some(self.line_buf.trim_end()))
            }
            Err(err) => Err(err.into()),
        }
    }

    fn source_at_current_line(&self) -> SourceLocation {
        SourceLocation {
            path: self.yue_source.path.clone(),
            line: self.current_line,
        }
    }
}

impl<R: BufRead> Iterator for TypeDeclarations<R> {
    type Item = Result<TypeAlias>;

    fn next(&mut self) -> Option<Self::Item> {
        static DECLARE_TYPE_LINE: LazyLock<Regex> = LazyLock::new(|| {
            Regex::new(r#"^declare_type '([^']*)', +('([^']*)'|(\[\[)(\{)?)"#).unwrap()
        });

        enum State {
            Searching,
            ParsingMultiLine {
                name: String,
                alias_lines: Vec<String>,
                forced_indent: Option<&'static str>,
                source: SourceLocation,
            },
        }
        let mut state = State::Searching;
        loop {
            let line = match self.read_line().transpose()? {
                Ok(line) => line,
                Err(err) => return Some(Err(err)),
            };
            state = match state {
                State::Searching => {
                    let captures = match DECLARE_TYPE_LINE.captures(line) {
                        Some(captures) => captures,
                        None => continue,
                    };
                    let name = captures[1].to_owned();

                    if let Some(single_line_alias) = captures.get(3) {
                        let alias = single_line_alias.as_str().to_owned();
                        let source = self.source_at_current_line();
                        return Some(Ok(TypeAlias {
                            name,
                            alias: Alias::SingleLine(alias),
                            source,
                        }));
                    }
                    assert!(captures.get(4).is_some()); // Must be a multi-line
                    // declaration.

                    let mut alias_lines = Vec::with_capacity(10);
                    let mut forced_indent = None;
                    if captures.get(5).is_some() {
                        alias_lines.push("{".to_owned());
                        forced_indent = Some("  ");
                    }
                    let source = self.source_at_current_line();
                    State::ParsingMultiLine {
                        name,
                        alias_lines,
                        forced_indent,
                        source,
                    }
                }
                State::ParsingMultiLine {
                    name,
                    mut alias_lines,
                    forced_indent,
                    source,
                } => {
                    let trimmed_line = line.trim();
                    if trimmed_line == "}]]" {
                        alias_lines.push("}".to_owned());
                        return Some(Ok(TypeAlias::new(
                            name,
                            Alias::MultiLine(alias_lines),
                            source,
                        )));
                    } else if trimmed_line == "]]" {
                        return Some(Ok(TypeAlias::new(
                            name,
                            Alias::MultiLine(alias_lines),
                            source,
                        )));
                    }

                    let formatted_line = if let Some(forced_indent) = forced_indent {
                        format!("{forced_indent}{line}")
                    } else {
                        line.to_owned()
                    };
                    alias_lines.push(formatted_line);

                    State::ParsingMultiLine {
                        name,
                        alias_lines,
                        forced_indent,
                        source,
                    }
                }
            };
        }
    }
}

#[derive(Debug, Eq, Ord, PartialEq, PartialOrd)]
struct TypeAlias {
    name: String,
    alias: Alias,
    source: SourceLocation,
}

impl TypeAlias {
    fn new(name: String, alias: Alias, source: SourceLocation) -> Self {
        let alias = alias.normalise();
        Self {
            name,
            alias,
            source,
        }
    }
}

impl Display for TypeAlias {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let Self {
            name,
            alias,
            source,
        } = self;
        writeln!(f)?;
        writeln!(f, "## `{name}`")?;
        writeln!(f)?;
        writeln!(f, "[Definition]({})", source.github_link())?;
        writeln!(f)?;
        writeln!(f, "{alias}")?;
        Ok(())
    }
}

#[derive(Debug, Eq, Ord, PartialEq, PartialOrd)]
enum Alias {
    SingleLine(String),
    MultiLine(Vec<String>),
}

impl Alias {
    fn normalise(self) -> Self {
        match self {
            Self::SingleLine(line) => Self::SingleLine(Self::normalise_line(line)),
            Self::MultiLine(lines) => Self::MultiLine(Self::normalise_lines(lines)),
        }
    }

    fn normalise_line(line: String) -> String {
        let trimmed = line.trim();
        if line.len() != trimmed.len() {
            trimmed.to_owned()
        } else {
            line
        }
    }

    fn normalise_lines(lines: Vec<String>) -> Vec<String> {
        let num_lines = lines.len();

        let mut indent_len = lines[1..(num_lines - 1).max(1)]
            .iter()
            .map(|line| line.len() - line.trim_start().len())
            .min()
            .unwrap_or_default();
        if indent_len > 2 {
            indent_len -= 2;
        }

        lines
            .into_iter()
            .enumerate()
            .map(|(i, line)| {
                let line = if i == 0 {
                    line.trim_start()
                } else if i == num_lines - 1 {
                    let trimmed = line.trim_start();
                    if trimmed.starts_with('}') {
                        trimmed
                    } else {
                        &line[indent_len..]
                    }
                } else {
                    &line[indent_len..]
                };
                line.to_owned()
            })
            .collect()
    }
}

impl Display for Alias {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "```moonscript")?;
        match self {
            Self::SingleLine(line) => {
                writeln!(f, "{line}")?;
            }
            Self::MultiLine(lines) => lines.iter().try_for_each(|line| writeln!(f, "{line}"))?,
        }
        writeln!(f, "```")?;
        Ok(())
    }
}

#[derive(Debug, Eq, Ord, PartialEq, PartialOrd)]
struct SourceLocation {
    path: PathBuf,
    line: u32,
}

impl SourceLocation {
    fn github_link(&self) -> String {
        let Self { path, line } = self;
        let definition_path = path
            .components()
            .skip_while(|component| !matches!(component, Component::ParentDir))
            .skip_while(|component| matches!(component, Component::ParentDir))
            .collect::<PathBuf>();
        const REPO: &str = "https://github.com/TheSignPainter98/ox/blob/master";
        format!("{REPO}/{}#L{line}", definition_path.display())
    }
}
