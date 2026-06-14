# Development Roadmap

Development should proceed in small micro-phases. Each phase should be testable, reviewable, documented, and committable.

| Phase | Goal | Suggested Commit Message |
| --- | --- | --- |
| 1 | Repository structure, docs, and Claude Code setup. | `Init repo structure and Claude Code setup` |
| 2 | Angular app shell with structured RPG layout placeholders. | `Set up Angular app shell` |
| 3 | Spring Boot backend shell with health endpoint. | `Initialize Spring Boot backend with health endpoint` |
| 4 | Docker Compose with PostgreSQL and future pgvector path. | `Add Docker Compose with PostgreSQL and pgvector` |
| 5 | Foundational game state entities. | `Create foundational game state entities` |
| 6 | New game creation and protagonist name flow. | `Implement new game creation` |
| 7 | Static narrative intro endpoint. | `Add static intro narrative endpoint` |
| 8 | Mocked LLM client and adapter contract. | `Stub out LLM client service` |
| 9 | Player action to mocked narrative loop. | `Hook up LLM client to produce narrative` |
| 10 | State mutation validation boundary. | `Add state validation for planned changes` |
| 11 | Basic Rune parser and validator. | `Implement basic Rune parsing and validation` |
| 12 | Lyra response for Rune guidance. | `Add Lyra assistant response for Rune guidance` |

Later phases can add companion progression, semantic memory, combat, asset management, and image integration after the core loop is stable.
