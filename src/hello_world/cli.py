import argparse


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(prog="hello")
    parser.add_argument("--name", help="Optional name to greet")
    return parser


def main() -> None:
    parser = build_parser()
    args = parser.parse_args()

    if args.name:
        print(f"Hello, {args.name}!")
    else:
        print("Hello, world!")


if __name__ == "__main__":
    main()
