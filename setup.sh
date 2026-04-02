#!/bin/bash
set -e

REPO_URL="https://github.com/lpaschen/pm-skills.git"
SKILLS_DIR="$HOME/.claude/skills/pm-skills"
CLAUDE_DIR="$HOME/.claude/skills"

echo "Setting up pm-skills..."

# Create skills directory if it doesn't exist
mkdir -p "$CLAUDE_DIR"

# Clone or update the repo
if [ -d "$SKILLS_DIR" ]; then
  echo "Updating existing install..."
  git -C "$SKILLS_DIR" pull
else
  echo "Cloning pm-skills..."
  git clone "$REPO_URL" "$SKILLS_DIR"
fi

echo ""
echo "Done. 31 PM skills are available in Claude Code."
echo "Run 'claude' from any project folder to get started."
