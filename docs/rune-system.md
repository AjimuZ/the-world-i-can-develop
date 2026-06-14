# Rune System

**Rune** is the divine pseudocode-based magic system at the center of the project.

Rune lets the protagonist express magical intent through bounded commands that resemble code. The fantasy is powerful, but the implementation must remain controlled by deterministic validation.

## MVP Boundaries

The first Rune implementation should support a minimal command set. It should validate syntax, resource cost, player level, complexity, target, and allowed effect.

Example first commands may include:

- Create a small elemental effect.
- Inspect an object or enemy.
- Enhance a simple action.
- Save or recall a basic script later in the roadmap.

## Validation Rules

- Rune effects are validated by the backend.
- AI may explain or suggest Rune, but cannot approve effects.
- Advanced world modification is post-MVP.
- Invalid commands should produce clear errors that Lyra can explain.
- Rune should feel expressive without bypassing challenge, progression, or narrative consequence.
