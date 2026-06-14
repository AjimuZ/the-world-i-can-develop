#!/usr/bin/env sh
set -eu

payload="$(cat || true)"

if command -v jq >/dev/null 2>&1; then
  command_text="$(printf '%s' "$payload" | jq -r '.tool_input.command // .command // empty' 2>/dev/null || true)"
else
  command_text="$payload"
fi

blocked_reason=""

case "$command_text" in
  *"rm -rf /"*|*"rm -fr /"*)
    blocked_reason="Refusing to remove the filesystem root."
    ;;
  *"rm -rf ."*|*"rm -fr ."*)
    blocked_reason="Refusing broad deletion from the current directory."
    ;;
  *"git reset --hard"*)
    blocked_reason="Refusing git reset --hard."
    ;;
  *"git clean -fdx"*)
    blocked_reason="Refusing git clean -fdx."
    ;;
  *"git push --force"*|*"git push -f"*)
    blocked_reason="Refusing force push."
    ;;
  *"rm -rf .git"*|*"rm -fr .git"*|*"Remove-Item"*".git"*)
    blocked_reason="Refusing deletion of .git."
    ;;
esac

if printf '%s' "$command_text" | grep -Eq 'git push([^[:alnum:]_-]|$).*( main| master| origin main| origin master)'; then
  blocked_reason="Refusing direct push to main/master."
fi

if printf '%s' "$command_text" | grep -Eq '(rm|Remove-Item).*(docs|\.claude)'; then
  blocked_reason="Refusing deletion of docs or .claude without explicit confirmation."
fi

if [ -n "$blocked_reason" ]; then
  printf '%s\n' "$blocked_reason" >&2
  exit 2
fi

exit 0
