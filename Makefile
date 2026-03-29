.PHONY: test run run-name

test:
	pytest

run:
	PYTHONPATH=src python -m hello_world.cli

run-name:
	PYTHONPATH=src python -m hello_world.cli --name Dwight
