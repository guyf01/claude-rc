#!/bin/bash
# Links rules, skills, agents, hooks, and settings from this repo into ~/.claude/
# Run this once per machine after cloning the repo.

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

# Enable native symlinks on Windows (Git Bash / MSYS2 creates copies by default)
export MSYS=winsymlinks:nativestrict

# Ensure ~/.claude/ exists
mkdir -p "$CLAUDE_DIR"

ITEMS=(
  "rules"
  "skills"
  "agents"
  "hooks"
  "settings.json"
  "bookmarks.md"
)

for item in "${ITEMS[@]}"; do
  TARGET="$CLAUDE_DIR/$item"
  SOURCE="$REPO_DIR/$item"

  if [ ! -e "$SOURCE" ]; then
    echo "SKIP: $item does not exist in repo."
    continue
  fi

  if [ -L "$TARGET" ]; then
    CURRENT="$(readlink "$TARGET")"
    if [ "$CURRENT" = "$SOURCE" ]; then
      echo "OK:   $item already linked."
    else
      echo "WARN: $item is linked to $CURRENT (expected $SOURCE). Remove it manually to relink."
    fi
    continue
  fi

  if [ -e "$TARGET" ]; then
    echo "WARN: $TARGET already exists. Remove it manually if you want to link."
    continue
  fi

  ln -s "$SOURCE" "$TARGET"

  # Verify the symlink was created (ln -s silently copies on Windows without Developer Mode)
  if [ -L "$TARGET" ]; then
    echo "OK:   $item linked."
  else
    rm -rf "$TARGET"
    echo "FAIL: $item could not be symlinked. Symlink creation failed on Windows. Ensure Developer Mode is enabled (Settings > For developers)."
    SYMLINK_FAILED=true
  fi
done

if [ "$SYMLINK_FAILED" = true ]; then
  echo ""
  echo "Some items failed to link. On Windows, symlinks require Developer Mode."
  echo "Enable it, then re-run this script."
  exit 1
fi

echo ""
echo "Done. Linked from: $REPO_DIR"
echo "            Into:  $CLAUDE_DIR"
