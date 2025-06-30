use clap::builder::Styles;
use clap::builder::styling::{AnsiColor, Effects};
use clap::{Parser, Subcommand};

#[derive(Debug, Parser)]
#[command( styles = Self::styles())]
pub struct Args {
    #[command(subcommand)]
    pub command: Option<Command>,
}

impl Args {
    fn styles() -> Styles {
        // Match cargo output style
        Styles::styled()
            .header(AnsiColor::Green.on_default().effects(Effects::BOLD))
            .usage(AnsiColor::Green.on_default().effects(Effects::BOLD))
            .literal(AnsiColor::Cyan.on_default().effects(Effects::BOLD))
            .placeholder(AnsiColor::Cyan.on_default())
            .error(AnsiColor::Red.on_default().effects(Effects::BOLD))
            .valid(AnsiColor::Cyan.on_default().effects(Effects::BOLD))
            .invalid(AnsiColor::Yellow.on_default().effects(Effects::BOLD))
    }
}

#[derive(Debug, Subcommand)]
pub enum Command {
    Supports(SupportsCmd),
}

#[derive(Debug, Parser)]
pub struct SupportsCmd {
    pub renderer: String,
}
