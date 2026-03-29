import subprocess
import sys


def run_cli(*args: str) -> str:
    cmd = [sys.executable, "-m", "hello_world.cli", *args]
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    return result.stdout.strip()


def test_hello_default() -> None:
    assert run_cli() == "Hello, world!"


def test_hello_named() -> None:
    assert run_cli("--name", "Dwight") == "Hello, Dwight!"
