#!/usr/bin/env sh
set -eu

files="$(git diff --name-only --cached 2>/dev/null || true)"

if [ -z "$files" ]; then
  files="$(git diff --name-only 2>/dev/null || true)"
fi

if [ -z "$files" ]; then
  exit 0
fi

secret_pattern='(api[_-]?key|secret|token|password|passwd|private[_-]?key)[[:space:]]*[:=][[:space:]]*["'\'']?[^"'\''[:space:]]{12,}'
private_key_pattern='-----BEGIN (RSA |DSA |EC |OPENSSH )?PRIVATE KEY-----'

found=0

for file in $files; do
  [ -f "$file" ] || continue
  case "$file" in
    .git/*|node_modules/*|dist/*|build/*|target/*)
      continue
      ;;
  esac

  if grep -EIn "$secret_pattern" "$file" >/dev/null 2>&1; then
    printf 'Possible secret detected in %s\n' "$file" >&2
    found=1
  fi

  if grep -EIn "$private_key_pattern" "$file" >/dev/null 2>&1; then
    printf 'Private key material detected in %s\n' "$file" >&2
    found=1
  fi
done

if [ "$found" -ne 0 ]; then
  printf 'Remove secrets before continuing. Use local untracked environment files for private values.\n' >&2
  exit 2
fi

exit 0
