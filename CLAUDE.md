# Claude Code Guide

## Project Identity

- Public title: **The World I Can Develop**.
- Internal codename: **Demon King**.
- Genre: local-first AI-driven fantasy text RPG.
- Core mechanic: **Rune**, a divine pseudocode-based magic system.
- Divine assistant: **Lyra**.

## Global Rules

- Use English for code, comments, docs, prompts, commit messages, file names, APIs, issues, ADRs, and public repository content.
- Keep the project local-first. Avoid mandatory cloud dependencies for the MVP.
- Work in small, testable, reviewable micro-phases.
- Do not run destructive commands such as hard resets, forced cleans, or broad deletes.
- Do not run `git commit` or `git push` autonomously. Prepare clear commit message suggestions and wait for explicit manual approval.
- Do not push directly to `main` or `master`.
- Always separate AI-generated narrative from deterministic game state.
- Update docs when changing architecture, gameplay rules, Rune, Lyra, AI orchestration, memory, or public presentation.
- End each phase with a clear English commit message suggestion.

Detailed workflows live in `.claude/skills/`.
