#!/usr/bin/env bash
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0
mapfile -t allowed < <(grep -vE '^\s*(#|$)' PUBLIC-ALLOWLIST.txt)
while IFS= read -r f; do
  ok=0
  for a in "${allowed[@]}"; do [ "$f" = "$a" ] && ok=1 && break; done
  [ $ok -eq 0 ] && { echo "unlisted: $f"; fail=1; }
done < <(git ls-files)
FORBIDDEN='src/(self|soul|panel|improve|adopt|ledger)\.ts|src/catalogue'
while IFS= read -r f; do
  grep -inE "$FORBIDDEN" "$f" >/dev/null 2>&1 && { echo "check failed: $f"; fail=1; }
done < <(git ls-files '*.md')
[ $fail -eq 0 ] && echo "ok: $(git ls-files | wc -l) files"
exit $fail
