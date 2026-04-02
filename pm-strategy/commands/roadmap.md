---
description: Transform a prioritised initiative list into a compelling strategic roadmap narrative for stakeholders
argument-hint: "<initiative list, roadmap doc, or product area>"
---

# /roadmap -- Strategic Roadmap Narrative

Turn a list of roadmap items into a coherent story that explains the *why* behind the sequence — not just what you're building, but where you're going and how it fits together.

## Invocation

```
/roadmap [paste initiative list or roadmap spreadsheet]
/roadmap Connections Platform H1 2026 initiatives
/roadmap [paste strategy doc — generate roadmap narrative from it]
/roadmap                    # asks for your initiatives and audience
```

## Workflow

### Step 1: Gather the Inputs
Ask if not provided:
- "What are the initiatives on your roadmap? (paste a list)"
- "What time horizon does this cover?"
- "Who is the primary audience for this narrative?" (exec, board, customers, internal team)
- "What is the overarching strategic theme you want this roadmap to reinforce?"

### Step 2: Identify the Narrative Arc
Before drafting, identify:
- The "from → to" journey: what state is the product moving from, and what state is it moving toward?
- The logical sequencing logic: why does initiative A come before initiative B?
- The through-line: what single strategic theme connects all the initiatives?

### Step 3: Write the Narrative

```
## [Product Area] Roadmap — [Time Horizon]

### The Story in One Line
[A single sentence that captures where this product is going and why it matters]

### Where We Are Now
[2-3 sentences — current state of the product, key strengths, and the gap between where we are and where we need to be]

### Where We're Going
[The destination — what does this product look like at the end of this horizon, and what does that unlock for users and the business?]

### How We Get There

**Phase 1 — [Theme]: [Timeframe]**
[Initiatives in this phase]
*Why this first:* [The logic — what this unlocks for Phase 2]

**Phase 2 — [Theme]: [Timeframe]**
[Initiatives in this phase]
*Why this next:* [How Phase 1 makes this possible or more impactful]

**Phase 3 — [Theme]: [Timeframe]**
[Initiatives in this phase]
*Why this last:* [How this completes the strategy]

### What This Delivers
| Initiative | User Value | Business Value |
|---|---|---|
| [Initiative] | [What users gain] | [Revenue, retention, or growth impact] |

### What We're Not Doing (and Why)
[2-3 items explicitly deprioritised this cycle + brief rationale — shows strategic discipline]

### Dependencies & Risks
- [Dependency or risk that could affect the plan]
```

### Step 4: Test the Narrative
Ask: "Does the sequencing logic hold? Does the 'why' behind each phase come through clearly?" Offer to adjust for a specific audience (more exec-friendly, more customer-facing, etc.).

## Notes
- A roadmap without a narrative is just a Gantt chart — the story is what gets stakeholder buy-in
- The "What We're Not Doing" section is often the most credibility-building part
- Pair with `/strategy` if the narrative reveals gaps in the underlying strategy
- Pair with `/update` to turn this into a stakeholder communication
