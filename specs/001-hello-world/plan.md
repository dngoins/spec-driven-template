# Implementation Plan: Hello World CLI

## Stack

- Python 3.11
- argparse from stdlib
- pytest for tests

## Design

- Keep CLI logic in `src/hello_world/cli.py`
- Keep tests in `tests/test_cli.py`
- Expose entrypoint as `hello`

## Constraints

- Minimal complexity
- Clear UX
- Small diff size
