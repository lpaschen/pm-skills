# Generate Release Notes

Create a comprehensive internal launch document from a Shape Up pitch and optional Figma design file, structured to inform the full team — product, engineering, marketing, sales, and CS.

## Inputs

1. **Pitch**: A file path to a saved Shape Up pitch (e.g. `pitch-<feature>.md`), or inline text describing the feature
2. **Figma URL** (optional): A figma.com URL to pull design context and visuals from

## Step 1: Gather Inputs

- If the pitch argument looks like a file path, read it.
- If a Figma URL is provided, extract the fileKey and nodeId, then call the Figma design-context tool to understand the UI being shipped. Reference specific UI elements by name in the User Experience section.
- If nothing was provided, ask the user for the pitch (file path, pasted text, or doc URL) and an optional Figma URL before proceeding.

## Step 2: Generate the Document

Write a comprehensive internal release notes document with all of the following sections. Scale depth to the complexity of the feature — omit a section only if the pitch provides no relevant information for it.

---

### Section 1: Overview

**What It Is** — 1–2 paragraphs describing the feature in plain language. What does it do? What user problem does it solve? Write this for someone who hasn't read the pitch — a teammate in marketing or CS should immediately understand what shipped.

**Why We're Building It** — 1–2 paragraphs on motivation and strategic context, drawn from the pitch's Problem section. Why now? What friction does this remove? Include the quantified pain point from the pitch (ARR at risk, user count, conversion rate) that justified the bet.

### Section 2: Launch Plan

Describe the phased rollout strategy. For each phase: audience/rollout size, timing, goals for that phase, and the decision framework for moving to the next phase vs. pausing/reverting. If the pitch doesn't specify rollout phases, write a single GA launch section based on available context. Note the pitch's appetite (small/big batch) if it affects how the rollout was scoped.

### Section 3: User Experience

For each major feature area or user-facing surface described in the pitch's Solution section:
- **Feature name** as a subheading
- What the experience looks like from the user's perspective
- Key interactions and flows (reference Figma elements if available)
- Any access restrictions (free vs. paid, tier gating, entitlement limits)
- A **Goal** callout: one sentence on what this UX is designed to achieve

If Figma designs were provided, note where screenshots belong using placeholder text like `[Screenshot: <description>]`. If the pitch named any Rabbit Holes that were resolved with a specific implementation choice, reflect that choice here.

### Section 4: Success Metrics

**Launch Objectives** — bullet list of what we're trying to learn or prove.

**Key Metrics** — pull from the pitch's Expected Revenue Impact section: the mechanism (retained ARR, new ARR, conversion uplift) and the estimate. If the pitch didn't specify a precise tracking metric beyond the revenue estimate, ask the user what specific metric will be monitored post-launch and at what baseline/target.

### Section 5: FAQ

Generate 5–8 Q&A pairs anticipating questions from internal stakeholders (sales, CS, marketing) and end users. Good topics: how this interacts with related features, free vs. paid access and upgrade paths, admin controls, data privacy, edge cases (empty states, unsupported actions, limits — check the pitch's No-Gos section for what's explicitly excluded), how to get support or give feedback. Answers should be 2–4 sentences each.

### Section 6: Resources

List links extracted from the pitch or provided by the user: Shape Up pitch, Figma designs, experiment docs, timeline/roadmap, help center articles, GTM/launch plan, analytics dashboards. Simple bullet list; omit the section if nothing is available.

---

## Step 3: Save the Document

- Derive a filename from the feature name: lowercase, spaces replaced with hyphens, `.md` extension (e.g. "AI Assist" → `ai-assist.md`)
- Save to: `~/projects/release notes/<filename>.md`

```markdown
# <Feature Name>

## Overview
### What It Is
<content>
### Why We're Building It
<content>

## Launch Plan
<content>

## User Experience
### <Feature Area 1>
<content>
**Goal:** <one sentence>

## Success Metrics
### Objectives
<bullet list>
### Key Metrics
<bullet list>

## FAQ
#### Q: <question>
<answer>

## Resources
- <link or reference>
```

## Step 4: Ask About Confluence

After saving locally, ask: "Would you like me to also publish this to Confluence?" If yes, publish as a child page under **Insights, Analytics and AI Release Notes**: Site `puffer.atlassian.net`, Parent page ID `4348116994`, Space `ET`, Page title the feature name (Title Case). Always use this location — don't ask which space to post to.

## Step 5: Confirm

Tell the user: the document title, the local file path, whether it was published to Confluence (and the page URL), and a one-sentence summary of what it covers.
