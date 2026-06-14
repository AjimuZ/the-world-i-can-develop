# Micro-Phase Planner

## Purpose

Split every development request into very small, testable, reviewable, committable phases.

## When To Use It

Use this skill before implementing new features, architecture changes, documentation sets, or workflow updates.

## Rules

- One micro-phase should produce one coherent change.
- Keep scope small enough to review quickly.
- Include tests or checks even for documentation-only phases.
- Update docs when architecture, gameplay rules, Rune, Lyra, AI orchestration, memory, or public presentation changes.
- Suggest an English commit message at the end of each phase.

## Checklist

- Define the phase goal.
- Identify files expected to change.
- List implementation tasks.
- List tests or checks.
- Identify documentation updates.
- Name risks and assumptions.
- Suggest a commit message in imperative mood.

## Expected Output Format

```text
Phase goal:
Scope:
Files expected to change:
Tasks:
Tests/checks:
Documentation update:
Risks:
Suggested commit message:
```
