---
name: pm-analytics
description: Use for product analytics work — designing or interpreting an A/B test, structuring a data analysis or metric investigation, or explaining/optimizing/writing SQL. Triggers on "A/B test", "experiment", "split test", "sample size", "was this experiment successful", "analyse metrics", "funnel analysis", "cohort analysis", "why did X drop", "data deep dive", "explain this SQL query", "optimize this query", "write a SQL query".
license: MIT
metadata:
  author: Liz Paschen
  domain: analytics
  related-skills: pm-execution, pm-discovery
---

# PM Analytics

Three modes: designing/interpreting experiments, structuring a data analysis, and working with SQL.

Note: product health / retention benchmarking was deliberately left out of this skill — the underlying analytics aren't mature enough yet to give confident 🟢/🟡/🔴 signals. The old `product-health-analysis` and `retention-analysis` skills, and the `/health-check` command, still exist unconsolidated for now — revisit folding them in once benchmarks are solid.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "A/B test / experiment / split test / sample size / design a test / was this experiment successful" → **A/B Testing**
- "analyse metrics / funnel analysis / cohort analysis / why did X drop / data deep dive" → **Data Analysis**
- "explain this SQL / optimize this query / write a SQL query / document this query" → **SQL Query Explainer**

Ask with `AskUserQuestion` only when genuinely ambiguous.

**Within A/B Testing**, if it's not clear whether this is a new test or an already-run one, ask:
- "Are you designing a new test, or interpreting results from one that's already run?"

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| A/B Testing | `references/ab-testing.md` | Designing a new experiment, or interpreting results from a completed one (2 phases) |
| Data Analysis | `references/data-analysis.md` | Investigating a metric change, funnel drop-off, or cohort pattern |
| SQL Query Explainer | `references/sql-query-explainer.md` | Explaining, optimizing, writing, or documenting a SQL query (4 sub-modes) |

Load the corresponding reference file and follow its process and output template exactly.
