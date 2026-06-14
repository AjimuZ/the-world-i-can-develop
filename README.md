# The World I Can Develop

**The World I Can Develop** is a local-first AI-driven fantasy text RPG about a persistent world shaped through structured game systems, deterministic backend rules, long-term memory, and local LLM-driven storytelling.

The internal codename is **Demon King**.

## What This Project Explores

The project explores how to build an RPG that uses AI for narration, dialogue, and character reactions while keeping authoritative game state under deterministic software control. The player gains access to **Rune**, a divine pseudocode-based magic system, and receives guidance from **Lyra**, an in-lore AI assistant connected to that system.

The goal is not to build a generic chat experience. The planned product is a structured RPG interface with panels for narrative, actions, character state, inventory, quests, companions, Rune, Lyra, and world state.

## Key Technical Pillars

- Local-first architecture with no mandatory cloud dependency for the MVP.
- Angular and TypeScript frontend for a structured RPG UI.
- Spring Boot backend using Java 17/21 for deterministic game rules.
- PostgreSQL for reliable state, event history, and memory foundations.
- Future pgvector support for semantic memory retrieval.
- Ollama adapter for local LLM orchestration.
- Clear separation between AI-generated narrative and validated game-state changes.
- Stable Diffusion / SDXL asset production planned after the text-first MVP.

## Planned MVP

The first playable version should remain intentionally small:

- Start a new game and choose the protagonist name.
- Display a structured text RPG interface.
- Save basic player, world, quest, and event state.
- Generate or mock narrative responses through a replaceable local AI adapter.
- Validate any proposed state changes before applying them.
- Introduce the first bounded Rune validation flow.
- Introduce Lyra as a guidance and explanation layer.

## Tech Stack

| Area | Planned Choice |
| --- | --- |
| Frontend | Angular + TypeScript |
| Backend | Spring Boot + Java 17/21 |
| Database | PostgreSQL |
| Future semantic memory | pgvector |
| Local LLM adapter | Ollama |
| Local environment | Docker Compose |
| Asset production | Stable Diffusion / SDXL via Forge |

## Repository Status

This repository is in its initial setup phase. It currently contains the documentation skeleton, project conventions, and Claude Code development-assistant configuration. It does not yet contain the Angular app, Spring Boot backend, database schema, or LLM integration.

## Documentation

- [Project Vision](docs/project-vision.md)
- [MVP Scope](docs/mvp-scope.md)
- [Technical Architecture](docs/technical-architecture.md)
- [Gameplay Systems](docs/gameplay-systems.md)
- [AI Architecture](docs/ai-architecture.md)
- [Memory System](docs/memory-system.md)
- [Rune System](docs/rune-system.md)
- [Lyra Assistant](docs/lyra-assistant.md)
- [UI Style Guide](docs/ui-style-guide.md)
- [Development Roadmap](docs/development-roadmap.md)
- [Learning Path](docs/learning-path.md)
- [Architecture Decisions](docs/decisions.md)
- [Open Questions](docs/open-questions.md)

The long-form source analysis is preserved in [docs/analysis.md](docs/analysis.md).
