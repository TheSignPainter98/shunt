use std::fmt::Display;
use std::io::BufRead;
use std::path::Path;
use std::sync::LazyLock;

use anyhow::{Result, anyhow};
use regex::Regex;

use crate::ReplacementCtx;

pub(crate) struct StateSpecDirective<'src> {
    src_path: &'src Path,
    state_machine_name: &'src str,
}

impl<'src> StateSpecDirective<'src> {
    pub(crate) const fn pattern() -> &'static str {
        "{{#state-machine-spec "
    }

    pub(crate) fn new(args: &'src str) -> Result<Self> {
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

    pub(crate) fn replacement(&self, ctx: &ReplacementCtx<'_>) -> Result<String> {
        let source_reader = ctx.file_reader(self.src_path)?;
        let state_machine = self.parse_state_machine_declaration(source_reader)?;
        Ok(format!("{state_machine}"))
    }

    fn parse_state_machine_declaration(
        &self,
        buf_reader: impl BufRead,
    ) -> Result<StateMachineDeclaration> {
        static SET_INITIAL_STATE_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_initial_state '([^']*)'").unwrap());
        static SET_REPORTER_LINE: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r" *\\set_reporter (.*)").unwrap());
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
            .filter(|line| !line.trim_start().starts_with("--"))
            .take_while(|line| !line.trim().is_empty())
            .take_while(|line| !line.trim_end().ends_with(r"\build!"));
        #[derive(Default)]
        struct ParserState {
            machine_found: bool,
            state_name: Option<String>,
            parsing_data_type: bool,
            data_type_lines: Vec<String>,
            data_type_prefix_len: Option<usize>,
            transitions: Vec<String>,
            is_start_state: bool,
            is_end_state: bool,
        }
        let mut initial_state_name = None;
        let mut reporter = None;
        let mut parser_state = ParserState::default();
        let mut states = Vec::new();
        for line in declaration_lines {
            parser_state.machine_found = true;
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
            } else if let Some(captures) = SET_REPORTER_LINE.captures(&line) {
                reporter = Some(captures[1].to_owned())
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
                    "cannot parse state machine {} declaration: unexpected line: {}",
                    self.state_machine_name,
                    line.trim(),
                ));
            }
        }
        let ParserState {
            machine_found,
            state_name,
            data_type_lines,
            transitions,
            is_start_state,
            is_end_state,
            parsing_data_type: _,
            data_type_prefix_len: _,
        } = parser_state;
        if !machine_found {
            return Err(anyhow!(
                "cannot parse state machine {} declaration: machine not found",
                self.state_machine_name,
            ));
        }
        if let Some(state_name) = state_name {
            states.push(State {
                state_name,
                data_type_lines,
                transitions,
                is_start_state,
                is_end_state,
            });
        }
        if reporter.is_none() {
            eprintln!(
                "Warning: state machine {} has no reporter",
                self.state_machine_name
            );
        }

        states.sort();
        Ok(StateMachineDeclaration {
            name: self.state_machine_name.to_owned(),
            reporter,
            states,
        })
    }
}

struct StateMachineDeclaration {
    name: String,
    reporter: Option<String>,
    states: Vec<State>,
}

impl Display for StateMachineDeclaration {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let Self {
            name,
            reporter,
            states,
        } = self;

        if reporter.is_none() {
            writeln!(f, "! **WARNING**: _this state machine has no reporter!_")?;
            writeln!(f)?;
        }

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
