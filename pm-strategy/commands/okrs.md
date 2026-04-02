---
description: Build well-structured OKRs or review existing ones for quality, measurability, and strategic alignment
argument-hint: "[build|review] <goal, product area, or existing OKRs>"
---

# /okrs -- OKR Builder & Reviewer

Two modes: **build** creates a set of OKRs from a strategic goal or product area, **review** critiques existing OKRs for quality — ambition, measurability, and alignment.

## Invocation

```
/okrs build Grow Bitly Insights engagement among paid users in Q2
/okrs build [paste strategy doc or initiative list]
/okrs review [paste existing OKRs]
/okrs                    # asks which mode you need
```

## Modes

### Build Mode

#### Step 1: Clarify the Goal
Ask if not provided:
- "What is the strategic outcome you're trying to drive?"
- "What time period are these OKRs for?"
- "Are these team-level, product-level, or company-level OKRs?"

#### Step 2: Draft the OKRs

Good OKRs follow these rules:
- **Objective**: Qualitative, inspiring, memorable — answers "where are we going?"
- **Key Results**: Quantitative, time-bound, outcome-focused (not output) — answers "how do we know we got there?"
- 1 objective, 2-4 key results
- Key results measure outcomes, not activities

```
## OKRs: [Team / Product Area] — [Quarter/Year]

---

**Objective:** [Inspiring, direction-setting statement of what you're trying to achieve]

**Key Results:**
1. [Metric] [increases/decreases] from [baseline] to [target] by [date]
2. [Metric] [increases/decreases] from [baseline] to [target] by [date]
3. [Metric] [increases/decreases] from [baseline] to [target] by [date]

**Why this objective:** [1-2 sentences on strategic rationale]
**Key initiatives that will drive this:** [Bullet list of what you'll build or do]
**Confidence:** [High / Medium / Low — and why]

---
```

Repeat for each objective (recommend 2-3 max).

---

### Review Mode

Evaluate existing OKRs against five quality criteria.

#### Step 1: Parse the OKRs
Read what's provided and assess each objective and key result.

#### Step 2: Produce the Review

```
## OKR Review: [Team / Product Area]

### Overall Assessment
[Are these OKRs coherent, ambitious, and measurable? What's the biggest issue?]

### Objective Quality
| Objective | Inspiring? | Clear Direction? | Issues |
|---|---|---|---|
| [Objective] | ✅/❌ | ✅/❌ | [What's wrong if anything] |

### Key Result Quality
| Key Result | Outcome (not output)? | Measurable? | Ambitious? | Issues |
|---|---|---|---|---|
| [KR] | ✅/❌ | ✅/❌ | ✅/❌ | [What's wrong] |

### Common Issues Found
- [ ] KRs are activities ("launch X") not outcomes ("X users do Y")
- [ ] No baseline stated — can't measure progress
- [ ] Target is too easy / too vague
- [ ] Objective is strategic but KRs don't connect to it

### Suggested Rewrites
| Original | Suggested Revision | Why Better |
|---|---|---|
| [Original KR] | [Revised KR] | [What this fixes] |
```

## Notes
- The most common OKR mistake: key results that are project milestones, not metric movements
- "Launch X" is never a key result — what does launching X cause users to do differently?
- Pair build output with `/strategy` if the objectives don't map to a clear strategic thesis
- Pair build output with `/roadmap` to connect OKRs to the initiatives that will drive them
