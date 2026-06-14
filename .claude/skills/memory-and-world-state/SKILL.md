# Memory And World State

## Purpose

Guide persistent memory and world-state design.

## When To Use It

Use this skill when designing persistence, event logs, summaries, semantic retrieval, world state, or AI context windows.

## Rules

- Separate structured state, event log, summaries, and future semantic memory.
- PostgreSQL stores reliable state.
- pgvector is future/planned.
- Do not send full history to the LLM.
- Retrieve only relevant context.
- The backend decides what becomes canonical memory.

## Checklist

- Is this current state, event history, summary, or semantic memory?
- Is the source of truth stored in PostgreSQL?
- Is the LLM receiving only relevant context?
- Are summaries refreshed intentionally?
- Is pgvector deferred unless there is a real need?

## Expected Output Format

- Memory layer affected.
- Data model or retrieval summary.
- Canonical state rule.
- Context sent to AI.
- Tests/checks.
- Documentation update.
