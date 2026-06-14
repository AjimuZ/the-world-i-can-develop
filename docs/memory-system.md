# Memory System

The memory system must preserve continuity without sending full history to the LLM.

## Memory Layers

| Layer | Purpose |
| --- | --- |
| Structured state | Reliable current truth for player, world, inventory, quests, companions, and Rune. |
| Event log | Chronological record of meaningful actions and consequences. |
| Summaries | Compact narrative memory for long-term continuity. |
| Semantic memory | Future retrieval layer using embeddings and pgvector. |

## Rules

- PostgreSQL stores reliable state.
- The backend decides what becomes canonical memory.
- The LLM receives only relevant context.
- Full history should not be sent to the model.
- Summaries must be generated and refreshed deliberately.
- pgvector is planned for later phases, not required for the first MVP.
