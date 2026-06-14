#!/usr/bin/env sh
set -eu

cat <<'EOF'
Phase summary reminder:
- Phase completed
- Files changed
- Checks run
- Docs updated
- Risks/open questions
- Suggested English commit message
EOF

exit 0
