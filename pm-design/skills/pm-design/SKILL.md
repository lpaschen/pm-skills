---
name: pm-design
description: Use for design collaboration — critiquing an existing design/UI/flow, or writing a design handoff brief before a feature goes to a designer. Triggers on "critique this design", "review this UI", "design feedback", "heuristic evaluation", "design brief", "design handoff", "brief for designer", "hand off to design".
license: MIT
metadata:
  author: Liz Paschen
  domain: design
  related-skills: pm-execution, pm-discovery
---

# PM Design

Two modes for working with design: reacting to something that already exists (critique), or setting a designer up before they start (handoff brief).

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "critique / review / feedback / heuristic evaluation / what's wrong with this UI" → **Critique**
- "design brief / handoff / brief for designer / prep for design / hand off to design" → **Handoff Brief**

Ask with `AskUserQuestion` only when the request is ambiguous (e.g. "help with design," "I need something for the design team") or could plausibly be either:
- "Critique an existing design" — a screen/flow/UI already exists and needs feedback
- "Write a design handoff brief" — a feature needs to go to a designer, nothing's been designed yet

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Critique | `references/design-critique.md` | An existing design/UI/flow needs structured feedback |
| Handoff Brief | `references/design-handoff-brief.md` | A feature needs to go to a designer with context, not yet designed |

Load the corresponding reference file and follow its process and output template exactly.
