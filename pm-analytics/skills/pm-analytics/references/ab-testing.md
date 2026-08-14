# A/B Testing

Two phases: **Design** builds a statistically rigorous test plan from a hypothesis, **Results Interpretation** reads completed experiment data and gives a ship/don't-ship recommendation. Every design includes hypothesis, success metrics, sample size, duration, and a results interpretation guide, so you can defend every decision to a skeptical engineering lead or data scientist.

## Phase 1: Design

### Experiment Design Checklist

Before finalizing any test, confirm:
- [ ] Clear hypothesis with predicted direction
- [ ] Single primary metric (plus up to 2-3 guardrail metrics)
- [ ] Minimum detectable effect (MDE) defined
- [ ] Sample size calculated
- [ ] Test duration estimated
- [ ] Segment isolated (no overlap with other running tests)
- [ ] Pre-defined success criteria — no moving goalposts after the test starts
- [ ] Rollback plan defined

### Hypothesis Template

> "We believe that [change] will cause [primary metric] to [increase/decrease] by [X%] for [user segment], because [rationale based on data or insight]."

Never run a test without a directional hypothesis. "Let's just see what happens" is not a hypothesis.

### Sample Size

Use standard parameters: 80% statistical power, 95% significance (p < 0.05). For common scenarios, these are pre-calculated estimates — always warn that they're estimates and recommend a precision tool (Evan Miller's calculator, Statsig) for the final number:

| Baseline Rate | MDE (Relative) | Required Sample per Variant |
|---|---|---|
| 5% | 20% | ~19,000 |
| 10% | 15% | ~14,000 |
| 20% | 10% | ~15,000 |
| 40% | 10% | ~9,500 |
| 60% | 5% | ~42,000 |

### Duration

`Duration = Required sample ÷ (Daily traffic × % exposed)`

Minimum 2 full weeks (captures weekly seasonality). Maximum 4 weeks (novelty effect distorts results beyond this). If traffic is too low to reach significance within 8 weeks, flag it and recommend a different approach — a holdout test or qualitative research (moderated testing, 5-second tests, user interviews) instead.

### Design Risk Flags

Call out explicitly if relevant: novelty effects, seasonal confounds, multiple-comparisons issues (if testing multiple variants, recommend a Bonferroni correction or a Bayesian approach), network effects, sample ratio mismatch risk.

### Output Format

```markdown
## A/B Test Plan — [Test Name] — [Date]

**Hypothesis:**
> [Filled hypothesis template]

**Variants:**
- Control (A): [Current experience]
- Treatment (B): [Changed experience — be specific]

**Primary Metric:** [Metric name + how measured]
**Secondary Metrics:** [Supporting metrics to monitor]
**Guardrail Metrics:** [Metrics that must not degrade]

**Target Segment:** [Who sees the test — % of traffic, user type]
**Traffic Split:** [50/50 recommended unless ramp-up needed]

**Sample Size Required:** ~[N] users per variant
**Estimated Duration:** [X] weeks (based on [Y] daily eligible users)
**Significance Threshold:** 95% confidence, 80% power

**Exclusions:** [Any user segments to exclude and why]

**Instrumentation:** [Events to track; any logging gaps to close before launch]

**Rollback Trigger:** If [guardrail metric] degrades by [X%], stop the test immediately.

**Risks & Mitigations:** [Design risk flags above, with mitigation for each]

**Results Interpretation Guide:**
- ✅ Ship if: Treatment shows [X%]+ lift on primary metric at 95% confidence AND guardrail metrics are stable
- 🔄 Iterate if: Direction is positive but not significant — consider extending or redesigning
- ❌ Reject if: No lift or negative direction at significance
- ⚠️ Inconclusive: Do not ship. Do not call it a win.
```

### Guidelines

- Recommend against peeking at results before the test reaches planned sample size — explain the p-hacking risk
- Never approve a test with no guardrail metrics — always protect revenue, retention, or core engagement

---

## Phase 2: Results Interpretation

### Required Inputs

Control results, variant results, p-value or raw numbers/confidence interval, run duration, any anomalies observed. Ask for whichever aren't provided.

### Analysis

- **Statistical significance** — p < 0.05 threshold, confidence interval interpretation
- **Practical significance** — is the lift meaningful for the business, not just statistically real? Always assess this separately; never ship on statistical significance alone
- **Confounding factors** — novelty effect, segment heterogeneity, external factors, sample ratio mismatch
- Never interpret results from an underpowered test without flagging it. Flag if the test was stopped early (peeking problem).

### Output Format

```markdown
## Experiment Results: [Name]

**Statistical Significance:** [p-value, confidence interval]
**Practical Significance:** [Effect size — is it meaningful for the business?]
**Primary Metric:** [Control vs. Treatment, % change, CI]
**Secondary Metrics:** [Any notable movements]
**Guardrail Metrics:** [Any degradation?]

**Decision:** SHIP / DON'T SHIP / EXTEND / KILL / RUN FOLLOW-UP
**Rationale:** [Why this decision given the data]
**Caveats:** [Novelty effect, segment heterogeneity, external factors]

**If Iterate/Follow-up:** [Specific next hypothesis to test]
```
