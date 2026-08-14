---
name: pm-discovery
description: Use for product discovery work — planning or synthesizing research, building customer-understanding frameworks (jobs-to-be-done, personas, journey maps), watching the competition, or building/refining a rapid prototype. Triggers on "user interview", "discovery interview", "customer research", "research synthesis", "jobs to be done", "JTBD", "persona", "journey map", "competitive analysis", "monitor competitors", "competitor pricing", "prototype", "build a demo", "lovable prompt", "figma make".
license: MIT
metadata:
  author: Liz Paschen
  domain: discovery
  related-skills: pm-strategy, pm-design
---

# PM Discovery

Seven modes across four workstreams: planning/synthesizing research, building customer-understanding frameworks, watching the competition, and prototyping.

## Mode Selection

Infer directly when the request clearly names a mode — don't ask:
- "user interview / discovery interview / customer research / interview guide" → **Discovery Interview Guide**
- "research synthesis / synthesize transcripts / synthesize feedback / turn research into insights" → **Research Synthesis**
- "jobs to be done / JTBD / what job is this hiring" → **Jobs to Be Done**
- "persona / user archetype / build a persona" → **Persona Builder**
- "journey map / customer journey / map the experience" → **Journey Mapping**
- "competitive analysis / competitive landscape / how do we stack up" → **Competitive Intelligence: Analyze**
- "monitor competitors / competitive briefing / what are competitors doing / competitor pricing / has X changed their pricing" → **Competitive Intelligence: Track**
- "prototype / build a demo / lovable prompt / figma make" (nothing exists yet) → **Prototype: Build**
- "refine the prototype / iterate on the demo / update the prototype based on feedback" → **Prototype: Refine**

Ask with `AskUserQuestion` in two steps only when the request is genuinely ambiguous (e.g. "help me with discovery," "I need to research this"):

**Step 1 — What kind of discovery work do you need?**
- "Plan or synthesize research" — Prep for interviews, or make sense of what you've already learned
- "Build a customer understanding framework" — Jobs to be done, persona, or journey map
- "Watch the competition" — Analyze the landscape, monitor signals, or check pricing
- "Prototype something to test" — Build a first version, or refine one based on feedback

**Step 2 — refine within the chosen category:**
- *Plan or synthesize research* → Discovery Interview Guide | Research Synthesis
- *Build a customer understanding framework* → Jobs to Be Done | Persona Builder | Journey Mapping
- *Watch the competition* → Analyze | Track
- *Prototype something to test* → Build | Refine

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Discovery Interview Guide | `references/discovery-interview-guide.md` | Planning customer interviews, before you talk to anyone |
| Research Synthesis | `references/research-synthesis.md` | Turning interviews, tickets, NPS, reviews, or sales calls into structured insights |
| Jobs to Be Done | `references/jobs-to-be-done.md` | Defining the underlying progress a customer is hiring a product to make |
| Persona Builder | `references/persona-builder.md` | Synthesizing research into a research-backed user archetype |
| Journey Mapping | `references/journey-mapping.md` | Mapping a customer's end-to-end experience across a job |
| Competitive Intelligence | `references/competitive-intelligence.md` | Analyzing the landscape (Analyze), or ongoing signal + pricing tracking (Track) — 2 sub-modes |
| Prototype | `references/prototype.md` | Generating a first Lovable/Figma Make prompt, or refining one based on feedback (2 sub-modes) |

Load the corresponding reference file and follow its process and output template exactly.
