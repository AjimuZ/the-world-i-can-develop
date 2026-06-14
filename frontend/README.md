# Frontend — The World I Can Develop

The Angular RPG interface for **The World I Can Develop**, a local-first,
AI-driven fantasy text RPG. This workspace hosts the structured RPG UI: the
narrative panel, action menu, character sheet, inventory, quest log, companion
panel, world state panel, Rune panel, and Lyra assistant panel.

The frontend renders the experience and isolates API calls in services. The
backend remains authoritative for game rules and state; the UI never owns
gameplay logic.

## Stack

- Angular 22 (generated with Angular CLI 22.0.1).
- Standalone components and signals (no NgModules).
- Zoneless change detection (no `zone.js`).
- TypeScript and SCSS.
- Vitest for unit tests.

## Prerequisites

- Node.js 20.19+, 22.12+, or 24+ (developed on Node 24).
- npm 11+.

## Commands

Run these from the `frontend/` directory.

```bash
npm install      # install dependencies
npm start        # start the dev server on http://localhost:4200
npm run build    # production build into dist/ (git-ignored)
npm test         # run unit tests with Vitest
```

## Project structure

- `src/app/` — application root component, config, and routes.
- `src/app/app.config.ts` — application providers (router, error listeners).
- `src/app/app.routes.ts` — route definitions.
- `src/styles.scss` — global styles.

Build artifacts (`dist/`, `.angular/`, `node_modules/`, `coverage/`) are ignored
by the repository's root `.gitignore`.
