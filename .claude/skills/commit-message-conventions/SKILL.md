# Commit Message Conventions

## Purpose

Define how commit messages must be written.

## When To Use It

Use this skill before suggesting, writing, or reviewing commits.

## Rules

- Commit messages must be in English.
- Use imperative mood.
- Keep the subject short, ideally under 72 characters.
- Avoid vague messages like `updates`, `fix stuff`, or `changes`.
- One commit should represent one micro-phase or one coherent change.
- If the change needs more detail, use a body with what changed, why it changed, and tests/checks performed.
- Do not include private notes, jokes, Italian text, or unprofessional wording.
- Before suggesting a commit, summarize changed files and checks performed.

## Checklist

- Is the subject imperative?
- Is the subject specific?
- Is the scope coherent?
- Are changed files and checks known?
- Is a body needed?

## Expected Output Format

```text
Changed files:
Checks performed:
Suggested commit message:
<imperative subject>

Optional body:
- What changed:
- Why it changed:
- Tests/checks:
```

## Preferred Subjects

- `Init repo structure and base docs`
- `Add initial Claude Code config`
- `Set up Angular app shell`
- `Initialize Spring Boot backend with health endpoint`
- `Add Docker Compose with PostgreSQL and pgvector`
- `Implement basic Rune validation`
- `Add Lyra assistant guidance placeholder`
