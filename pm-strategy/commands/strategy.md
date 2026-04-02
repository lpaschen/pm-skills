---
description: Build a product strategy or stress-test an existing one — identify gaps in audience, differentiation, growth, and monetisation
argument-hint: "[build|critique] <product, initiative, or strategy doc>"
---

# /strategy -- Product Strategy Development & Critique

Two modes: **build** creates a structured product strategy from a product area or opportunity, **critique** plays devil's advocate on an existing strategy to surface gaps before you present it.

## Invocation

```
/strategy build Bitly Assist — AI features for link management
/strategy build [paste opportunity brief or vision doc]
/strategy critique [paste strategy doc or slide deck content]
/strategy critique Our strategy is to go upmarket with enterprise analytics
/strategy                    # asks which mode you need
```

## Modes

### Build Mode

#### Step 1: Gather Context
Ask if not provided:
- "What product or feature area is this strategy for?"
- "What is the time horizon?" (quarterly, annual, 3-year)
- "What business goal does this need to serve?"

#### Step 2: Build the Strategy

```
## Product Strategy: [Product / Initiative]
**Horizon:** [Time period]

### Situation
[Where we are now — current state of the product, market, and users]

### Target Audience
**Primary:** [Who we're building for — segment, profile, JTBD]
**Secondary:** [Adjacent users who benefit]
**Not targeting (this cycle):** [Who we're explicitly deprioritising]

### Problem to Solve
[The specific user and business problem this strategy addresses]

### Strategic Bets
1. [Bet 1] — [Why this, why now, what we'd need to believe]
2. [Bet 2] — [Why this, why now, what we'd need to believe]
3. [Bet 3] — [Why this, why now, what we'd need to believe]

### Differentiation
[What makes this defensible — why can't a competitor copy this in 6 months?]

### Growth Model
[How this product grows — acquisition loop, retention driver, expansion motion]

### Monetisation
[How this creates or expands revenue — new tier, upsell, retention impact]

### Success Metrics
| Objective | Metric | 12-month Target |
|---|---|---|
| [Objective] | [Metric] | [Target] |

### Key Risks
| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| [Risk] | H/M/L | H/M/L | [How you'd address it] |
```

---

### Critique Mode

Play devil's advocate. Find every gap before stakeholders do.

#### Step 1: Parse the Strategy
Read what's provided and map it against the six strategy dimensions.

#### Step 2: Produce the Critique

```
## Strategy Critique: [Product / Initiative]

### Overall Assessment
[1-2 sentences — is the strategy coherent? What's its biggest vulnerability?]

### Gap Analysis
| Dimension | Strength | Gap | Risk Level |
|---|---|---|---|
| Target Audience | | | 🔴/🟡/🟢 |
| Problem Definition | | | |
| Value Proposition | | | |
| Differentiation | | | |
| Growth Model | | | |
| Monetisation | | | |

### Hardest Questions to Answer
1. [The question this strategy can't currently answer]
2. [The assumption that would break everything if wrong]
3. [The competitive move that would invalidate this]

### Recommendations to Strengthen
1. [Specific improvement to address the biggest gap]
2. [Specific improvement]
```

## Notes
- In critique mode, be direct — diplomatic vagueness doesn't help
- Pair build output with `/roadmap` to turn strategy into a narrative
- Pair build output with `/okrs` to translate bets into measurable objectives
