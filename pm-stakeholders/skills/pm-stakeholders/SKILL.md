---
name: pm-stakeholders
description: Use for stakeholder communication and alignment — a personal weekly recap, writing a stakeholder or exec update, prepping for a Bitly Product Review, or planning stakeholder alignment on an initiative. Triggers on "weekly review", "PM standup", "stakeholder update", "exec brief", "executive update", "leadership summary", "launch announcement", "escalation", "product review", "prep for product review", "review with your product review stakeholders", "stakeholder map", "influence plan", "who needs to be aligned".
license: MIT
metadata:
  author: Liz Paschen
  domain: stakeholders
  related-skills: pm-execution, pm-strategy
---

# PM Stakeholders

Four modes for stakeholder-facing work: a personal weekly ritual, writing an update for others, prepping for a specific recurring leadership meeting, and planning how to align people on something new.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "weekly review / PM standup / sprint health / what happened this week" → **Weekly Recap**
- "stakeholder update / exec brief / executive update / leadership summary / launch announcement / escalation" → **Write a Stakeholder Update**
- "product review / prep for product review / review with your product review stakeholders / pre-read" → **Prep for a Product Review**
- "stakeholder map / influence plan / who needs to be aligned / alignment strategy" → **Plan Stakeholder Alignment**

Ask with `AskUserQuestion` only when genuinely ambiguous (e.g. "help me communicate this" with no other signal).

**Within Write a Stakeholder Update**, if the audience isn't stated, ask:
- "Who's this for?" — Exec/C-suite | Team/cross-functional | Launch announcement | Escalation

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Weekly Recap | `references/weekly-recap.md` | Your own 20-minute weekly ritual — not sent to anyone, just structures your thinking |
| Write a Stakeholder Update | `references/stakeholder-update.md` | An external-facing communication is needed for a specific audience |
| Prep for a Product Review | `references/product-review-prep.md` | Preparing for, or debriefing after, a Bitly Product Review with your product review stakeholders |
| Plan Stakeholder Alignment | `references/stakeholder-alignment-plan.md` | Getting buy-in on an initiative across multiple stakeholders |

Load the corresponding reference file and follow its process and output template exactly.
