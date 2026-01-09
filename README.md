# Writing Specs Skill

An [Amp](https://ampcode.com) skill for writing feature specification documents.

## Installation

Add this to your project's `.agents/skills.json`:

```json
{
  "github.com/YOUR_ORG/write-spec-skill": {}
}
```

Or for a specific version:

```json
{
  "github.com/YOUR_ORG/write-spec-skill@v1.0.0": {}
}
```

## Usage

Once installed, Amp will automatically load this skill when you ask it to write a spec. Examples:

- "Write a spec for the new users API"
- "Create a feature spec for dark mode"
- "Draft a spec for the billing integration"

The skill will:
1. Ask clarifying questions about the feature
2. Research the existing codebase
3. Generate a comprehensive spec using the included template

## Customization

To customize the template, fork this repo and modify `.agents/skills/writing-specs/templates/spec.md`.
