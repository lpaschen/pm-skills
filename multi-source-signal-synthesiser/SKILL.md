---
name: multi-source-signal-synthesiser
description: Synthesises user signals from multiple research sources into a unified insight brief, reconciling conflicting feedback.
author: Mohit Aggarwal
version: 1.0.0
category: discovery
tags:
  - user-research
  - synthesis
  - discovery
  - insights
documentation: https://github.com/mohitagw15856/pm-claude-skills
---

# Multi-Source Signal Synthesiser

## Purpose
Unify user feedback from interviews, support tickets, NPS responses, app reviews, and sales calls into a weighted insight brief that identifies underlying needs rather than surface requests.

## Source Weighting System

| Source | Weight |
|--------|--------|
| Direct research (interviews, usability tests) | 5 |
| Support tickets | 4 |
| NPS verbatims | 3 |
| App store reviews | 2 |
| Sales call summaries | 2 |
| Single anecdotes | 1 |

## Core Process

1. **Tag signals by source** — Label each piece of feedback with its origin
2. **Apply weights** — Assign confidence values based on source type
3. **Identify convergence** — Flag insights appearing across 3+ sources
4. **Spot divergence** — Note conflicting signals that indicate user segments
5. **Distinguish surface from deep** — Separate feature requests from underlying needs
6. **Rank insights** — Order by weighted frequency and impact

## Output Structure

Dated synthesis reports include:
- **Sources and signal counts** — Where feedback came from
- **Ranked insights** — With confidence levels (High/Medium/Low)
- **Supporting evidence** — Direct quotes and source references
- **Conflicting signals** — Where feedback diverges and why
- **Product implications** — What to build/change based on signals
- **Segmentation analysis** — Which user groups have different needs
- **Research gaps** — What's missing and where to investigate further

## Integration

Connects to:
- Notion (research database)
- Support inboxes (ticket feeds)
- NPS tools (verbatim responses)
- App review feeds (store reviews)

Runs weekly synthesis to surface new signals and track signal strength over time.
