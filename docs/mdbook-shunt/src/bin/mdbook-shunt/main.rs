mod args;

use std::{
    io::{self, Read},
    process::ExitCode,
};

use anyhow::Result;
use clap::Parser;
use mdbook::preprocess::{CmdPreprocessor, Preprocessor, PreprocessorContext};
use mdbook_shunt::OxPreprocessor;
use semver::{Version, VersionReq};

use crate::args::{Args, Command, SupportsCmd};

fn main() -> ExitCode {
    let args = Args::parse();
    match args.command {
        Some(Command::Supports(cmd)) => run_supports_command(cmd),
        None => preprocess(io::stdin()),
    }
}

fn run_supports_command(cmd: SupportsCmd) -> ExitCode {
    let SupportsCmd { renderer } = cmd;
    if OxPreprocessor::new().supports_renderer(&renderer) {
        ExitCode::SUCCESS
    } else {
        ExitCode::FAILURE
    }
}

fn preprocess(reader: impl Read) -> ExitCode {
    match preprocess_impl(reader) {
        Ok(_) => ExitCode::SUCCESS,
        Err(err) => {
            eprintln!("{err}");
            ExitCode::FAILURE
        }
    }
}

fn preprocess_impl(reader: impl Read) -> Result<()> {
    let preprocessor = OxPreprocessor::new();

    let (ctx, book) = CmdPreprocessor::parse_input(reader)?;
    check_version(&preprocessor, &ctx)?;

    let book = preprocessor.run(&ctx, book)?;
    serde_json::to_writer(io::stdout().lock(), &book)?;
    Ok(())
}

fn check_version(preprocessor: &OxPreprocessor, ctx: &PreprocessorContext) -> Result<()> {
    let book_version = Version::parse(&ctx.mdbook_version)?;
    let version_req = VersionReq::parse(mdbook::MDBOOK_VERSION)?;
    if !version_req.matches(&book_version) {
        eprintln!(
            "Warning: The {} plugin was build against version {} of mdbook, but is being called from version {}",
            preprocessor.name(),
            mdbook::MDBOOK_VERSION,
            ctx.mdbook_version,
        );
    }
    Ok(())
}
