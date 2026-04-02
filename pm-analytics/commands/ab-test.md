---
description: Design a statistically rigorous A/B test or interpret experiment results
argument-hint: "[design|results] <hypothesis or experiment description>"
---

# /ab-test -- A/B Test Design & Results Interpretation

Two modes: **design** builds a test plan from a hypothesis, **results** interprets experiment data and gives a ship/don't-ship recommendation.

## Invocation

```
/ab-test design New onboarding tooltip reduces time-to-first-link
/ab-test design Simplified pricing page increases free-to-paid conversion
/ab-test results [paste experiment data or summary]
/ab-test                    # asks which mode you need
```

## Modes

### Design Mode

#### Step 1: Define the Hypothesis
Restate the hypothesis in this format:
> "We believe [change] will cause [metric] to [increase/decrease] because [reason]."

If missing, ask for the change being tested and the metric it affects.

#### Step 2: Specify the Test Parameters

```
## A/B Test Plan: [Name]

**Hypothesis:** [Full hypothesis statement]

**Primary Metric:** [Single north star metric for the decision]
**Secondary Metrics:** [Supporting metrics to monitor]
**Guardrail Metrics:** [Metrics that must not degrade]

**Audience:** [Who is in the test — segment, eligibility criteria]
**Traffic Split:** [e.g., 50/50, or 90/10 for high-risk changes]
**Minimum Detectable Effect (MDE):** [Smallest change worth detecting]
**Required Sample Size:** [Per variant, calculated from MDE + baseline + power]
**Estimated Duration:** [Based on traffic volume]

**Variants:**
- Control: [Current experience]
- Treatment: [Changed experience]

**Risks & Mitigations:** [What could go wrong, how to catch it early]
```

#### Step 3: Recommend Instrumentation
List the events to track and any logging gaps to address before launch.

---

### Results Mode

#### Step 1: Parse the Data
Ask for: metric values per variant, sample sizes, p-value or confidence interval, and test duration.

#### Step 2: Interpret Results

```
## Experiment Results: [Name]

**Statistical Significance:** [p-value, confidence interval]
**Practical Significance:** [Effect size — is it meaningful for the business?]
**Primary Metric:** [Control vs. Treatment, % change, CI]
**Secondary Metrics:** [Any notable movements]
**Guardrail Metrics:** [Any degradation?]

**Decision:** SHIP / DON'T SHIP / EXTEND
**Rationale:** [Why this decision given the data]
**Caveats:** [Novelty effect, segment heterogeneity, external factors]
```

## Notes
- Never ship on statistical significance alone — always assess practical significance
- Flag if the test ran too short or had a sample ratio mismatch
- Pair with `/analyze` to investigate unexpected results before deciding
