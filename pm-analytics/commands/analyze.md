---
description: Structure a product data analysis with a clear question, methodology, findings, and recommended action
argument-hint: "<metric or question to investigate>"
---

# /analyze -- Product Data Analysis

Turn a data question or metric change into a structured analysis with methodology, findings, and a clear recommendation.

## Invocation

```
/analyze Why did activation drop 12% last week?
/analyze What is driving churn in the enterprise segment?
/analyze DAU/MAU ratio has been flat for 3 months
/analyze                    # interactive mode — asks what you need to investigate
```

## Workflow

### Step 1: Define the Question
Restate the question in one crisp sentence. If the input is vague, ask:
- "What metric or behavior are you investigating?"
- "What time period are you looking at?"
- "Do you have data to share, or should I help you frame what to pull?"

### Step 2: Frame the Methodology
Select the appropriate analytical approach:
- **Trend analysis** — metric over time with inflection point identification
- **Segmentation** — break by user type, plan, cohort, geography, or channel
- **Funnel analysis** — drop-off at each stage
- **Cohort analysis** — retention or behaviour grouped by acquisition date
- **Correlation** — identify co-occurring signals

### Step 3: Structure the Analysis
Produce the analysis using this format:

```
## Analysis: [Question]

**Hypothesis:** [What you expect to find and why]

**Methodology:** [How you'd approach it — what data, what cuts, what timeframe]

**Key Findings:**
1. [Finding 1 + supporting data point]
2. [Finding 2 + supporting data point]
3. [Finding 3 + supporting data point]

**Root Cause Assessment:** [Most likely explanation with confidence level]

**Recommended Action:** [Specific, time-bound next step]

**Open Questions:** [What additional data would sharpen the answer]
```

### Step 4: Validate
Ask if the findings match what the user is seeing. Offer to go deeper on any segment or run the SQL needed to pull the data.

## Notes
- If the user has data to paste, ask for it before generating findings
- Always separate correlation from causation in the root cause section
- Pair with `/ab-test` if the recommended action is a product change worth testing
- Pair with `/health-check` for a broader view of product health across all metrics
