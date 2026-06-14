#!/usr/bin/env sh
set -eu

changed="$(git diff --name-only 2>/dev/null || true)"

if printf '%s' "$changed" | grep -Eiq '(architecture|api|rune|lyra|ai|memory|roadmap|backend|frontend|prompts|docs/)'; then
  printf 'Docs reminder: update relevant docs when architecture, APIs, Rune, Lyra, AI orchestration, memory, or roadmap behavior changes.\n'
fi

exit 0
