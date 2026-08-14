# Product Strategy

Two phases: **Build** creates a product strategy from a blank page using the Foundation Sprint's forced-specificity method, **Critique** plays devil's advocate on an existing strategy to surface gaps before it's presented — checked against six strategic dimensions.

## Phase 1: Build

For when there's no strategy yet to critique — this builds one from a blank page, using the Foundation Sprint's core method: force every answer to be specific enough to act on, reject anything generic, and bundle the result into one coherent frame instead of four separate opinions.

### The Four Decisions

Work through these in order. Each one gets rejected and re-asked if it's vague — don't accept a weak answer just to keep moving.

**1. Target Customer**

Not a demographic ("SaaS teams"). A specific, recognizable person or segment with markers: role, context, scale. "PMs at Series B-C SaaS companies managing 3+ product lines" passes. "Product managers" doesn't — ask for markers until it does.

**2. Important Problem**

A pain strong enough that the customer would actually switch away from what they do today — including doing nothing. Ask directly: "What do they do instead right now, and why would they leave it for this?" If the honest answer is "it's a mild annoyance," this isn't an important problem yet — keep pushing on it or pick a different one.

**3. Team/Company Advantage**

Not "we have a great team" or "we move fast" — those get rejected. Specific, evidenced edges: a capability, a relationship, a distribution channel, data no one else has, timing. Ask for the concrete version: not "we're customer-obsessed" but "we've run 40 customer interviews on this exact problem and no competitor has talked to more than 5."

**4. Competitor and Alternative Map**

Map direct competitors, substitute workflows, manual workarounds, and — always include this one — doing nothing. For each, note why customers use it and why they'd leave. Doing nothing is usually the strongest competitor and the most commonly forgotten one.

### Bundling

Don't hand these back as four separate answers. Check they cohere: does the team's advantage actually address the customer's important problem better than the alternatives they're using today? If the four pieces don't reinforce each other, that's a finding, not a formality — flag it and revisit whichever piece is weakest before moving on.

### Output

A one-page strategic frame: target customer, important problem, team advantage, and the alternative map, plus one line on why this combination wins against the current best alternative (including doing nothing). This is the input to `shape-up`'s Pitch mode — the "Problem" and differentiation sections of a pitch should draw directly from this frame rather than being redrafted from scratch.

### Common Pitfalls

Accepting a vague target customer or generic advantage because pushing back feels like friction — the whole value of this method is refusing to move on until each answer is specific enough to be wrong in a useful way. Skipping "doing nothing" in the alternative map. Treating the four decisions as independent instead of checking whether they actually cohere as one strategy.

Once built, offer: "Want me to stress-test this now with the Critique phase before you take it to a pitch?"

---

## Phase 2: Critique

Play devil's advocate. Don't be nice. Point out in detail why the strategy may not work, what questions remain unaddressed, and where it falls short. The goal is NOT to rewrite the strategy — it's to surface exactly what's wrong and where it could be stronger.

### Step 1: Verify Coverage of the Six Dimensions

Check whether the strategy addresses each of the following (regardless of which method built it):
1. Target audience
2. Problem to solve
3. Value proposition
4. Competitive advantage / strategic differentiation
5. Growth strategy / channel strategy
6. Business model / monetization strategy

If a dimension is left unaddressed, call it out clearly — an unaddressed dimension is itself a finding.

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
