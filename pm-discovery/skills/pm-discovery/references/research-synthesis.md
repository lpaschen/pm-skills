# Research Synthesis

Turn raw research — interview transcripts, support tickets, NPS verbatims, app reviews, sales call notes — into a structured, prioritized insight brief. Works for a single interview transcript or a mixed-method pile of sources; scale the process to what's actually provided.

## Core Principle

Good synthesis identifies patterns across sources, not just individual comments, and connects every insight to a product decision with supporting evidence. Distinguish what users said from what they did — behavior is stronger evidence than opinion.

## Process

### Step 1: Gather and Tag

Read all provided material fully before drawing conclusions. Tag each piece of feedback with its source type.

### Step 2: Weight by Source (when multiple source types are present)

| Source | Weight |
|--------|--------|
| Direct research (interviews, usability tests) | 5 |
| Support tickets | 4 |
| NPS verbatims | 3 |
| App store reviews | 2 |
| Sales call summaries | 2 |
| Single anecdotes | 1 |

If the input is a single source type (e.g. just interview transcripts), skip weighting and go straight to theme identification.

### Step 3: Identify Themes

A theme needs a minimum of 3 mentions (or 3+ sources for multi-source synthesis) to qualify — don't report single-mention observations as themes. For each theme, select 2-3 verbatim quotes that best represent the pattern.

### Step 4: Categorize Findings

Sort into:
- **Pain Points** — by severity (High/Medium/Low), with current workarounds and evidence
- **Feature Requests** — Must-Have (critical needs) / High Value (significant improvements) / Nice-to-Have (incremental)
- **Workflow Insights** — current state → pain points → ideal state → opportunity
- **Delight Moments** — what's already working, worth protecting
- **Segmentation** — distinct user groups with different needs (a divergent signal often means two segments, not conflicting data)
- **Competitive Insights** — alternatives/workarounds currently in use, why they're chosen, switching barriers

### Step 5: Draft Implications and Recommendations

For each theme, write a "so what" — what does this mean for the product? State assumptions confirmed and assumptions challenged by the research. Recommendations must connect to a specific product decision, not just restate the observation.

## Output Format

```markdown
## Research Synthesis: [Study/Topic Name]

**Sources:** [Types and volume of input]
**Participants / Responses:** [Count]
**Research Questions:** [list, if applicable]

### Key Themes
| Theme | Frequency | Strength | Representative Quote |
|---|---|---|---|
| [Theme] | High/Med/Low | Strong/Weak signal | "[quote]" |

#### Theme detail (repeat per theme)
- Summary (2-3 sentences)
- Supporting quotes (2-3 verbatim)
- Implication for the product

### Pain Points
| Pain Point | Severity | Current Workaround | Evidence |
|---|---|---|---|

### Feature Requests
- **Must-Have:** [request] — [evidence]
- **High Value:** [request] — [evidence]
- **Nice-to-Have:** [request] — [evidence]

### Segmentation Insights
[Distinct user groups and how their needs diverge]

### Assumptions Confirmed
- [Assumption + evidence]

### Assumptions Challenged
- [Assumption + contradicting evidence]

### Research Gaps
[What's still missing, where to investigate further]

### Recommended Next Steps
1. [Specific action — investigate further, build, kill, or pivot]
```

## Quality Checks

- Every theme is supported by quotes from at least 3 participants/sources
- Implications connect to product decisions, not just observations
- Avoid researcher bias — let the data lead, don't cherry-pick confirming quotes
- Distinguish what users said from what they did
