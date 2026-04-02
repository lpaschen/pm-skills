---
description: Write a stakeholder update or executive brief tailored to audience, cadence, and communication goal
argument-hint: "[exec|team|leadership|launch] <topic or progress summary>"
---

# /update -- Stakeholder Update & Executive Brief

Generate a targeted stakeholder update — whether it's a weekly status, an executive brief, a launch announcement, or an escalation.

## Invocation

```
/update exec Q1 progress on Insights and Analytics features
/update team Sprint 14 completed — shipped 3 features, 1 slipped
/update launch Weekly Insights email is now live
/update escalation Engineering capacity cut is blocking Q2 roadmap
/update                    # asks who you're writing to and what you need to communicate
```

## Workflow

### Step 1: Establish the Context
If not provided, ask:
- "Who is the audience?" (exec, leadership team, cross-functional team, board)
- "What is the primary goal?" (inform, align, escalate, celebrate)
- "What is the cadence?" (weekly, monthly, one-time announcement)

### Step 2: Generate the Update

#### Executive Brief (for C-suite or VP+)
```
## [Topic] — [Date]

**Bottom Line:** [1 sentence — the most important thing they need to know]

**Status:** On Track / At Risk / Off Track

### What's Happening
[2-3 bullets — only what's materially changed or decided since the last update]

### Numbers That Matter
- [Metric]: [value, trend vs. last period]
- [Metric]: [value, trend vs. last period]

### Decisions Needed
- [Decision] — [context, options, recommendation, deadline]

### Risks
- [Risk] — [likelihood, impact, mitigation]
```

#### Team / Cross-Functional Update
```
## [Team/Project] Update — [Date or Sprint]

### Shipped
- [Feature or milestone] — [brief description + link if applicable]

### In Progress
- [Item] — [status, owner, ETA]

### Blocked / At Risk
- [Item] — [blocker, who needs to act, by when]

### Next Up
- [What's starting next sprint or week]

### Metrics
- [Key metric]: [value + trend]
```

#### Launch Announcement
```
## [Feature Name] is Live — [Date]

**What it does:** [1-2 sentences on user value]
**Who has it:** [Rollout scope — all users, beta, specific segment]
**Where to learn more:** [Link to help doc, demo, or one-pager]

**Early signal:** [First data point if available — even directional]

**What to watch:** [Metric we're tracking in the next 2 weeks]

**Thank you to:** [Key contributors]
```

#### Escalation
```
## Escalation: [Issue] — [Date]

**Issue:** [What is at risk and by how much]
**Impact:** [What happens if unresolved — user impact, revenue, timeline]
**Root Cause:** [Why this is happening]
**Options:**
1. [Option] — [trade-off]
2. [Option] — [trade-off]
**Recommendation:** [What you're asking for]
**Decision needed by:** [Date]
```

## Notes
- Exec briefs should lead with the bottom line — never bury the headline
- For escalations, come with options and a recommendation, not just a problem
- Pair with `/weekly-review` to gather the inputs before writing the update
