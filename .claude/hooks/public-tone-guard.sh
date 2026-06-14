#!/usr/bin/env sh
set -eu

files="$(git diff --name-only 2>/dev/null | grep -E '(^README\.md$|^docs/|^\.claude/skills/|^\.claude/agents/)' || true)"

[ -n "$files" ] || exit 0

risky_pattern='(nsfw|harem|sexy|erotic|fetish|waifu|adult content)'
found=0

for file in $files; do
  [ -f "$file" ] || continue
  if grep -EIn "$risky_pattern" "$file" >/dev/null 2>&1; then
    printf 'Public tone warning in %s. Prefer professional wording such as narrative relationship system, companion progression, character-driven storytelling, mature but elegant tone, or portfolio-safe public presentation.\n' "$file" >&2
    found=1
  fi
done

if [ "$found" -ne 0 ]; then
  exit 1
fi

exit 0
