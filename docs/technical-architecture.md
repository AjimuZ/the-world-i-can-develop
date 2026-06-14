# Technical Architecture

The project uses a local-first architecture with a web frontend, deterministic backend, relational database, and replaceable local AI adapter.

## Planned Components

| Component | Responsibility |
| --- | --- |
| Angular frontend | Structured RPG UI and player interaction. |
| Spring Boot backend | Authoritative game rules, validation, state transitions, and API layer. |
| PostgreSQL | Reliable storage for campaigns, player state, quests, inventory, event log, and summaries. |
| Ollama adapter | Replaceable local LLM integration for narration and Lyra support. |
| Docker Compose | Local development environment for database and services. |

## Architecture Principles

- The backend owns deterministic game state.
- The AI can produce narrative and proposed structured changes, but cannot directly mutate state.
- All proposed state changes must be parsed, validated, and applied by backend services.
- The LLM adapter must start mocked and remain replaceable.
- Database design should separate state, event log, summaries, and future semantic memory.

## Future Expansion

`pgvector` may be introduced when semantic retrieval becomes necessary. A separate AI service may be considered only if orchestration complexity justifies it after the MVP.
