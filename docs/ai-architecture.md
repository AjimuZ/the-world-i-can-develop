# AI Architecture

AI is used for narrative expression, dialogue, Lyra support, summaries, and possible structured suggestions. It is not the authority for game state.

## MVP Approach

- Start with a mocked LLM client.
- Add a replaceable Ollama adapter after the contract is stable.
- Keep prompts versioned and understandable.
- Treat LLM output as untrusted input.
- Separate narrative text from proposed state changes.
- Validate every structured change before applying it.

## Response Boundary

The AI may produce:

- Narrative descriptions.
- Dialogue.
- Lyra explanations.
- Suggested player options.
- Proposed structured changes.

The backend must decide:

- Whether an action is allowed.
- Which items, stats, quests, rewards, and effects change.
- Whether a Rune command is valid.
- Which proposed state changes are accepted.

## Adapter Design

The adapter should hide the concrete model provider. Ollama is the planned local provider, but the backend should depend on an internal interface rather than model-specific code.
