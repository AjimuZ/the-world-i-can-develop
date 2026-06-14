#!/usr/bin/env sh
set -eu

# Reminder hook: printed after every Write/Edit tool call.
# Uses "printf '%s\n' STRING" instead of "printf STRING" to avoid the
# "printf: - : invalid option" error on Git Bash (Windows) when the message
# starts with a dash.

printf '%s\n' 'Formatting reminder: run the smallest relevant formatter before finishing the phase.'

if [ -f frontend/package.json ]; then
  printf '%s\n' '- Frontend: use the configured Angular/TypeScript formatter or lint command if available.'
fi

if [ -f backend/pom.xml ] || [ -f backend/build.gradle ] || [ -f backend/build.gradle.kts ]; then
  printf '%s\n' '- Backend: use the configured Java formatter if available.'
fi

if find . -maxdepth 2 -name '*.md' -print -quit 2>/dev/null | grep -q .; then
  printf '%s\n' '- Markdown: keep headings, links, and tables tidy.'
fi

exit 0
