# Development Roadmap

This is the single canonical roadmap for **The World I Can Develop**.
It supersedes all previous versions (the 0–12 table in `analysis.md §13.1`,
the 1–12 table in the old `development-roadmap.md`, and the macro phases
in `analysis.md §13.2`).

**Toolchain decisions (locked):**

| Area | Decision |
| --- | --- |
| Java version | 21 LTS |
| Java build tool | Maven |
| Angular style | Standalone components + signals |
| License | MIT |

---

## Rules for every phase

- One coherent change per phase. Do not mix backend, frontend, and docs work
  unless the phase explicitly calls for it.
- Work on the single `main` branch; do not create per-phase branches.
- Do not commit or push without explicit manual approval.
- Tests or checks must pass before closing a phase.
- Update the relevant documentation when architecture, Rune, Lyra, AI
  orchestration, memory, or public presentation changes.
- Commit message: imperative mood, English, under 72 characters.

---

## Phase overview

| Phase | Title | Status |
| --- | --- | --- |
| P0 | Repository and Claude Code setup | ✅ Done |
| P1 | Repository hygiene baseline | ✅ Done |
| P2 | Reconcile roadmap and pin toolchain | ✅ Done |
| P3 | Angular app scaffold | Frontend |
| P4 | RPG layout placeholder panels | Frontend |
| P5 | Spring Boot scaffold and health endpoint | Backend |
| P6 | Connect frontend to backend (integration smoke) | Integration |
| P7 | Docker Compose dev environment | Infrastructure |
| P8 | Foundational game entities and migrations | Backend / DB |
| P9 | New game creation end-to-end | Feature |
| P10 | Static narrative intro | Feature |
| P11 | Mocked LLM adapter contract | Backend / AI |
| P12 | Action to narrative loop (mocked) | Feature |
| P13 | State mutation validation boundary | Backend / AI ⭐ |
| P14 | Rune parser and validator MVP | Feature |
| P15 | Lyra guidance MVP | Feature |
| P16 | Persistent save and event log foundation | Backend / DB |
| P17 | Real Ollama adapter | Backend / AI |
| P18 | MVP polish and portfolio pass | Polish |

---

## Detailed phases

---

### P0 — Repository and Claude Code Setup

**Status:** ✅ Done — commits `b592dae` and `1f96edf`.

**What was delivered:**
- `docs/` skeleton with vision, MVP scope, architecture, gameplay, AI, memory,
  Rune, Lyra, roadmap, decisions, open questions, image pipeline, and learning
  path documents.
- Four accepted ADRs in `docs/adr/`.
- Complete Claude Code harness: `CLAUDE.md`, `settings.json`, 11 skills,
  11 agents, 7 hooks.
- Placeholder folders: `frontend/`, `backend/`, `ai-service/`, `prompts/`,
  `assets/`.

---

### P1 — Repository Hygiene Baseline

**Goal:** Add the missing root-level hygiene files before any scaffold
generates build artifacts. These files must exist before `ng new` or Spring
Initializr runs, so that generated output is never accidentally committed.

**Files to create or modify:**
- `.gitignore` — Node, Angular, Java/Maven, IDE, env, OS rules.
- `LICENSE` — MIT.
- `.editorconfig` — Java 4-space indent; TypeScript, HTML, SCSS, YAML 2-space;
  LF line endings everywhere.
- `.gitattributes` — enforce LF storage and checkout globally; binary assets
  excluded.
- `.env.example` — placeholder variables for DB, datasource, and Ollama.
- `CHANGELOG.md` — updated Unreleased entry.
- `.claude/hooks/auto-format-after-edit.sh` — fix `printf '- text'` bug
  (causes "invalid option" on Git Bash; use `printf '%s\n' '- text'`).

**Expected output:** build artifacts and secrets ignored repo-wide; a
recognized license file; shared formatting and line-ending rules across all
editors and operating systems.

**Validation:**
- Create throwaway `node_modules/`, `target/`, `dist/`, `.angular/`, `.env`.
- Run `git status --porcelain` → none of them appear.
- Run `git check-ignore node_modules backend/target .env` → all echoed back.
- Run `git check-ignore .env.example` → must NOT be echoed (file stays tracked).
- Edit any file → auto-format hook runs without the `printf` error.

**Status:** ✅ Done — commit `59809a1` on `main`. Also includes `.gitattributes`
(LF normalization) and the `printf` bug-fix in `auto-format-after-edit.sh`.

**Suggested commit message:** `Add gitignore, license, and editor config`

**Learning:** repository hygiene, ignore-rule ordering, OSS licensing,
line-ending normalization, POSIX shell portability.

---

### P2 — Reconcile Roadmap and Pin Toolchain

**Goal:** Replace the three conflicting roadmaps with this single document;
record the four toolchain decisions as a new ADR; update `docs/decisions.md`.

**Files to create or modify:**
- `docs/development-roadmap.md` — this file (already the canonical version).
- `docs/decisions.md` — add pinned versions row.
- `docs/adr/0005-toolchain-versions.md` — new ADR, status Accepted.
- `CHANGELOG.md` — updated Unreleased entry.

**Expected output:** a reader of the repository finds exactly one roadmap;
the decisions table includes concrete version numbers; ADR 0005 is accepted.

**Validation:**
- Search for "Phase 3" or "phase 7" in docs — only this file should match.
- `docs/decisions.md` contains Java 21, Maven, Angular standalone, MIT.
- ADR 0005 exists and its status is Accepted.

**Status:** ✅ Done — `docs/development-roadmap.md` rewritten (commit `3187088`);
`docs/decisions.md` version rows added (Java 21 LTS, Maven, Angular standalone + signals,
MIT) and `docs/adr/0005-toolchain-versions.md` accepted.

**Suggested commit message:** `Reconcile roadmap and pin toolchain versions`

**Learning:** architecture decision records, single source of truth, scope
control.

---

### P3 — Angular App Scaffold

**Goal:** Initialize the Angular workspace under `frontend/` using the
confirmed stack (Angular latest stable, standalone components, signals,
TypeScript, SCSS).

**Files to create or modify:**
- `frontend/` — full Angular workspace output from `ng new`.
- `frontend/README.md` — update with build, serve, and test commands.

**Expected output:** a default Angular application that builds, serves, and
passes the default test suite.

**Validation:**
- `cd frontend && npm install` succeeds.
- `npm run build` produces a `dist/` folder (excluded by `.gitignore`).
- `npm start` shows the default Angular page in the browser.
- `npm test` runs green (default Karma or Jest spec).

**Suggested commit message:** `Set up Angular app shell`

**Learning:** Angular workspace layout, standalone components, TypeScript
compiler options, build and test commands.

---

### P4 — RPG Layout Placeholder Panels

**Goal:** Replace the default Angular content with a static, non-functional
structured layout that shows one empty component per panel defined in
`docs/gameplay-systems.md`. The screen must look like a text-RPG interface,
not a blank page and not a chat window.

**Components to create (all empty placeholders):**
- `GameScreenComponent` — root layout container.
- `NarrativePanelComponent` — main story text area.
- `ActionMenuComponent` — available actions and free input.
- `CharacterSheetComponent` — stats, level, Rune mastery.
- `InventoryComponent` — items and equipment.
- `QuestLogComponent` — active and completed quests.
- `CompanionPanelComponent` — party members.
- `WorldStatePanelComponent` — location and faction state.
- `RunePanelComponent` — pseudocode magic input.
- `LyraAssistantPanelComponent` — divine assistant output.

**Files to create or modify:**
- `frontend/src/app/` — all components above.
- Minimal SCSS layout (grid or flex) to position the panels visibly.

**Expected output:** the app renders all panels visibly; each shows a
placeholder label; the layout is recognizable as a structured RPG interface.

**Validation:**
- `npm start` → browser shows all ten panels.
- `npm test` → unit tests for each component pass (each test checks that
  the component mounts without error).

**Suggested commit message:** `Add RPG layout placeholder panels`

**Learning:** component boundaries, Angular standalone component declaration,
presentational components, CSS layout for multi-panel UIs.

---

### P5 — Spring Boot Scaffold and Health Endpoint

**Goal:** Initialize the Spring Boot project under `backend/` using Java 21
and Maven. Expose a single `GET /api/health` endpoint that returns HTTP 200.

**Files to create or modify:**
- `backend/pom.xml` — Spring Boot parent, Java 21, web starter, test starter.
- `backend/src/main/java/…/Application.java` — main entry point.
- `backend/src/main/java/…/HealthController.java` — GET /api/health.
- `backend/src/test/java/…/HealthControllerTest.java` — MockMvc test.
- `backend/README.md` — update with build and run commands.

**Expected output:** the backend starts locally; `GET /api/health` returns
HTTP 200; the MockMvc test is green.

**Validation:**
- `cd backend && ./mvnw test` passes.
- `./mvnw spring-boot:run` starts without errors.
- `curl http://localhost:8080/api/health` returns 200.

**Suggested commit message:** `Initialize Spring Boot backend with health endpoint`

**Learning:** REST controllers, service layer boundaries, MockMvc testing,
Maven wrapper, Spring Boot auto-configuration.

---

### P6 — Connect Frontend to Backend (Integration Smoke)

**Goal:** Prove the two halves of the stack can communicate before writing
any real feature. Wire up CORS on the backend and a dev proxy on the frontend
so a simple HTTP call from the Angular app reaches the Spring Boot server.

**Files to create or modify:**
- `backend/src/main/java/…/config/CorsConfig.java` — allow `localhost:4200`.
- `frontend/proxy.conf.json` — proxy `/api` to `http://localhost:8080`.
- `frontend/angular.json` — reference the proxy config in `serve` options.
- `frontend/src/app/core/api.service.ts` — minimal `HttpClient` wrapper.
- `GameScreenComponent` — display a "Backend: UP / DOWN" status indicator.

**Expected output:** with both `npm start` and `./mvnw spring-boot:run`
running, the Angular UI shows "Backend: UP" by calling `/api/health`.

**Validation:**
- Both processes running → browser shows "Backend: UP".
- Stop the backend → UI shows "Backend: DOWN" or an error state.
- `npm test` → `ApiService` unit test passes using `HttpTestingController`.

**Suggested commit message:** `Connect frontend to backend health endpoint`

**Learning:** CORS configuration, Angular dev proxy, `HttpClient`, observable
error handling, end-to-end wiring between two separate runtimes.

---

### P7 — Docker Compose Dev Environment

**Goal:** Define a Docker Compose setup that starts PostgreSQL (with the
`pgvector` extension available for future use). The Spring Boot backend must
connect to this database on startup.

**Files to create or modify:**
- `docker-compose.yml` — PostgreSQL service using `pgvector/pgvector:pg16`
  image; ports, volume, env vars read from `.env`.
- `backend/src/main/resources/application.yml` — datasource pointing to the
  Compose DB; credentials from environment variables.
- `.env.example` — update with actual variable names used in `docker-compose.yml`.
- `docs/technical-architecture.md` — update with local setup instructions.

**Expected output:** `docker compose up -d` starts Postgres; the backend
connects on startup without errors; a fresh developer can follow the README
to reproduce the environment.

**Validation:**
- `docker compose up -d` → both services healthy.
- `./mvnw spring-boot:run` with DB running → "Started Application" in logs.
- `docker compose down` → clean teardown.

**Suggested commit message:** `Add Docker Compose with PostgreSQL and pgvector`

**Learning:** containerized databases, environment variable injection,
Spring Boot datasource configuration, Docker Compose service definitions.

---

### P8 — Foundational Game Entities and Migrations

**Goal:** Define the four core domain entities (`Player`, `Campaign`,
`SaveGame`, `Character`) with JPA and create their tables through versioned
Flyway migrations. Prove persistence works with a repository integration test.

**Files to create or modify:**
- `backend/src/main/java/…/domain/` — `Player`, `Campaign`, `SaveGame`,
  `Character` entity classes.
- `backend/src/main/java/…/repository/` — Spring Data JPA repositories.
- `backend/src/main/resources/db/migration/V1__create_core_entities.sql` —
  Flyway migration.
- `backend/src/test/…/PlayerRepositoryTest.java` — integration test.
- `backend/pom.xml` — add Flyway and PostgreSQL driver dependencies.

**Expected output:** migration creates the four tables; basic CRUD operations
work against the running Compose DB.

**Validation:**
- `docker compose up -d` + `./mvnw spring-boot:run` → Flyway logs show
  migration applied.
- Integration test saves and retrieves a `Player` → green.
- Tables visible in `psql` or a DB client.

**Suggested commit message:** `Create foundational game state entities`

**Learning:** domain modeling, JPA entities, Spring Data repositories,
Flyway migrations, persistence layer boundaries.

---

### P9 — New Game Creation End-to-End

**Goal:** Implement `POST /api/game/start` that accepts a protagonist name,
creates a persisted game, and returns the game id. Add a start screen in the
Angular frontend.

**Files to create or modify:**
- `backend/src/main/java/…/game/GameController.java` — POST /api/game/start.
- `backend/src/main/java/…/game/GameService.java` — business logic.
- `backend/src/main/java/…/game/dto/NewGameRequest.java` — request DTO.
- `backend/src/main/java/…/game/dto/NewGameResponse.java` — response DTO.
- `backend/src/test/…/GameControllerTest.java` — MockMvc test.
- `frontend/src/app/start-screen/` — `StartScreenComponent` with a name form.
- `frontend/src/app/core/game.service.ts` — calls the backend endpoint.

**Expected output:** entering a protagonist name in the UI creates a game in
the database and returns its id; the game persists across a backend restart.

**Validation:**
- MockMvc test for POST /api/game/start → 201 Created with an id.
- Manual: enter name in the UI → game row present in the DB.
- Restart the backend → game still present.

**Suggested commit message:** `Implement new game creation`

**Learning:** vertical feature slice, DTO validation (`@Valid`, `@NotBlank`),
end-to-end frontend-to-database integration.

---

### P10 — Static Narrative Intro

**Goal:** Implement `GET /api/game/{id}/intro` that returns the static opening
narrative (goddess grants Rune; Lyra is introduced). Render the text in the
narrative panel component.

**Files to create or modify:**
- `backend/src/main/java/…/narrative/NarrativeController.java` — GET endpoint.
- `backend/src/main/resources/narrative/intro.txt` (or inline constant) —
  the opening text.
- `backend/src/test/…/NarrativeControllerTest.java` — endpoint test.
- `frontend/src/app/narrative-panel/` — bind to the intro response.

**Expected output:** after a new game is created, the narrative panel shows
the backend-served intro text.

**Validation:**
- Endpoint test returns 200 with non-empty text.
- UI displays the intro text in the narrative panel after game start.

**Suggested commit message:** `Add static intro narrative endpoint`

**Learning:** separating narrative content from business logic, content
delivery patterns, Angular data binding.

---

### P11 — Mocked LLM Adapter Contract

**Goal:** Define an internal `LlmClient` interface and a `MockLlmClient`
implementation that returns deterministic canned responses. The rest of the
backend depends on the interface, never on Ollama directly. (ADR 0002.)

**Files to create or modify:**
- `backend/src/main/java/…/ai/LlmClient.java` — interface with a single
  `generate(LlmRequest)` method returning `LlmResponse`.
- `backend/src/main/java/…/ai/MockLlmClient.java` — Spring `@Primary` in the
  `mock` profile; returns a canned narrative string.
- `backend/src/main/java/…/ai/LlmRequest.java` — prompt + context DTO.
- `backend/src/main/java/…/ai/LlmResponse.java` — narrative + proposedChanges.
- `backend/src/test/…/MockLlmClientTest.java` — unit test.
- `backend/src/main/resources/application.yml` — default profile activates mock.

**Expected output:** a stable adapter contract; tests run without any running
model; the mock is activated by default.

**Validation:**
- Unit test calls `MockLlmClient.generate()` → returns a non-empty narrative.
- Profile `mock` is the default; switching to `ollama` is opt-in.

**Suggested commit message:** `Stub out LLM client service`

**Learning:** ports-and-adapters pattern, Spring profiles, replaceable
dependencies, designing for testability.

---

### P12 — Action to Narrative Loop (Mocked)

**Goal:** Implement `POST /api/game/{id}/action` that takes a free-text player
action and returns a mocked narrative response via `LlmClient`. Wire the
frontend action input to append responses to the narrative panel.

**Files to create or modify:**
- `backend/src/main/java/…/game/ActionController.java` — POST endpoint.
- `backend/src/main/java/…/game/ActionService.java` — calls `LlmClient`.
- `backend/src/main/java/…/game/dto/ActionRequest.java` — free-text input.
- `backend/src/main/java/…/game/dto/ActionResponse.java` — narrative + state.
- `backend/src/test/…/ActionControllerTest.java` — MockMvc test with mock LLM.
- `frontend/src/app/action-menu/` — submit action form.
- `frontend/src/app/narrative-panel/` — append new narrative entries.

**Expected output:** typing an action and submitting it produces a narrative
response that appears in the narrative panel.

**Validation:**
- Integration test for POST /api/game/{id}/action → 200 with narrative.
- Manual: submit an action in the UI → text appears in the narrative panel.

**Suggested commit message:** `Hook up LLM client to produce narrative`

**Learning:** action orchestration flow, controller-service-adapter layering,
reactive state updates in Angular.

---

### P13 — State Mutation Validation Boundary ⭐

**Goal:** Enforce the core architectural rule (ADR 0003): AI responses may
include a `proposedChanges` array, but only the backend service validates and
applies permitted changes. Raw model output must never write to the database.

**Files to create or modify:**
- `backend/src/main/java/…/ai/LlmResponse.java` — add `proposedChanges` list.
- `backend/src/main/java/…/ai/ProposedChange.java` — type, targetId, field,
  value.
- `backend/src/main/java/…/game/ChangeValidator.java` — checks each proposed
  change against an allowlist of permitted types, targets, and ranges.
- `backend/src/main/java/…/game/StateMutationService.java` — applies validated
  changes and rejects the rest.
- `backend/src/main/java/…/event/GameEventLog.java` — entity recording applied
  changes with timestamp.
- `backend/src/test/…/ChangeValidatorTest.java` — unit tests.

**Expected output:** valid proposed changes are applied and logged; invalid or
unauthorized changes are rejected; no direct DB write path exists from raw
model text.

**Validation:**
- Test: valid change → applied and recorded in the event log.
- Test: invalid type → rejected, not applied, rejection logged.
- Test: unauthorized field → ignored.
- No test can bypass the validator to modify the DB directly.

**Suggested commit message:** `Add state validation for planned changes`

**Learning:** trust boundaries, input validation, deterministic rule
enforcement, auditing, designing against untrusted sources.

---

### P14 — Rune Parser and Validator MVP

**Goal:** Implement a minimal Rune grammar and a `POST /api/rune/validate`
endpoint that checks syntax, resource cost, player level, script complexity,
target, and allowed effect. Wire the frontend Rune panel to show validation
results. (ADR 0004.)

**MVP command set (example, to be confirmed):**
```
inspect <target>
cast <element>(<target>)
enhance <action>
```

**Files to create or modify:**
- `backend/src/main/java/…/rune/RuneParser.java` — tokenizer and AST.
- `backend/src/main/java/…/rune/RuneValidator.java` — checks cost, level,
  complexity, target, allowed effect.
- `backend/src/main/java/…/rune/RuneController.java` — POST /api/rune/validate.
- `backend/src/main/java/…/rune/dto/RuneValidationRequest.java`
- `backend/src/main/java/…/rune/dto/RuneValidationResult.java`
- `backend/src/test/…/RuneParserTest.java`
- `backend/src/test/…/RuneValidatorTest.java`
- `frontend/src/app/rune-panel/` — script input + validation result display.
- `docs/rune-system.md` — update with the MVP command set.

**Expected output:** the validation endpoint returns a structured result
(valid/invalid + reasons); the Rune panel shows results in real time.

**Validation:**
- Test: valid `inspect target` → valid.
- Test: unknown command → invalid, reason "unknown command".
- Test: valid command but player level too low → invalid, reason "level gate".
- Test: cost exceeds budget → invalid, reason "insufficient resource".
- Test: edge cases (empty input, special characters).

**Suggested commit message:** `Implement basic Rune parsing and validation`

**Learning:** parsing and tokenization, structured error reporting, gameplay
balancing through deterministic rules.

---

### P15 — Lyra Guidance MVP

**Goal:** Implement `LyraService` that translates Rune validation error codes
into diegetic, in-world explanations. Wire the Lyra panel to display these
explanations when a Rune command is invalid.

**Files to create or modify:**
- `backend/src/main/java/…/lyra/LyraService.java` — maps `RuneValidationResult`
  error codes to narrative explanations; rule-based first, mock LLM optional.
- `backend/src/main/java/…/lyra/LyraController.java` — GET endpoint to fetch
  Lyra guidance for a given error context.
- `backend/src/test/…/LyraServiceTest.java` — tests each error code mapping.
- `frontend/src/app/lyra-assistant-panel/` — display Lyra guidance text.
- `docs/lyra-assistant.md` — update with MVP behavior description.

**Expected output:** submitting an invalid Rune command triggers the Lyra
panel to display a clear, in-world explanation without mutating game state.

**Validation:**
- Test: `UNKNOWN_COMMAND` error → Lyra returns a readable in-world explanation.
- Test: `LEVEL_GATE` error → Lyra returns a level-appropriate explanation.
- Test: Lyra never calls `StateMutationService` or modifies state.
- UI: invalid Rune → Lyra panel updates.

**Suggested commit message:** `Add Lyra assistant response for Rune guidance`

**Learning:** assistant UX patterns, bounded autonomy, diegetic help systems,
mapping technical errors to human-readable narratives.

---

### P16 — Persistent Save and Event Log Foundation

**Goal:** Ensure game state (player, world, quests) survives a backend
restart. Implement an append-only event log that records every meaningful
action and its outcome.

**Files to create or modify:**
- `backend/src/main/java/…/save/SaveService.java` — save and load current
  game state.
- `backend/src/main/java/…/event/GameEvent.java` — event entity (type,
  gameId, payload, timestamp).
- `backend/src/main/java/…/event/GameEventRepository.java`
- `backend/src/main/resources/db/migration/V2__add_event_log.sql` — Flyway.
- `backend/src/test/…/SaveServiceTest.java` — integration test.

**Expected output:** game state survives a restart; every player action and
applied change is recorded as an event in the database.

**Validation:**
- Integration test: create game → perform action → restart backend → state
  unchanged.
- Each action appends a row to the event log table.

**Suggested commit message:** `Add persistent save and event log foundation`

**Learning:** persistence strategies, append-only event logs, state
reconstruction, narrative continuity through data.

---

### P17 — Real Ollama Adapter

**Goal:** Implement `OllamaLlmClient` that calls a locally running Ollama
instance over HTTP. Profile-switched: the mock stays the default for tests;
the Ollama adapter activates via the `ollama` Spring profile.

**Files to create or modify:**
- `backend/src/main/java/…/ai/OllamaLlmClient.java` — HTTP client calling
  `POST http://localhost:11434/api/generate`.
- `backend/src/main/resources/application-ollama.yml` — Ollama URL and model
  name (from `.env`).
- `backend/src/test/…/OllamaLlmClientTest.java` — test against a stubbed HTTP
  server (WireMock or MockServer).
- `.env.example` — add `OLLAMA_MODEL` with a recommended model name.
- `docs/ai-architecture.md` — update with chosen model and setup instructions.

**Expected output:** activating the `ollama` profile with a running Ollama
instance produces real AI narrative. The mock remains the default for all
automated tests.

**Validation:**
- WireMock test: `OllamaLlmClient.generate()` sends the correct HTTP request
  format and parses the response.
- Manual: start Ollama with the configured model → activate the profile →
  submit a game action → real narrative appears.
- `./mvnw test` (without Ollama) → still green because mock is the default.

**Suggested commit message:** `Add Ollama adapter for local narrative generation`

**Learning:** HTTP client integration, swapping adapters behind a port,
WireMock testing, handling latency and errors from an external service.

---

### P18 — MVP Polish and Portfolio Pass

**Goal:** Make the repository recruiter-ready and reproducible from a fresh
clone. Document the full local setup, add an architecture diagram, and verify
the public tone throughout.

**Files to create or modify:**
- `README.md` — complete setup instructions (prerequisites, Docker Compose,
  backend, frontend, optional Ollama), project identity, architecture summary,
  and demo flow.
- `docs/technical-architecture.md` — add or update the architecture diagram
  (text-based or image).
- `docs/` — final review for public-tone compliance (companion progression,
  not romance wording).
- `.github/workflows/ci.yml` (optional) — basic CI: backend tests, Angular
  build.
- `CHANGELOG.md` — update MVP milestone entry.

**Expected output:** a developer who has never seen this repo can follow the
README and reach a running game loop. The repository reads as a professional
AI engineering portfolio project.

**Validation:**
- Follow the README from a clean environment → app starts and the game loop
  works.
- `public-tone-guard` hook passes on all modified files.
- CI (if added) is green on the main branch.

**Suggested commit message:** `Polish documentation and demo for portfolio readiness`

**Learning:** public communication, reproducible setup documentation,
architecture diagrams, recruiter-facing presentation.

---

## Post-MVP (explicitly deferred)

These features should not be started before P18 is complete and the core loop
is stable.

- Full combat system.
- Companion progression and character-driven relationship system.
- Semantic memory with pgvector.
- Multi-campaign support.
- Integrated image generation and asset manager.
- Advanced Rune reality-editing (Phase 5 of Rune progression).
- CI/CD hardening and automated deployment.
- Lore editor, quest editor.
- Voice acting / TTS integration.
- Interactive world map.
