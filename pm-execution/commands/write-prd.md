---
description: Write a complete Product Requirements Document from a problem statement or feature idea
argument-hint: "<feature name or problem statement>"
---

# /write-prd -- Product Requirements Document

Turn a feature idea, problem statement, or brief into a full PRD that aligns stakeholders and gives engineering and design what they need to build.

## Invocation

```
/write-prd Weekly Insights email for Bitly users
/write-prd Users can't find their best-performing links — surface them automatically
/write-prd [paste a feature brief, research summary, or Slack thread]
/write-prd                    # interactive mode — asks what you're building
```

## Workflow

### Step 1: Clarify the Problem
If the input is vague, ask:
- "What user problem does this solve?"
- "Who is the primary user?"
- "What does success look like — how will you measure it?"
- "What is explicitly out of scope?"

Don't proceed to drafting until you have a clear problem statement.

### Step 2: Draft the PRD

```
## PRD: [Feature Name]

**Status:** Draft
**Author:** [Name]
**Last Updated:** [Date]

---

### Overview
**Problem Statement:** [1-2 sentences — what user pain or opportunity this addresses]
**Proposed Solution:** [High-level description of what we're building]
**Why Now:** [Strategic context — why this is the right time]

---

### Goals & Success Metrics
| Goal | Metric | Target | Timeframe |
|---|---|---|---|
| [Goal] | [How measured] | [Number] | [e.g., 90 days post-launch] |

**Non-Goals:** [What this feature explicitly does not do]

---

### Background & Context
**User Research:** [Key findings that support this feature]
**Strategic Alignment:** [How this fits the roadmap or company goals]
**Constraints:** [Tech, legal, resource, or timeline constraints]

---

### User Stories
As a [user type], I want to [action] so that [outcome].

**P0 — Must Have:**
- [ ] [User story with acceptance criteria]

**P1 — Should Have:**
- [ ] [User story with acceptance criteria]

**P2 — Nice to Have:**
- [ ] [User story with acceptance criteria]

---

### Functional Requirements
[Numbered list of specific, testable requirements]
1.
2.
3.

### Non-Functional Requirements
- Performance: [e.g., page load < 2s]
- Security: [e.g., data handling requirements]
- Accessibility: [e.g., WCAG 2.1 AA]

---

### Design & UX
[Key interaction patterns, edge cases, error states to address]

---

### Technical Considerations
[Known dependencies, API changes, data model implications, risks]

---

### Open Questions
| Question | Owner | Due |
|---|---|---|
| [Question] | [Who decides] | [Date] |

---

### Launch Plan
- **Rollout:** [Phased / full launch / flag-gated]
- **Success Review:** [When and how you'll assess post-launch metrics]
```

### Step 3: Review
Ask the user if anything is missing or needs adjusting. Offer to expand any section.

## Notes
- Requirements must be testable — if you can't write a test for it, rewrite it
- Always include non-goals — they prevent scope creep
- Pair with `/prioritize` if the P0/P1/P2 breakdown needs validation
- Pair with `/design-review` to create the design handoff brief from this PRD
