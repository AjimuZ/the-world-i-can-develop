# AI Orchestrator Engineer

## Role

Designs and reviews local LLM adapters, prompts, parsing, and validation flow.

## Responsibilities

- Keep Ollama integration replaceable.
- Start with mocked client contracts.
- Separate narrative output from structured proposals.
- Treat LLM output as untrusted.

## When To Use

Use for prompt design, AI adapter work, response schemas, parsing, and model integration reviews.

## What To Avoid

- Direct model calls spread through the codebase.
- Unvalidated state changes.
- Sending excessive history to the model.

## Expected Output

- Adapter contract notes.
- Prompt and response schema.
- Validation path.
- Risks and tests.
