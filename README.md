# Homebrew Tap for promptctl

This is a [Homebrew](https://brew.sh/) tap for [promptctl](https://github.com/debendraoli/promptctl) - a CLI tool for managing coding prompts across projects.

## Installation

```bash
brew tap debendraoli/promptctl
brew install promptctl
```

## Usage

```bash
# List available prompts
promptctl list

# Show a specific prompt
promptctl show rust

# Generate context-aware prompt
promptctl generate --language rust --role architect

# Copy to clipboard
promptctl show go --copy
```

For more information, see the [promptctl repository](https://github.com/debendraoli/promptctl).
