# ADR 0001: Architecture Style

## Status

Accepted.

## Context

The project needs a structured RPG interface, deterministic game rules, persistent state, and local AI narration.

## Decision

Use a web application architecture with Angular for the frontend, Spring Boot for the backend, PostgreSQL for persistence, and a replaceable local AI adapter.

## Consequences

- The frontend can focus on structured RPG interaction.
- The backend remains authoritative for rules and state.
- Local AI can be integrated without becoming the source of truth.
- The architecture remains familiar and portfolio-friendly.
