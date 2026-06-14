# Claude Code Setup

This folder contains the project-specific Claude Code development setup.

## Structure

- `../CLAUDE.md` contains short global rules that should always stay practical.
- `skills/` contains reusable project knowledge and workflows.
- `agents/` contains specialist role definitions for focused reviews and planning.
- `hooks/` contains deterministic safeguards and reminders.
- `settings.json` registers hooks for Claude Code.

## Notes

Claude Code hook schemas may vary by installed version. If hooks do not run, verify the local Claude Code documentation and adjust `settings.json` while keeping the scripts conservative.

The hooks in this repository are designed to block obviously dangerous operations or print reminders. They should not aggressively rewrite source code.
