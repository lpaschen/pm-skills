---
name: pm-strategy
description: Use for product strategy work — building or critiquing an overall product strategy, turning initiatives into a roadmap narrative, scoping an AI feature before building it, designing pricing/packaging, or writing a positioning statement. Triggers on "product strategy", "critique this strategy", "poke holes in this strategy", "roadmap narrative", "roadmap story", "explain our roadmap", "AI feature", "AI canvas", "LLM feature", "pricing strategy", "pricing tiers", "positioning statement", "differentiation".
license: MIT
metadata:
  author: Liz Paschen
  domain: strategy
  related-skills: pm-discovery, pm-execution
---

# PM Strategy

Five modes: building or critiquing overall product strategy, telling the roadmap story, scoping an AI feature, designing pricing, and writing a positioning statement.

Note: OKRs were scrapped from this skill entirely — not left unconsolidated, removed.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "product strategy / critique this strategy / poke holes in this / build our strategy" → **Product Strategy**
- "roadmap narrative / roadmap story / explain our roadmap / connect initiatives to strategy" → **Roadmap Narrative**
- "AI feature / AI canvas / LLM feature / build with AI / AI-powered" → **Scope an AI Feature**
- "pricing strategy / pricing tiers / packaging / freemium" → **Pricing Strategy**
- "positioning statement / differentiation / for [target customer] who..." → **Positioning Statement**

Ask with `AskUserQuestion` in two steps only when the request is genuinely ambiguous:

**Step 1 — What kind of strategy work do you need?**
- "Build or critique overall strategy" — Product Strategy
- "Tell the roadmap story" — Roadmap Narrative
- "Price the product" — Pricing Strategy
- "Specialized strategy work" — Scope an AI Feature, or write a Positioning Statement

**Step 2 — only for "Specialized strategy work":**
- "Scope an AI Feature" | "Write a Positioning Statement"

**Within Product Strategy**, if it's not clear whether this is building new or critiquing existing, ask:
- "Are you building a new strategy, or critiquing one that already exists?"

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Product Strategy | `references/product-strategy.md` | Building a new product strategy, or critiquing an existing one (2 phases) |
| Roadmap Narrative | `references/roadmap-narrative.md` | Turning a prioritized initiative list into a stakeholder-ready story |
| Scope an AI Feature | `references/scope-ai-feature.md` | Rigor-checking an AI/ML feature before building it — approach, data, evaluation, responsible AI |
| Pricing Strategy | `references/pricing-strategy.md` | Designing or evaluating pricing models, tiers, and packaging |
| Positioning Statement | `references/positioning-statement.md` | Defining target customer, category, benefit, and differentiation against the real alternative |

Load the corresponding reference file and follow its process and output template exactly.
