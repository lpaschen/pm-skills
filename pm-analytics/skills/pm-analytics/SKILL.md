---
name: pm-analytics
description: Use for product analytics work — designing or interpreting an A/B test, structuring a data analysis or metric investigation, tracking whether a shipped initiative moved the metric it was supposed to, or explaining/optimizing/writing SQL. Triggers on "A/B test", "experiment", "split test", "sample size", "was this experiment successful", "analyse metrics", "funnel analysis", "cohort analysis", "why did X drop", "data deep dive", "pre-launch hypothesis", "initiative log", "monthly learning", "explain this SQL query", "optimize this query", "write a SQL query".
license: MIT
metadata:
  author: Liz Paschen
  domain: analytics
  related-skills: pm-execution, pm-discovery
---

# PM Analytics

Four modes: designing/interpreting experiments, structuring a data analysis, tracking initiative impact over time, and working with SQL.

Note: product health / retention benchmarking was deliberately scrapped, not just left out — the underlying analytics weren't mature enough to give confident 🟢/🟡/🔴 signals. Revisit building it fresh once benchmarks are solid, rather than reviving the old skills.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "A/B test / experiment / split test / sample size / design a test / was this experiment successful" → **A/B Testing**
- "analyse metrics / funnel analysis / cohort analysis / why did X drop / data deep dive" → **Data Analysis**
- "pre-launch hypothesis / initiative log / check-in / monthly learning" → **Initiative Impact Tracking**
- "explain this SQL / optimize this query / write a SQL query / document this query" → **SQL Query Explainer**

Ask with `AskUserQuestion` only when genuinely ambiguous.

**Within A/B Testing**, if it's not clear whether this is a new test or an already-run one, ask:
- "Are you designing a new test, or interpreting results from one that's already run?"

**Within Initiative Impact Tracking**, if it's not clear which of the three outputs is needed, ask:
- "Which do you need: a pre-launch hypothesis, an initiative log entry, or a monthly learning doc entry?"

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| A/B Testing | `references/ab-testing.md` | Designing a new experiment, or interpreting results from a completed one (2 phases) |
| Data Analysis | `references/data-analysis.md` | Investigating a metric change, funnel drop-off, or cohort pattern |
| Initiative Impact Tracking | `references/initiative-impact-tracking.md` | Predicting, then checking, whether a shipped initiative moved its target metric (3 sub-modes: hypothesis, log, learning) |
| SQL Query Explainer | `references/sql-query-explainer.md` | Explaining, optimizing, writing, or documenting a SQL query (4 sub-modes) |

Load the corresponding reference file and follow its process and output template exactly.
