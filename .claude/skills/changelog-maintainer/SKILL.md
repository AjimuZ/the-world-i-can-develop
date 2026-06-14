# Changelog Maintainer

## Purpose

Keep `CHANGELOG.md` accurate during every micro-phase.

## When To Use It

Use this skill before finishing a task, suggesting a commit, preparing release notes, changing code, docs, config, hooks, or skills, or whenever the changelog reminder hook prints.

## Rules

- Write changelog entries in English.
- Update `## Unreleased` before suggesting a commit when the change is notable.
- Match the current file style: concise top-level bullets under `## Unreleased`.
- Include user-visible behavior, public documentation, setup/config changes, hooks, skills, architecture, APIs, data model changes, and notable fixes.
- Omit purely mechanical churn: formatting-only edits, generated build output, or dependency lock changes with no practical impact.
- Avoid duplicate bullets; merge related changes into one bullet when they belong to the same micro-phase.
- Keep bullets factual, present-tense, and release-note friendly.
- Do not move `Unreleased` entries into version headings unless explicitly cutting a release.
- If no changelog update is needed, state the reason before the final commit suggestion.

## Checklist

- Did any changed file alter behavior, setup, docs, workflows, hooks, skills, architecture, API, data shape, or public presentation?
- Does `CHANGELOG.md` already contain a matching `## Unreleased` bullet?
- Is the new bullet short, specific, and non-duplicative?
- Does the bullet describe the user-visible or project-visible result, not the implementation minutiae?
- Is the changelog update included in the same micro-phase as the change?

## Expected Output Format

```text
CHANGELOG.md:
- Suggested bullet: <concise Unreleased entry>
- Reason: <why this change is notable>
```
