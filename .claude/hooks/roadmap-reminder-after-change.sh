#!/usr/bin/env sh
set -eu

changed="$(
  {
    git diff --name-only 2>/dev/null || true
    git diff --cached --name-only 2>/dev/null || true
    git ls-files --others --exclude-standard 2>/dev/null || true
  } | sort -u
)"

if [ -z "$changed" ]; then
  exit 0
fi

roadmap="docs/development-roadmap.md"

if printf '%s\n' "$changed" | grep -Eq "^${roadmap}$"; then
  printf '%s\n' "Roadmap reminder: ${roadmap} changed. Before finishing, verify phase status, task completion, validation notes, and suggested commit message are still accurate."
else
  printf '%s\n' "Roadmap reminder: review ${roadmap} before finishing. If this work completes or changes a planned task, mark it done or update the roadmap."
fi

exit 0
