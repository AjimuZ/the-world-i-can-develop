# MVP Scope

The MVP is a small playable foundation, not the full game.

## In Scope

- Angular + TypeScript application shell.
- Spring Boot + Java 17/21 backend shell.
- PostgreSQL-backed persistent game state.
- Docker Compose local environment.
- New game flow with protagonist name.
- Narrative panel, action input, character sheet, inventory placeholder, quest log placeholder, Rune panel, and Lyra panel.
- Mocked LLM client before real Ollama calls.
- Basic separation between narrative output and proposed state changes.
- Minimal Rune validation with a small command set.
- Lyra guidance for basic Rune errors and player support.

## Out of Scope

- Full combat system.
- Advanced companion progression.
- Integrated image generation during gameplay.
- Full semantic memory with pgvector.
- Multi-campaign management.
- Lore editor, quest editor, or asset manager.
- Advanced reality modification through Rune.
- Cloud-hosted LLM dependency.

## MVP Success Criteria

- The player can start a game, submit an action, receive narrative feedback, and see deterministic state remain controlled by the backend.
- Rune and Lyra are present as bounded first versions.
- The repository remains documented, testable, and understandable.
