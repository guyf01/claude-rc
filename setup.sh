#!/bin/bash
# Links rules, skills, agents, hooks, and settings from this repo into ~/.claude/
# Run this once per machine after cloning the repo.

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

# Ensure ~/.claude/ exists
mkdir -p "$CLAUDE_DIR"

ITEMS=(
  "rules"
  "skills"
  "agents"
  "hooks"
  "settings.json"
)

for item in "${ITEMS[@]}"; do
  TARGET="$CLAUDE_DIR/$item"
  SOURCE="$REPO_DIR/$item"

  if [ ! -e "$SOURCE" ]; then
    echo "SKIP: $item does not exist in repo."
    continue
  fi

  if [ -L "$TARGET" ]; then
    echo "OK:   $item already linked."
    continue
  fi

  if [ -e "$TARGET" ]; then
    echo "WARN: $TARGET already exists. Remove it manually if you want to link."
    continue
  fi

  ln -s "$SOURCE" "$TARGET"
  echo "OK:   $item linked."
done

echo ""
echo "Done. Linked from: $REPO_DIR"
echo "            Into:  $CLAUDE_DIR"
