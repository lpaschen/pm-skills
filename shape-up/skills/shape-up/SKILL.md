---
name: shape-up
description: Use for Shape Up work — writing a pitch to bring to a betting table, or reviewing a pitch before it goes there. Triggers on "write a pitch", "draft a pitch for Shape Up", "help me pitch this idea", "turn this into a pitch", "review this pitch", "poke holes in this pitch", "is this pitch ready", "betting table readiness".
license: MIT
metadata:
  author: Liz Paschen
  domain: execution
  related-skills: pm-execution
---

# Shape Up

Two modes: **Pitch** writes a Shape Up pitch from a rough idea; **Review** stress-tests a pitch before it goes to the betting table.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "write a pitch / draft a pitch / help me pitch this / turn this into a pitch" → **Pitch**
- "review this pitch / poke holes in this / is this ready / what am I missing / betting table readiness" → **Review**

Ask with `AskUserQuestion` only when genuinely ambiguous.

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Pitch | `references/pitch.md` | Shaping and writing a new pitch from a rough idea |
| Review | `references/review.md` | Stress-testing a written pitch before the betting table (loads `references/review-methodology.md` and `references/review-annotated-examples.md` as needed) |

Load the corresponding reference file and follow its process and output template exactly.
