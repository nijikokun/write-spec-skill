#!/bin/bash
# Writing Specs Skill installer
# https://github.com/nijikokun/write-spec-skill
set -e

# Colors (only if stdout is a TTY)
if [ -t 1 ]; then
  GREEN='\033[32m'
  DIM='\033[2m'
  RESET='\033[0m'
else
  GREEN=''
  DIM=''
  RESET=''
fi

REPO_URL="https://raw.githubusercontent.com/nijikokun/write-spec-skill/main"
SKILL_DIR="writing-specs"
INSTALLED=0

echo "Installing Writing Specs Skill…"
echo ""

# Amp
if [ -d "$HOME/.agents" ]; then
  mkdir -p "$HOME/.agents/skills/$SKILL_DIR/templates"
  curl -sL -o "$HOME/.agents/skills/$SKILL_DIR/SKILL.md" "$REPO_URL/.agents/skills/$SKILL_DIR/SKILL.md"
  curl -sL -o "$HOME/.agents/skills/$SKILL_DIR/templates/spec.md" "$REPO_URL/.agents/skills/$SKILL_DIR/templates/spec.md"
  printf "${GREEN}✓${RESET} Amp Skill\n"
  INSTALLED=$((INSTALLED + 1))
fi

# Claude Code
if [ -d "$HOME/.claude" ]; then
  mkdir -p "$HOME/.claude/skills/$SKILL_DIR/templates"
  curl -sL -o "$HOME/.claude/skills/$SKILL_DIR/SKILL.md" "$REPO_URL/.agents/skills/$SKILL_DIR/SKILL.md"
  curl -sL -o "$HOME/.claude/skills/$SKILL_DIR/templates/spec.md" "$REPO_URL/.agents/skills/$SKILL_DIR/templates/spec.md"
  printf "${GREEN}✓${RESET} Claude Code Skill\n"
  INSTALLED=$((INSTALLED + 1))
fi

# Cursor
if [ -d "$HOME/.cursor" ]; then
  mkdir -p "$HOME/.cursor/skills/$SKILL_DIR/templates"
  curl -sL -o "$HOME/.cursor/skills/$SKILL_DIR/SKILL.md" "$REPO_URL/.agents/skills/$SKILL_DIR/SKILL.md"
  curl -sL -o "$HOME/.cursor/skills/$SKILL_DIR/templates/spec.md" "$REPO_URL/.agents/skills/$SKILL_DIR/templates/spec.md"
  printf "${GREEN}✓${RESET} Cursor Skill\n"
  INSTALLED=$((INSTALLED + 1))
fi

# OpenCode
if command -v opencode &> /dev/null || [ -d "$HOME/.config/opencode" ]; then
  mkdir -p "$HOME/.config/opencode/skills/$SKILL_DIR/templates"
  curl -sL -o "$HOME/.config/opencode/skills/$SKILL_DIR/SKILL.md" "$REPO_URL/.agents/skills/$SKILL_DIR/SKILL.md"
  curl -sL -o "$HOME/.config/opencode/skills/$SKILL_DIR/templates/spec.md" "$REPO_URL/.agents/skills/$SKILL_DIR/templates/spec.md"
  printf "${GREEN}✓${RESET} OpenCode Skill\n"
  INSTALLED=$((INSTALLED + 1))
fi

echo ""
if [ $INSTALLED -eq 0 ]; then
  echo "No supported tools detected."
  echo ""
  echo "Install one of these first:"
  echo "  • Amp: https://ampcode.com"
  echo "  • Claude Code: https://claude.ai/code"
  echo "  • Cursor: https://cursor.com"
  echo "  • OpenCode: https://opencode.ai"
  exit 1
fi

echo "Done! Ask your agent to \"write a spec\" to use."
