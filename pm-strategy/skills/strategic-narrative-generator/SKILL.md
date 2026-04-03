---
name: strategic-narrative-generator
description: Transform a list of product initiatives into a coherent strategic narrative for non-technical audiences
---

# Strategic Narrative Generator Skill Summary

This skill transforms prioritized initiative lists into compelling strategic stories for non-technical audiences. Created by Mohit Aggarwal (v1.0.0), it helps product leaders explain roadmaps to leadership and boards.

## Key Framework

The skill identifies "2-3 natural strategic themes" from your initiatives, then structures each around three elements: the customer problem, your response, and measurable outcomes. It emphasizes building a "progression narrative" showing how each quarter enables the next.

## Core Output Structure

The generator produces seven components:
- Market context summary (for financial leaders, not engineers)
- Three strategic themes with problems, responses, and metrics
- Narrative arc explaining sequencing
- Shareable 100-word executive summary
- Three anticipated board questions with answers
- Explicit non-priorities showing strategic discipline

## Critical Guidance

"Write for a CFO, not an engineer" and "Lead with outcomes, not features" are the north stars. The approach treats clarity as a strategy test—if you cannot explain something plainly, the strategy needs refinement.

The skill acknowledges competitive context strengthens output while remaining optional, making it flexible for various planning maturity levels.

## Saving Output

After generating the narrative, save it to:
`~/Documents/product_hub/roadmap-narrative/`

Use this filename format: `<upcoming-quarter>-<year>-Llamas-roadmap-narrative.md`
- Example: `Q2-2026-Llamas-roadmap-narrative.md`
- Derive the upcoming quarter from today's date (e.g. if today is in Q1, save as Q2)
- Create the `roadmap-narrative` folder if it doesn't exist

Confirm the file path to the user after saving.
