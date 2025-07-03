use std::fs;

use anyhow::{anyhow, Context, Result};

use crate::ReplacementCtx;

pub(crate) struct VersionDirective;

impl VersionDirective {
    pub(crate) fn new(args: &str) -> Result<Self> {
        if !args.is_empty() {
            return Err(anyhow!("cannot parse '{args}' as version args"));
        }
        Ok(Self)
    }

    pub(crate) const fn pattern() -> &'static str {
        "{{#version"
    }

    pub(crate) fn replacement(&self, ctx: &ReplacementCtx) -> Result<String> {
        let version_file_path = ctx.book_relative_path("../.version.txt")?;
        let version = fs::read_to_string(&version_file_path)
            .with_context(|| anyhow!("cannot read {}", version_file_path.display()))?
            .trim()
            .to_owned();
        Ok(version)
    }
}
