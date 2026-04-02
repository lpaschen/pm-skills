---
description: Critique a design using UX heuristics or create a structured handoff brief for designers
argument-hint: "[critique|handoff] <design description or feature brief>"
---

# /design-review -- Design Critique & Handoff

Two modes: **critique** evaluates a design against UX principles and job-to-be-done alignment, **handoff** creates a structured brief that gives designers the context and constraints they need to start.

## Invocation

```
/design-review critique [paste design description, Figma link, or screenshot]
/design-review handoff New link creation flow for mobile
/design-review handoff [paste feature brief or PRD section]
/design-review                    # asks which mode you need
```

## Modes

### Critique Mode

Evaluate the design across three lenses:

#### Step 1: Gather Context
Ask for the user's job-to-be-done, the design being reviewed, and the intended user type if not provided.

#### Step 2: Produce the Critique

```
## Design Critique: [Feature/Screen Name]

### JTBD Alignment
[Does the design solve the user's actual job? Where does it miss?]

### Nielsen's Heuristics Assessment
| Heuristic | Pass/Fail | Notes |
|---|---|---|
| Visibility of system status | | |
| Match between system and real world | | |
| User control and freedom | | |
| Consistency and standards | | |
| Error prevention | | |
| Recognition over recall | | |
| Flexibility and efficiency | | |
| Aesthetic and minimalist design | | |
| Help users recognize/recover from errors | | |
| Help and documentation | | |

### Gestalt Principles
[Proximity, similarity, continuity, closure — what's working and what's creating confusion]

### Top 3 Issues (P0 → P2)
1. [Most critical issue + suggested fix]
2. [Second issue + suggested fix]
3. [Third issue + suggested fix]

### What's Working Well
[Specific elements that are strong and should be preserved]
```

---

### Handoff Mode

#### Step 1: Clarify the Feature
If only a feature name is provided, ask for: user problem, target user, success metric, and any known constraints.

#### Step 2: Generate the Handoff Brief

```
## Design Handoff Brief: [Feature Name]

**User Problem:** [1-2 sentences on what the user is trying to accomplish and where they currently struggle]

**Target User:** [Who this is for — segment, plan type, use case]

**Job to Be Done:** When [situation], I want to [motivation], so I can [outcome].

**Success Looks Like:** [How we'll know the design worked — metric or behaviour]

**Scope:** [What's in and explicitly what's out]

**Key User Flows:**
1. [Primary flow]
2. [Edge case or secondary flow]

**Constraints:**
- Tech: [Known technical constraints]
- Brand/design system: [Components or patterns to follow]
- Timeline: [Hard deadline if any]

**Open Questions for Design:**
1. [Question the designer needs to resolve]
2. [Question the designer needs to resolve]

**References:** [Existing patterns, competitor examples, research findings]
```

## Notes
- For critique mode, be specific — vague feedback is not actionable
- For handoff mode, incomplete briefs produce bad designs — push back if context is missing
- Pair critique output with `/write-prd` if issues reveal requirement gaps
