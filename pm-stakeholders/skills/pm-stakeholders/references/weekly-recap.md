# Weekly Recap

A personal 20-minute ritual that synthesizes metrics, shipping progress, blockers, and priorities into a structured recap. This is for your own thinking first — it becomes the raw material for a stakeholder update, not a replacement for one.

## Core Structure (20 minutes)

- **5 min — Metrics:** Track movement and surprises
- **5 min — Shipping:** Document shipped items, slips, and blockers
- **5 min — Insights:** Capture customer feedback and research findings
- **5 min — Priorities:** Identify three critical next-week focuses

## Process

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

### Step 2: Produce the Recap

```markdown
## Weekly PM Recap — [Week Ending Date]

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

### Insights & Signals
- **Customer feedback:** [What came up]
- **Support signals:** [What came up]
- **Research / data:** [What came up]

### Next Week's Priorities
1. [P0 — must move forward]
2. [P1 — should happen]
3. [P2 — if capacity allows]

### Patterns & Flags
[Any recurring theme, early warning sign, or trend worth naming — the stuff that doesn't fit neatly in a table]
```

### Step 3: Identify the One Thing

Surface the single most important thing to resolve or advance next week. This becomes the anchor for the following week's recap.

## Critical Guidelines

- Keep the recap under 400 words if any part of it will be shared beyond you
- Assign an explicit owner to every blocked item — "the team will figure it out" is a blocker in disguise
- Do this every Friday, not Monday morning — the discipline of writing it down in the moment is as valuable as the output
- Escalate any blocker that appears three consecutive weeks
- The "Patterns & Flags" section is where the real PM thinking happens — don't skip it
- If this recap needs to go to stakeholders, feed it into the **Write a Stakeholder Update** mode rather than sending it as-is
