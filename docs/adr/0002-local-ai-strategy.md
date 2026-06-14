# ADR 0002: Local AI Strategy

## Status

Accepted.

## Context

The project should avoid mandatory cloud dependencies and support local narrative generation.

## Decision

Use Ollama as the planned local LLM adapter, but start with a mocked client. The backend will depend on an internal adapter contract, not on direct model calls spread through the codebase.

## Consequences

- Early phases can be tested without a running model.
- The model provider remains replaceable.
- LLM output can be treated as untrusted input and validated before state changes.
