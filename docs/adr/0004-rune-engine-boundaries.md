# ADR 0004: Rune Engine Boundaries

## Status

Accepted.

## Context

Rune is the distinctive pseudocode magic system. It must feel powerful without breaking progression or deterministic rules.

## Decision

The Rune engine will validate syntax, cost, level, complexity, target, and allowed effects. The MVP starts with a minimal command set. Advanced reality modification is post-MVP.

## Consequences

- Rune can grow gradually.
- The backend remains authoritative for Rune effects.
- Lyra can explain errors and suggest improvements without approving effects directly.
