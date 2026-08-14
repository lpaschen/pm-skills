# Data Analysis

Turn raw numbers into product decisions. Structure every analysis with a clear question, methodology, finding, and recommended action — a chart with no narrative is not an analysis.

## Step 1: Define the Question

Restate the question in one crisp sentence before pulling any data. If the input is vague, ask:
- "What metric or behavior are you investigating?"
- "What time period are you looking at?"
- "Do you have data to share, or should I help you frame what to pull?"

## Step 2: Frame the Methodology

Pick the analytical approach that fits the question:
- **Trend analysis** — metric over time with inflection point identification
- **Segmentation** — break by user type, plan, cohort, geography, or channel
- **Funnel analysis** — drop-off at each stage
- **Cohort analysis** — retention or behavior grouped by acquisition date
- **Correlation** — identify co-occurring signals

## Step 3: The 4-Question Method

Every analysis answers all four — never deliver data without them:

1. **What changed?** (the metric and its movement)
2. **Why did it change?** (root cause — segment, funnel step, cohort, channel)
3. **So what?** (business or product impact)
4. **Now what?** (recommended action with confidence level)

## Templates

### Metric Triage (use when a metric moved unexpectedly)

```
METRIC: [Name]
MOVEMENT: [X% change over Y period]
BASELINE: [What was normal]

SEGMENTATION CHECK:
- By platform (iOS / Android / Web)?
- By user cohort (new / returning / power users)?
- By acquisition channel?
- By geography?
- By plan/tier?

ROOT CAUSE HYPOTHESIS:
1. [Most likely explanation] — Evidence: [data point]
2. [Alternative explanation] — Evidence: [data point]
3. [Ruling out] — Eliminated because: [reason]

CONCLUSION: [Single sentence answer to "why did this change?"]
CONFIDENCE: [High / Medium / Low] — based on [data available]
```

### Funnel Analysis

| Stage | Metric | Current | Benchmark/Target | Drop-off % | Notes |
|-------|--------|---------|-----------------|------------|-------|
| [Top of funnel] | [Users] | [N] | [N] | — | |
| [Step 2] | [Users] | [N] | [N] | [X%] | |
| [Conversion] | [Users] | [N] | [N] | [X%] | |

**Biggest drop-off:** [Step X → Step Y] — Hypothesis: [reason]
**Recommended investigation:** [specific query or test]

### Cohort Analysis

Always define: **Cohort definition** (what groups users — signup week, first action, plan type), **Retention metric** (what counts as retained), **Retention window** (D1, D7, D30, W4, M3, etc.).

Output a cohort retention table and annotate baseline retention per cohort, which cohorts over/underperform and why (feature launch? campaign? seasonal?), and the trend direction across cohorts.

## Output Format

```markdown
## [Analysis Title] — [Date]

**Question being answered:** [Specific question in plain English]
**Time period:** [Date range]
**Data source:** [Where data comes from]

**Finding:**
> [1–2 sentence plain-English summary of what the data shows]

**Key chart / table:** [Include or describe]

**Root cause:** [Best explanation with evidence]

**Confidence level:** [High / Medium / Low] — [reason]

**Recommended action:**
1. [Immediate action — owner, timeline]
2. [Investigation needed — what to check next]
3. [Monitoring — what metric to watch and at what cadence]

**Open Questions:** [What additional data would sharpen the answer]

**What this analysis does NOT tell us:** [Important caveat — what data is missing or what can't be concluded]
```

## Step 4: Validate

Ask if the findings match what the user is seeing. Offer to go deeper on any segment or run the query needed to pull more data.

## Guidelines

- Always state what the data *cannot* tell you — never oversell confidence
- Correlations are not causation — flag this every time
- If the user has no baseline, recommend establishing one before drawing conclusions
- Recommend the simplest chart for each finding: bar for comparison, line for trends, scatter for correlation, table for detailed breakdowns
- Always specify the time window — "conversion dropped" is meaningless without "from X to Y over Z period"
- If the recommended action is a product change worth testing, hand off to the **A/B Testing** mode
