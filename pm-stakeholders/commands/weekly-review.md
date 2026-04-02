---
description: Run a structured weekly PM review covering metrics, shipping progress, blockers, and next priorities
argument-hint: "<optional context — team, product area, or week ending date>"
---

# /weekly-review -- Weekly PM Review

Run a structured 20-minute weekly review. Takes inputs on what happened, surfaces patterns, flags risks, and produces a clean summary you can share or use to write your stakeholder update.

## Invocation

```
/weekly-review
/weekly-review Connections Platform — week ending April 4
/weekly-review [paste notes, sprint board screenshot, or Slack recap]
```

## Workflow

### Step 1: Gather the Week's Inputs
Ask the user to share any or all of:
- Metrics that moved (up or down)
- What shipped or didn't
- Decisions made
- Blockers or fires
- Key conversations

If nothing is provided, prompt with these questions:
1. "What were the 1-2 most important things that happened this week?"
2. "What shipped? What slipped and why?"
3. "What's the biggest blocker or risk heading into next week?"
4. "Any metric movements worth noting?"

### Step 2: Produce the Weekly Review

```
## Weekly PM Review — [Week Ending Date]

### This Week's Highlights
- [Most important thing that happened — 1 bullet]
- [Second important thing — 1 bullet]

### Shipped
| Feature / Initiative | Status | Notes |
|---|---|---|
| [Item] | Shipped ✅ / Slipped ⚠️ / Blocked 🔴 | [Brief note] |

### Metrics
| Metric | This Week | Last Week | Trend | Signal |
|---|---|---|---|---|
| [Metric] | [Value] | [Value] | ↑↓→ | 🟢🟡🔴 |

### Decisions Made
- [Decision + rationale + who decided]

### Blockers & Risks
| Blocker | Impact | Owner | ETA to Resolve |
|---|---|---|---|
| [Blocker] | High/Med/Low | [Who] | [Date] |

### Next Week's Priorities
1. [P0 — must move forward]
2. [P1 — should happen]
3. [P2 — if capacity allows]

### Patterns & Flags
[Any recurring theme, early warning sign, or trend worth naming — the stuff that doesn't fit neatly in a table]
```

### Step 3: Identify the One Thing
Surface the single most important thing to resolve or advance next week. This becomes the anchor for the following week's review.

## Notes
- Do this every Friday — the discipline of writing it down is as valuable as the output
- The "Patterns & Flags" section is where the real PM thinking happens — don't skip it
- Pair with `/update` to turn this review into a stakeholder communication
- Pair with `/analyze` if a metric movement needs investigation
