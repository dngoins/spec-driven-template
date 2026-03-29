# Example Agent Commands

## Claude

```bash
claude
```

Then paste one of:

- `prompts/claude/specify.txt`
- `prompts/claude/implement_task_t001.txt`
- `prompts/claude/review.txt`

## Copilot

```bash
copilot
```

Then paste one of:

- `prompts/copilot/implement_task_t001.txt`
- `prompts/copilot/implement_task_t002.txt`
- `prompts/copilot/review.txt`

## Copilot custom agents

```bash
copilot --agent cli-implementer --prompt "Implement T001 for this repo"
copilot --agent test-writer --prompt "Implement T002 for this repo"
```
