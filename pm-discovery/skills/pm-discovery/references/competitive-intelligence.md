# Competitive Intelligence

Two sub-modes: **Analyze** maps the full competitive landscape as a one-time deep dive, **Track** surfaces recent competitor signals on an ongoing basis — including precise pricing-page tracking when needed.

## Sub-Mode: Analyze

Research and analyze the competitive landscape — identify competitors, compare strengths and weaknesses, map positioning, and surface differentiation opportunities.

### Step 1: Scope the Analysis

Ask if not provided:
- **What is your product?** What category does it compete in?
- **Which competitors?** Specific ones to analyze, or should I identify them?
- **What lens?** Feature comparison, positioning, pricing, go-to-market, or full landscape?
- **What's this for?** Product strategy, sales enablement, investor/board materials, or roadmap prioritization?

### Step 2: Identify the Competitive Set

Map competitors at multiple levels:
- **Direct**: Same problem, same buyer, same approach
- **Indirect**: Same problem, different approach (e.g., spreadsheets vs. a dedicated tool)
- **Adjacent**: Don't compete today but could
- **Substitutes**: Entirely different ways users solve the underlying need (hiring a person, doing nothing, a manual process)

Identify ~5 direct competitors and 2–3 indirect or adjacent players. Note emerging or disruptive entrants.

### Step 3: Research Each Competitor

**Sources:** product/pricing pages, recent blog posts/changelogs/press releases, G2/Capterra/TrustRadius reviews, job postings (hiring ML engineers signals AI investment), funding announcements, social/community discussion. If Slack is connected, search for competitive mentions in product/sales channels. If a knowledge base is connected, search for prior win/loss reports or battle cards.

For each competitor, gather: company summary, positioning, recent momentum, pricing model, strengths (evidence-based), weaknesses (evidence-based, be honest).

### Step 4: Generate the Analysis

```markdown
## Competitive Analysis: [Category]

### Landscape Overview
[2-3 sentences on market structure — fragmented vs. consolidated, who leads, where it's moving]

### Competitor Profiles
| Company | Target Segment | Core Value Prop | Pricing Model | Key Strengths | Weaknesses |
|---|---|---|---|---|---|

### Feature Comparison
| Capability | [Your Product] | [Competitor 1] | [Competitor 2] | [Competitor 3] |
|---|---|---|---|---|

Rate as Strong / Adequate / Weak / Absent, based on real product experience and reviews — not marketing claims. Weight by what matters to your target customers, not total feature count.

### Positioning Map
[2×2 matrix on the dimensions most relevant to your market]

### Differentiation Opportunities
1. [Opportunity] — [why it's defensible, which competitors miss it]

### Strategic Risks
- [Competitor move that would most threaten your position]

### Recommended Actions
1. [Specific product or positioning response]
2. [Area to monitor closely]
```

### Step 5: Offer Next Steps

- "Want a sales battle card for a specific competitor?"
- "Should I draft a 'how to win against [competitor]' guide?"
- "Want positioning or messaging that differentiates from the top competitors?" (pair with `pm-strategy`'s positioning-statement mode)
- "Should I identify feature gaps to close and suggest roadmap priorities?"

### Reference Frameworks (Analyze mode)

**Positioning Statement Analysis** — extract each competitor's positioning: *For [target customer] who [need/problem], [Product] is a [category] that [key benefit]. Unlike [alternatives], [Product] [key differentiator].* Sources: homepage headline, app store descriptions, analyst briefings. Look for unclaimed positions, crowded claims that have lost meaning, vulnerable positions competitors can't fully deliver on.

**Win/Loss Analysis** (if data available) — the most actionable competitive intelligence. For wins: what alternatives did they evaluate, why did they choose us, what almost swayed them elsewhere? For losses: what did they choose instead and why, where did we fall short, would they reconsider? Common patterns: feature gap, integration advantage, pricing fit, incumbent advantage, sales execution, brand/trust.

**Market Trend Identification** — for each trend: what's changing, why now, who's affected, what's the timeline, what are competitors doing about it? Response options: Lead (invest early), Fast follow, Monitor (set triggers), Ignore (explicitly, with documented rationale).

**Notes:** Distinguish table stakes from differentiators. Analysis has a shelf life — date it. Job postings are underrated intelligence. Customer reviews are gold. Don't skip the "so what." Note pricing caveats (packaging, usage vs. seat-based, enterprise custom pricing). Be honest about competitor strengths — an analysis that always shows you winning isn't credible.

---

## Sub-Mode: Track

Turn scattered competitor updates into structured, ongoing intelligence — not just "what they did" but "what changed since last check and what it means for us." Covers broad signal scanning across five categories, plus precise price-point tracking when pricing specifically needs it.

### Signal Categories

- **Product:** New features, removals, UX changes, beta programs
- **Pricing:** Changes to tiers, free limits, enterprise terms — use Precise Pricing Tracking below when exact before/after price points are needed, not just "something changed"
- **Hiring:** Job postings revealing strategic bets
- **Partnership:** Integrations, acquisitions, ecosystem moves
- **Messaging:** Changes in positioning, audience, value proposition

### Process

**First run (full report):**
1. For each competitor provided, scan all five signal categories
2. Categorize each signal found
3. Assess: reactive (responding to market) or proactive (setting direction)?
4. Rate threat level: High / Medium / Low / Watch
5. Connect each signal to a specific roadmap item if one is provided
6. Recommend response: Accelerate / Deprioritize / Monitor / Investigate

**Subsequent runs (diff only):**
1. Compare current signals against the previous run's summary
2. Output only what's new or changed since last time
3. Flag if a previously Low signal has escalated to High
4. Keep output under 300 words — brevity is the point

### Output Format

```markdown
## Competitive Intelligence Brief — [Date]
**New Since Last Run:** [n signals]

#### 🔴 High Priority
**[Competitor]:** [Signal] → [Implication] → [Recommended action + owner]

#### 🟡 Watch
**[Competitor]:** [Signal] → [Why it matters now]

#### ✅ No Change
[Competitors with no new signals]

**This Week's Strategic Summary:** [2 sentences max]
```

If run on a schedule, store the last run's summary to enable diff comparison on the next run.

### Precise Pricing Tracking

When the pricing signal category needs exact before/after price points — not just a flag that "something changed" — track it with persistent files instead of a one-off scan.

**Step 1: Find or build the competitor list.** Look for a `competitors.md` file in the current project directory. If none exists, ask which competitors to track and their pricing page URLs, then create it:

```markdown
# Competitor Pricing List
Last updated: [date]

| Competitor | Pricing URL | Notes |
|------------|------------|-------|
| Acme Corp  | https://acme.com/pricing | Enterprise pricing requires contact |
```

**Step 2: Visit each pricing page.** Capture plan names/tiers, price points (monthly + annual), what's included per tier, promotions/discounts, any "contact us" signals, date checked. A previously public price becoming "contact us" often signals an enterprise pivot — note it.

**Step 3: Compare to the previous snapshot.** Check for a `pricing-snapshot.md` file in the project directory. If found, compare and flag: price changes, new/removed tiers, changed inclusions, new promotions, pricing model changes (e.g., per-seat to usage-based). If no snapshot exists, say so — this run establishes the baseline.

**Step 4: Report the pricing-specific detail** as its own section (or standalone output, if this was the only thing asked for):

```markdown
### ⚠️ Pricing Changes Detected
[Before/after detail per competitor]

### ✅ No Pricing Changes
[Competitors unchanged]

### ⚠️ Could Not Check
[Pages inaccessible, login-gated, or errored]
```

**Step 5: Update the snapshot.** Update `pricing-snapshot.md` with today's findings, dated, so the next run has an accurate baseline.

**Notes:** Login-gated pricing can't be checked — flag it. Don't treat "contact us" enterprise pricing as a gap. Flag promotional vs. permanent price changes separately. Run at least monthly — quarterly is too infrequent in fast-moving markets.
