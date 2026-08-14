# Product Strategy

Two phases: **Build** creates a structured product strategy from a product area or opportunity, **Critique** plays devil's advocate on an existing strategy to surface gaps before it's presented — checked against the same six strategic dimensions either way.

## The Six Strategic Dimensions

Every strategy — built or critiqued — must address:
1. Target audience
2. Problem to solve
3. Value proposition
4. Competitive advantage / strategic differentiation
5. Growth strategy / channel strategy
6. Business model / monetization strategy

## Phase 1: Build

### Step 1: Gather Context

Ask if not provided:
- "What product or feature area is this strategy for?"
- "What is the time horizon?" (quarterly, annual, 3-year)
- "What business goal does this need to serve?"

### Step 2: Build the Strategy

```markdown
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

### Monetization
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

Once built, offer: "Want me to stress-test this now with the Critique phase before you take it further?"

---

## Phase 2: Critique

Play devil's advocate. Don't be nice. Point out in detail why the strategy may not work, what questions remain unaddressed, and where it falls short. The goal is NOT to rewrite the strategy — it's to surface exactly what's wrong and where it could be stronger.

### Step 1: Verify Coverage of the Six Dimensions

Check whether the strategy addresses each of the six dimensions above. If a dimension is left unaddressed, call it out clearly — an unaddressed dimension is itself a finding.

### Step 2: Critique Each Dimension

Read the relevant best-practices reference file for each dimension and use it as the benchmark for what "good" looks like:
- `references/product-strategy-best-practices/what-great-product-strategy-looks-like.md`
- `references/product-strategy-best-practices/target-audience.md`
- `references/product-strategy-best-practices/problem-youre-solving.md`
- `references/product-strategy-best-practices/value-proposition.md`
- `references/product-strategy-best-practices/strategic-differentiation.md`
- `references/product-strategy-best-practices/channel-strategy.md`
- `references/product-strategy-best-practices/monetization-strategy.md`

Be specific — quote or paraphrase the strategy when calling out weaknesses so the author knows exactly what's being critiqued.

### Step 3: Produce the Critique

```markdown
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
| Monetization | | | |

### Hardest Questions to Answer
1. [The question this strategy can't currently answer]
2. [The assumption that would break everything if wrong]
3. [The competitive move that would invalidate this]

### Recommendations to Strengthen
1. [Specific improvement to address the biggest gap]
2. [Specific improvement]
```

### Step 4: Summarize Key Critiques

Prioritize the 3-5 most serious issues — the ones most likely to cause the strategy to fail if left unaddressed. Be direct.

### Step 5: Save the Critique

Save into a markdown file in the same directory as the original strategy, same filename with `-critique` appended. E.g. `strategy.md` → `strategy-critique.md`.

## Guidelines

- In critique mode, be direct — diplomatic vagueness doesn't help
- Pair Build output with `pm-strategy`'s Roadmap Narrative mode to turn strategy into a narrative
- Competitive context (from `pm-discovery`'s Competitive Intelligence mode) strengthens both Build and Critique but is optional
