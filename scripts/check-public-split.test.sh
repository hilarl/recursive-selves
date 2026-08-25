#!/usr/bin/env bash
# Test harness for scripts/check-public-split.sh.
#
# bats isn't available on this host, so this is a plain-shell harness. Each
# test builds a disposable scratch git repo under a temp dir, wires up a copy
# of the real check script plus an allowlist, exercises one failure mode
# (or the clean-pass case), and asserts both the exit code and the expected
# message.
#
# Run: scripts/check-public-split.test.sh
set -uo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
check_script="$repo_root/scripts/check-public-split.sh"

pass=0
fail=0
cleanup_dirs=()
trap 'for d in "${cleanup_dirs[@]:-}"; do [ -n "$d" ] && rm -rf "$d"; done' EXIT

# Fresh scratch git repo with a copy of the real check script already tracked.
new_scratch_repo() {
  local dir
  dir="$(mktemp -d)"
  git -C "$dir" init -q
  git -C "$dir" config user.email test@example.com
  git -C "$dir" config user.name test
  mkdir -p "$dir/scripts"
  cp "$check_script" "$dir/scripts/check-public-split.sh"
  chmod +x "$dir/scripts/check-public-split.sh"
  git -C "$dir" add scripts/check-public-split.sh
  echo "$dir"
}

# write_and_track <repo_dir> <relpath> <content>
write_and_track() {
  local dir="$1" rel="$2" content="$3"
  mkdir -p "$dir/$(dirname "$rel")"
  printf '%s\n' "$content" >"$dir/$rel"
  git -C "$dir" add "$rel"
}

run_check() {
  ( cd "$1" && ./scripts/check-public-split.sh )
}

assert_fail_contains() {
  local desc="$1" dir="$2" expected="$3"
  local out rc
  out="$(run_check "$dir" 2>&1)"
  rc=$?
  if [ "$rc" -eq 0 ]; then
    echo "FAIL: $desc -- expected non-zero exit, got 0"
    echo "  output: $out"
    fail=$((fail + 1))
    return
  fi
  if ! printf '%s\n' "$out" | grep -qF "$expected"; then
    echo "FAIL: $desc -- expected output to contain: $expected"
    echo "  actual output: $out"
    fail=$((fail + 1))
    return
  fi
  echo "PASS: $desc"
  pass=$((pass + 1))
}

assert_pass() {
  local desc="$1" dir="$2"
  local out rc
  out="$(run_check "$dir" 2>&1)"
  rc=$?
  if [ "$rc" -ne 0 ]; then
    echo "FAIL: $desc -- expected exit 0, got $rc"
    echo "  output: $out"
    fail=$((fail + 1))
    return
  fi
  echo "PASS: $desc"
  pass=$((pass + 1))
}

# --- baseline: a clean, fully-matched repo passes --------------------------
d="$(new_scratch_repo)"
cleanup_dirs+=("$d")
cat >"$d/PUBLIC-ALLOWLIST.txt" <<'EOF'
README.md
PUBLIC-ALLOWLIST.txt
scripts/check-public-split.sh
EOF
git -C "$d" add PUBLIC-ALLOWLIST.txt
write_and_track "$d" README.md "hello"
git -C "$d" commit -q -m init
assert_pass "clean repo with matching allowlist passes" "$d"

# --- failure mode 1: a tracked file missing from the allowlist -------------
d="$(new_scratch_repo)"
cleanup_dirs+=("$d")
cat >"$d/PUBLIC-ALLOWLIST.txt" <<'EOF'
README.md
PUBLIC-ALLOWLIST.txt
scripts/check-public-split.sh
EOF
git -C "$d" add PUBLIC-ALLOWLIST.txt
write_and_track "$d" README.md "hello"
write_and_track "$d" secret-notes.md "shouldn't be here"
git -C "$d" commit -q -m init
assert_fail_contains "unlisted tracked file is rejected" "$d" "unlisted: secret-notes.md"

# --- failure mode 2: an allowlist entry that isn't actually tracked --------
d="$(new_scratch_repo)"
cleanup_dirs+=("$d")
cat >"$d/PUBLIC-ALLOWLIST.txt" <<'EOF'
README.md
PUBLIC-ALLOWLIST.txt
scripts/check-public-split.sh
docs/PROMISED.md
EOF
git -C "$d" add PUBLIC-ALLOWLIST.txt
write_and_track "$d" README.md "hello"
git -C "$d" commit -q -m init
assert_fail_contains "listed-but-missing file is rejected" "$d" "listed but not tracked: docs/PROMISED.md"

# --- failure mode 3: a forbidden internal string injected into a file ------
d="$(new_scratch_repo)"
cleanup_dirs+=("$d")
cat >"$d/PUBLIC-ALLOWLIST.txt" <<'EOF'
README.md
PUBLIC-ALLOWLIST.txt
scripts/check-public-split.sh
EOF
git -C "$d" add PUBLIC-ALLOWLIST.txt
# Built via concatenation rather than written as one literal: the forbidden
# pattern must land in the *scratch* file under test, not verbatim in this
# harness's own source, or this file would trip the very check it tests.
forbidden_snippet="see src/so""ul.ts for details"
write_and_track "$d" README.md "$forbidden_snippet"
git -C "$d" commit -q -m init
assert_fail_contains "forbidden internal vocabulary is rejected" "$d" "check failed: README.md"

echo
echo "$pass passed, $fail failed"
[ "$fail" -eq 0 ]
