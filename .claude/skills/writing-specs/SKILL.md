---
name: writing-specs
description: Writes feature specification documents from user requirements. Use when asked to write a spec, create a spec, draft a feature spec, or document a new feature.
---

# Writing Feature Specs

Guides the creation of comprehensive feature specification documents through structured research and user interviews.

## Workflow

### 1. Gather Requirements

Ask the user:
- What is the feature we are building?
- What problem are we solving?
- Who asked for this / user feedback if any?
- Any constraints: timeline, dependencies, etc.?
- What is the local path for the backend, frontend and documentation?

### 2. Clarify the Data Model

Before assuming domain terms, clarify:
- What entities exist and how do they relate?
- Are there similar-sounding concepts that are actually distinct? (e.g., User vs Membership, Account vs Organization)
- Ask the user to confirm your understanding before proceeding

### 3. Research (do in parallel)

Before writing the spec, research:

1. **Explore existing system** - Search the codebase to understand current architecture
2. **External API/integration docs** - Read official docs if applicable
3. **Similar features** - Find prior art for consistency and patterns

Search these directories for relevant information:
- Backend source code in the local path from earlier
- Frontend source code in the local path from earlier
- Documentation directories in the local path from earlier
- Any other related files or directories from earlier

### 4. Write the Spec

Use the template at `templates/spec.md` in this skill directory.

Output the spec to the project's specs directory (e.g., `.specs/[FEATURE-NAME].md` or `specs/[FEATURE-NAME].md`).

## Code References

For references to code files, use GitHub URLs (not local file:// URLs):
- Get the repo URL from `git remote get-url origin`
- Use format: `https://github.com/{org}/{repo}/blob/{branch}/{path}#L{line}-L{line}`

## Minimize Implementation Details

- Describe the contract (what), not the implementation (how)
- Use JSON schema for data models, not internal formats like protobuf
- Omit infrastructure choices (databases, queues, frameworks) unless they constrain the design
- If an implementation detail is necessary, explain why it matters to the reader

## Design Principles

Always remember:
- Start from user goals and tasks, not screens
- Design the smallest useful version that can be shipped
- Avoid implying future functionality that is not committed

## Frontend Design Rules

Apply these rules ONLY for frontend/UI features:

**Hierarchy & Structure:**
- Treat hierarchy as the primary UX tool - decide what matters most on every screen
- Use constraints to reduce complexity and decision fatigue
- Separate semantic correctness from visual importance
- Prefer clarity and scannability over completeness

**User Actions:**
- Explicitly identify primary, secondary, and tertiary user actions
- Describe what information users must notice first and why
- Do not assume the user will understand the feature

**Iteration:**
- Assume designs will be iterated after real usage
- Recommend when to defer design decisions until implementation feedback exists
- Call out assumptions, risks, and unknowns instead of masking them with UI
- Optimize for learnability and reduction of cognitive load
