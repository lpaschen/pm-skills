---
description: Run competitive intelligence — full landscape analysis, ongoing monitoring, or pricing change detection
argument-hint: "[analyze|monitor|pricing] <competitor or product category>"
---

# /competitive -- Competitive Intelligence

Three modes: **analyze** maps the full competitive landscape, **monitor** surfaces recent competitor signals, **pricing** checks for pricing page changes.

## Invocation

```
/competitive analyze Link management and URL shortening market
/competitive analyze [paste competitor list or product category]
/competitive monitor Bitly, Rebrandly, Short.io
/competitive pricing [paste competitor pricing page content or URL]
/competitive                    # asks which mode you need
```

## Modes

### Analyze Mode

Map the competitive landscape and surface differentiation opportunities.

#### Step 1: Define the Scope
Confirm the category being analyzed and the competitors to include. Ask for your product's positioning if not provided.

#### Step 2: Generate the Analysis

```
## Competitive Analysis: [Category]

### Landscape Overview
[2-3 sentences on market structure — fragmented vs. consolidated, who leads, where it's moving]

### Competitor Profiles
| Company | Target Segment | Core Value Prop | Pricing Model | Key Strengths | Weaknesses |
|---|---|---|---|---|---|
| [Name] | | | | | |

### Feature Comparison
| Capability | [Your Product] | [Competitor 1] | [Competitor 2] | [Competitor 3] |
|---|---|---|---|---|
| [Feature] | ✅/❌/🔶 | | | |

### Differentiation Opportunities
1. [Gap in the market your product could own]
2. [Underserved segment]
3. [Feature or positioning white space]

### Strategic Risks
- [Competitor move that would most threaten your position]
- [Feature gap that could cause churn]

### Recommended Actions
1. [Specific product or positioning response]
2. [Area to monitor closely]
```

---

### Monitor Mode

Surface recent competitor signals — product updates, pricing changes, messaging shifts, job postings.

#### Step 1: Identify Competitors
Confirm the competitors to monitor and the time window (default: last 30 days).

#### Step 2: Generate the Monitor Report

```
## Competitive Monitor: [Competitors] — [Date Range]

### Signal Summary
| Competitor | Signal Type | What Changed | Strategic Implication |
|---|---|---|---|
| [Name] | Product/Pricing/Messaging/Hiring | [What] | [So what] |

### Key Developments
[2-3 most significant moves with context]

### Recommended Response
[What, if anything, warrants a product or go-to-market reaction]
```

---

### Pricing Mode

Compare current competitor pricing against a previous snapshot and flag changes.

#### Step 1: Get the Data
Ask the user to paste the current competitor pricing page content. Ask if they have a previous snapshot to compare against.

#### Step 2: Generate the Pricing Report

```
## Competitor Pricing Check: [Competitor] — [Date]

### Changes Detected
| Item | Previous | Current | Implication |
|---|---|---|---|
| [Plan name / price] | [$X] | [$Y] | [Higher/lower, who it targets] |

### Positioning Shift
[Has their pricing strategy changed — moving up-market, adding freemium, bundling?]

### Recommended Action
[Should we respond? If so, how?]
```

## Notes
- Competitive data goes stale fast — note the date of all inputs
- Pair analyze output with `/strategy` to update positioning
- Flag any pricing change that narrows the gap with your entry-level tier
