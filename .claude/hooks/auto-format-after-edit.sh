#!/usr/bin/env sh
set -eu

printf 'Formatting reminder: run the smallest relevant formatter before finishing the phase.\n'

if [ -f frontend/package.json ]; then
  printf '- Frontend: use the configured Angular/TypeScript formatter or lint command if available.\n'
fi

if [ -f backend/pom.xml ] || [ -f backend/build.gradle ] || [ -f backend/build.gradle.kts ]; then
  printf '- Backend: use the configured Java formatter if available.\n'
fi

if find . -maxdepth 2 -name '*.md' -print -quit 2>/dev/null | grep -q .; then
  printf '- Markdown: keep headings, links, and tables tidy.\n'
fi

exit 0
