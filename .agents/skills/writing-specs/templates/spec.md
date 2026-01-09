# [Feature Name]

**Status:** Draft | In Review | Approved | In Progress | Complete  
**Author:** [Name]  
**Created:** [Date]  
**Target:** [Quarter/Date]  

---

## Summary

One sentence describing what we're building and the key value proposition.

## Problem Statement

**What's broken or missing today:**
- Concrete pain point 1
- Concrete pain point 2

**User Feedback:**

> "Direct quote from user or customer that captures the real need."

> "Another quote if available - these justify design decisions."

**Who is affected:** [User segment, persona, or use case]

## Goals

1. Specific, measurable outcome
2. Another specific outcome
3. Keep to 3-5 goals max

## Non-Goals (v1)

Explicitly state what we're NOT doing to prevent scope creep:
- Feature X (reason: too complex for v1)
- Integration Y (reason: low demand)
- Edge case Z (reason: defer until validated)

---

## Technical Specification

### Key Concepts

Define any domain terms or concepts the reader needs to understand.

### Data Model

Define the public API data structures in JSON schema format (not internal implementation like protobuf):

```json
{
  "id": "string (prefix_ format)",
  "uri": "string (API resource URL)",
  "field": "type (description)"
}
```

### Endpoints

| Method | Path | Description |
|--------|------|-------------|
| GET | `/resource/{id}` | Get by ID |
| GET | `/resource` | List all |

### Behavior

Describe how it works, edge cases, error handling.

---

## API Design (for public API specs)

> **Include this section when the spec involves public-facing API endpoints.**

### [Endpoint Name]

**Request:**
```
[METHOD] /path/{id}
```

**Response:**
```json
{
  "id": "example_id",
  "uri": "https://api.ngrok.com/resource/example_id",
  "field": "value"
}
```

### [Another Endpoint]

**Request:**
```
[METHOD] /path?param=value
```

**Response:**
```json
{
  "items": [],
  "uri": "https://api.ngrok.com/resource",
  "next_page_uri": null
}
```

### Errors

> Error codes are iota-based and assigned during implementation. Describe the conditions and messages here.

| Condition | Status | Message |
|-----------|--------|---------|
| Resource not found | 404 | "[Resource] not found" |
| User lacks permission | 403 | "You do not have permission to [action]" |
| Invalid input | 400 | "[Field] is invalid: [reason]" |

**Notes:**
- Standard auth errors (401, rate limiting) are handled by middleware
- New error codes will be assigned when implemented

---

## Architecture

### Design Principles

State the key insight that drives the design:

> **Principle:** [e.g., "Passthrough, not translation" or "Fail fast, recover gracefully"]

Why this principle matters for this feature.

### Components Affected

| Component | Change Type | Description |
|-----------|-------------|-------------|
| `path/to/file.go` | Modify | Add X handling |
| `path/to/new.go` | New | Implements Y |
| `config/thing.yaml` | Modify | Add Z field |

### System Flow

```
┌─────────┐     ┌─────────┐     ┌─────────┐
│  Input  │────▶│ Process │────▶│ Output  │
└─────────┘     └─────────┘     └─────────┘
```

### What Changes vs What Stays the Same

| Aspect | Changes? | Notes |
|--------|----------|-------|
| Thing A | ❌ No | Unchanged |
| Thing B | ✅ Yes | New behavior |
| Thing C | ⚠️ Minimal | Only X modified |

---

## Configuration

Show how users configure this feature:

```yaml
# Example configuration
feature:
  enabled: true
  option: "value"
```

**Backward compatibility:** [Describe impact on existing configs]

---

## Observability

### Metrics
- `metric.name` - Description

### Logs
- What gets logged and when

### Debugging
- How to troubleshoot issues

---

## Acceptance Criteria

What must be true for this feature to be considered complete:

- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

### Edge Cases

| Scenario | Expected Behavior |
|----------|-------------------|
| Edge case 1 | How the system should respond |
| Edge case 2 | How the system should respond |

---

## Documentation Requirements

1. User-facing doc 1
2. User-facing doc 2

---

## Open Questions

1. **Question:** [Describe the decision to be made]
   - Option A: [Tradeoffs]
   - Option B: [Tradeoffs]
   - **Recommendation:** [Your suggestion]

2. **Question:** [Another decision]
   - **Recommendation:** [Your suggestion]

---

## Success Metrics

How we know this shipped successfully:
- Metric 1 (quantitative if possible)
- Metric 2
- Metric 3

---

## References

- [Link to relevant doc](url)
- [Link to related code](file path)
- [Link to prior art](url)

---

# Appendix: How to Write a Good Spec

## Research Phase (do in parallel)

1. **Explore existing system** - Read code to understand current architecture and constraints
2. **Research external dependencies** - Read official docs for APIs, libraries, integrations
3. **Find prior art** - Check for similar features to ensure consistency and learn patterns

## Capture User Context

- **Get direct quotes** - Real user words are more compelling than paraphrasing
- **Identify the real problem** - Often different from the surface request
- **Understand constraints** - Timeline, resources, dependencies

## Structure Tips

| Section | Purpose |
|---------|---------|
| Summary | Elevator pitch - what and why in one sentence |
| Problem | Justify why this matters with evidence |
| Goals | Scope in - what we WILL do |
| Non-Goals | Scope out - prevent creep |
| Technical Spec | Reference for engineers |
| Architecture | Principles first, then implementation |
| What Changes | Build trust by showing minimal footprint |
| Acceptance Criteria | Define done, capture edge cases |
| Open Questions | Show you've thought about tradeoffs |

## Common Pitfalls

- ❌ Starting with solution before understanding problem
- ❌ Vague goals ("improve performance")
- ❌ No non-goals (everything becomes in scope)
- ❌ Open questions without recommendations
- ❌ No user quotes or evidence
- ❌ Vague acceptance criteria ("it works")

## Iteration

- Challenge your own scope ("are we doing more than similar features?")
- Simplify based on feedback
- Update timeline when scope changes
- Re-read user quotes to stay grounded
