# Local AI Orchestration

## Purpose

Guide Ollama and local LLM integration.

## When To Use It

Use this skill when designing or reviewing model adapters, prompts, AI response parsing, Lyra support, summaries, or narrative generation.

## Rules

- Start with a mocked LLM client before real Ollama calls.
- Treat all LLM output as untrusted.
- Separate narrative text from proposed state changes.
- Validate structured changes before applying them.
- Keep the model adapter replaceable.
- Do not send full history to the LLM.

## Checklist

- Is there an adapter interface?
- Can the implementation run without Ollama?
- Are narrative and structured data separated?
- Are proposed state changes validated by backend services?
- Is prompt content versioned or documented?
- Is only relevant context sent to the model?

## Expected Output Format

- Adapter contract.
- Prompt/input summary.
- Response schema.
- Validation path.
- Tests/checks.
- Risks.
