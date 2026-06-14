# Backend Game Engine

## Purpose

Guide Spring Boot backend design for deterministic game rules and state transitions.

## When To Use It

Use this skill when creating or reviewing backend services, controllers, domain models, validation rules, or game-state persistence.

## Rules

- The backend owns deterministic game state.
- AI cannot directly mutate state.
- Services must validate player actions.
- The game engine controls inventory, stats, quest progress, rewards, combat, and Rune effects.
- Keep controllers thin and place rules in services or domain logic.
- Persist only validated canonical state.

## Checklist

- Is the state transition explicit?
- Is the player action validated?
- Are AI proposals parsed and checked before use?
- Are inventory, stats, quests, rewards, combat, and Rune effects controlled by backend rules?
- Are tests planned for important rules?

## Expected Output Format

- Domain/service boundary summary.
- Validation rules.
- State changes.
- Tests/checks.
- Documentation update.
