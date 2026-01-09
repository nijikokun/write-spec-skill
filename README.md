# Writing Specs Skill

A skill for writing feature specification documents. Works with both [Amp](https://ampcode.com) and [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## Installation

### Amp

```bash
amp skill add nijikokun/write-spec-skill
```

### Claude Code

Copy the `.claude/skills/writing-specs/` directory to your project's `.claude/skills/` folder, or to `~/.claude/skills/` for global access.

## Usage

Once installed, the skill will automatically load when you ask to write a spec. Examples:

- "Write a spec for the new users API"
- "Create a feature spec for dark mode"
- "Draft a spec for the billing integration"

The skill will:
1. Ask clarifying questions about the feature
2. Research the existing codebase
3. Generate a comprehensive spec using the included template

## Customization

Fork this repo and modify the template at `templates/spec.md` in either:
- `.agents/skills/writing-specs/` (Amp)
- `.claude/skills/writing-specs/` (Claude Code)
