# Roadmap Narrative

Convert a prioritized list of product initiatives into a clear, strategic narrative that connects individual items to company goals and communicates a coherent product direction. A roadmap without a narrative is just a Gantt chart — the story is what gets stakeholder buy-in.

## Step 1: Gather the Inputs

Ask if not provided:
- "What are the initiatives on your roadmap?" (paste a list)
- "What time horizon does this cover?"
- "Who is the primary audience for this narrative?" (exec, board, customers, internal team)
- "What is the overarching strategic theme you want this roadmap to reinforce?"
- Company OKRs, if available — helps ground the themes

## Step 2: Identify the Narrative Arc

Before drafting, identify:
- The "from → to" journey: what state is the product moving from, and what state is it moving toward?
- 2-3 strategic themes that group the initiatives naturally
- The logical sequencing: why does initiative A come before initiative B? How does an earlier phase set up a later one?
- The through-line: what single strategic theme connects everything?

## Step 3: Write the Narrative

```markdown
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
[2-3 items explicitly deprioritized this cycle + brief rationale — this is often the most credibility-building part]

### Dependencies & Risks
- [Dependency or risk that could affect the plan]

### Executive Summary (shareable, ~100 words)
[3-4 sentences a non-technical stakeholder could repeat in an all-hands or board update]

### Anticipated Questions
1. [Question a board member or exec would likely ask] — [Your answer]
2. [Question] — [Answer]
3. [Question] — [Answer]
```

## Step 4: Test the Narrative

Ask: "Does the sequencing logic hold? Does the 'why' behind each phase come through clearly?" Offer to adjust for a specific audience (more exec-friendly, more customer-facing, etc.).

## Step 5: Save the Output

Save to `~/Documents/product_hub/roadmap-narrative/`, filename format `<upcoming-quarter>-<year>-Llamas-roadmap-narrative.md` (e.g. `Q2-2026-Llamas-roadmap-narrative.md`; derive the upcoming quarter from today's date). Create the folder if it doesn't exist. Confirm the file path after saving.

## Tone Guidelines

- Write for a CFO, not an engineer — avoid jargon
- Lead with customer outcomes, not features
- Be honest about what's NOT on the roadmap and why — clarity here is itself a strategy test: if you can't explain something plainly, the strategy needs refinement
- Competitive context strengthens the narrative but is optional

## Guidelines

- Pair with `pm-strategy`'s Product Strategy mode if the narrative reveals gaps in the underlying strategy
- Pair with `pm-stakeholders`'s Write a Stakeholder Update mode to turn this into a recurring communication
