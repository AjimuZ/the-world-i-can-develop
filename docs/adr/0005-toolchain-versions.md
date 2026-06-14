# ADR 0005: Toolchain Versions

## Status

Accepted.

## Context

The roadmap and `docs/decisions.md` referenced flexible toolchain choices (for example
"Java 17/21") and did not pin a build tool, an Angular style, or a license. Before the
frontend and backend are scaffolded, the project needs concrete, locked choices so that
generated output and contributor setup stay consistent and reproducible.

## Decision

Pin the following toolchain choices for the MVP:

| Area | Decision |
| --- | --- |
| Java version | 21 LTS |
| Java build tool | Maven |
| Angular style | Standalone components + signals |
| License | MIT |

## Consequences

- Backend scaffolding targets Java 21 LTS with Maven, not a version range.
- Frontend scaffolding uses standalone components and signals, without NgModules.
- The repository license is MIT, matching the existing `LICENSE` file.
- Any future version bump requires a superseding ADR.
