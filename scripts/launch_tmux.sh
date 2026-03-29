#!/usr/bin/env bash
set -euo pipefail

BASE_NAME="$(basename "$(pwd)")"
SESSION="${1:-multi_agents}"

CLI_DIR="../${BASE_NAME}-agent-cli"
TESTS_DIR="../${BASE_NAME}-agent-tests"
README_DIR="../${BASE_NAME}-agent-readme"

if ! command -v tmux >/dev/null 2>&1; then
  echo "tmux is required for this helper script." >&2
  exit 1
fi

tmux new-session -d -s "${SESSION}" -n cli
tmux send-keys -t "${SESSION}:cli" "cd ${CLI_DIR}" C-m

tmux new-window -t "${SESSION}" -n tests
tmux send-keys -t "${SESSION}:tests" "cd ${TESTS_DIR}" C-m

tmux new-window -t "${SESSION}" -n readme
tmux send-keys -t "${SESSION}:readme" "cd ${README_DIR}" C-m

echo "tmux session created: ${SESSION}"
echo "Attach with: tmux attach -t ${SESSION}"
echo
echo "Suggested commands:"
echo "  CLI pane:    claude"
echo "  Tests pane:  copilot"
echo "  README pane: copilot"
