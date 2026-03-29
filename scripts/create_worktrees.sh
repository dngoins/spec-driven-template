#!/usr/bin/env bash
set -euo pipefail

BASE_NAME="$(basename "$(pwd)")"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Run this script from inside the git repo root." >&2
  exit 1
fi

git worktree add "../${BASE_NAME}-agent-cli" -b "feat/hello-cli" || true
git worktree add "../${BASE_NAME}-agent-tests" -b "feat/hello-tests" || true
git worktree add "../${BASE_NAME}-agent-readme" -b "feat/hello-readme" || true

echo "Created worktrees:"
echo "  ../${BASE_NAME}-agent-cli"
echo "  ../${BASE_NAME}-agent-tests"
echo "  ../${BASE_NAME}-agent-readme"
