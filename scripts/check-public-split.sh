#!/usr/bin/env bash
# The public repo is allowlist-controlled in BOTH directions: every tracked file
# must be listed, and every listed file must exist — so a leak fails loudly and
# a silently missing promise (a listed file nobody added) fails just as loudly.
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0
mapfile -t allowed < <(grep -vE '^\s*(#|$)' PUBLIC-ALLOWLIST.txt)
# tracked ⊆ allowlist
while IFS= read -r f; do
  ok=0
  for a in "${allowed[@]}"; do [ "$f" = "$a" ] && ok=1 && break; done
  [ $ok -eq 0 ] && { echo "unlisted: $f"; fail=1; }
done < <(git ls-files)
# allowlist ⊆ tracked
for a in "${allowed[@]}"; do
  git ls-files --error-unmatch "$a" >/dev/null 2>&1 || { echo "listed but not tracked: $a"; fail=1; }
done
# no internal vocabulary or credential shapes in anything tracked
FORBIDDEN='src/(self|soul|panel|improve|adopt|ledger)\.ts|src/catalogue|praecise|BRAND\.md|admin1|N60-641|BSAO[A-Za-z0-9]|sk-[A-Za-z0-9]{16}'
while IFS= read -r f; do
  [ "$f" = "scripts/check-public-split.sh" ] && continue # the pattern list itself
  grep -inE "$FORBIDDEN" "$f" >/dev/null 2>&1 && { echo "check failed: $f"; fail=1; }
done < <(git ls-files)
[ $fail -eq 0 ] && echo "ok: $(git ls-files | wc -l) files"
exit $fail
