---
description: Assess product health across acquisition, activation, engagement, retention, and revenue — and surface where to focus
argument-hint: "<product, feature, or segment to assess>"
---

# /health-check -- Product Health Assessment

Run a structured health check across the full AAERR framework to identify where your product is strong, where it's leaking, and where to focus next.

## Invocation

```
/health-check Bitly Links product
/health-check Enterprise segment Q1 performance
/health-check QR Codes feature since January launch
/health-check                    # asks what to assess
```

## Workflow

### Step 1: Scope the Assessment
Confirm what is being assessed — product, feature, segment, or time period. Ask for any available data to anchor the analysis.

### Step 2: Assess Each Layer

```
## Product Health: [Name] — [Time Period]

### Acquisition
- New users / signups: [trend]
- Top channels: [breakdown]
- CAC trend: [up/down/stable]
- Signal: 🟢 Healthy / 🟡 Watch / 🔴 At Risk

### Activation
- Time to first value: [metric]
- Activation rate: [%]
- Drop-off points: [where users fail to activate]
- Signal: 🟢 / 🟡 / 🔴

### Engagement
- DAU/MAU or equivalent: [ratio + trend]
- Core action frequency: [how often users do the thing that matters]
- Feature adoption: [breadth of use]
- Signal: 🟢 / 🟡 / 🔴

### Retention
- D7 / D30 / D90 retention: [% + trend]
- Churn rate: [% + trend]
- Resurrection rate: [%]
- Signal: 🟢 / 🟡 / 🔴

### Revenue
- MRR / ARR trend: [growth rate]
- Expansion revenue: [% of growth from existing users]
- Contraction / churn revenue: [$ at risk]
- Signal: 🟢 / 🟡 / 🔴
```

### Step 3: Prioritise Where to Focus

```
## Where to Focus

**Biggest Lever:** [The single layer with highest impact if improved]
**Recommended Actions:**
1. [Specific action for top priority]
2. [Specific action for second priority]

**Watch List:** [Metrics to monitor closely over next 30 days]
```

## Notes
- If data is unavailable for a layer, note it as unknown rather than skipping it
- A 🔴 in Retention usually outweighs 🟢s elsewhere — address it first
- Pair with `/analyze` to dig into any specific signal that looks off
