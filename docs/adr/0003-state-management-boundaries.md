# ADR 0003: State Management Boundaries

## Status

Accepted.

## Context

AI-generated narrative may be inconsistent or unsafe if it can directly change inventory, quests, stats, relationships, or world state.

## Decision

The backend owns deterministic state. AI responses may include narrative text and proposed structured changes, but backend services must validate and apply any accepted changes.

## Consequences

- Game rules remain testable.
- State changes can be audited and persisted reliably.
- The narrative model can be creative without controlling authoritative data.
