---
name: prd-template
description: Write a complete Product Requirements Document from a problem statement or feature idea
argument-hint: <problem-statement-or-feature-idea>
allowed-tools: [Read, Glob, Grep, Write, WebFetch, mcp__claude_ai_Figma__get_design_context, mcp__claude_ai_Atlassian__searchJiraIssuesUsingJql]
---

# PRD Template

Write a complete, structured Product Requirements Document from a problem statement, feature idea, or existing brief.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **Input**: A problem statement, feature idea, file path to an existing brief, or inline description of what to build
2. **Figma URL** (optional): A figma.com URL to pull design context from

## Instructions

### Step 1 — Gather inputs

- If the input looks like a file path, read it with the Read tool.
- If a Figma URL is provided, call `mcp__claude_ai_Figma__get_design_context` to understand the design being specced.
- If no arguments were provided, ask the user for the feature or problem they want to PRD before proceeding.

### Step 2 — Ask clarifying questions (if needed)

If the input is sparse or ambiguous, ask up to 3 targeted questions before writing. Good questions to ask:
- Who is the primary user affected?
- What does success look like in 90 days?
- Are there known constraints (technical, timeline, tier/access)?

Don't ask questions that can be reasonably inferred from the input.

### Step 3 — Write the PRD

Generate a complete PRD using the structure below. Follow the tone and style guidelines at the bottom of this skill exactly.

---

#### Header metadata

```
Owner       <infer from context or leave blank>
Status      Draft
Last updated  <today's date>
```

---

#### Executive Summary

1–2 tight paragraphs. Cover:
- What the product or feature does today (the current state)
- What is broken or missing (the gap)
- What this PRD proposes to change

Write this for a stakeholder who hasn't read the rest of the doc. They should understand the full picture in 30 seconds.

---

#### Problem Statement

Deeper framing of the user pain. This section should:
- Describe the friction in specific, concrete terms — not vague ("users struggle") but precise ("users must re-apply the filter and manually re-add links every time a new link is created")
- Include real user research quotes if any were provided or can be inferred from context
- Explain the downstream consequence of the problem (what users do instead, what they abandon, what trust is lost)
- Be written in plain language — no jargon, no passive voice

Aim for 2–4 paragraphs. Every sentence should earn its place.

---

#### Goals

A concise bulleted list of what this feature is designed to achieve. Each goal should be:
- Specific and outcome-oriented (not "improve the experience" but "remove the manual selection step between applying a filter and having it reflected in the dashboard")
- Achievable within the scope of this feature
- Written as a statement, not a user story

Aim for 3–6 goals.

---

#### Requirements

Numbered sections, one per major area of functionality. Each section should have:
- A clear section title (e.g., "1. Persistent Filter as Dashboard Scope")
- 3–6 sub-requirements as bullet points
- Requirements written as "must" statements (e.g., "The dashboard must automatically include all links matching the active filter")
- No implementation details — specify what the system must do, not how

Cover the full surface area of the feature including:
- Core functionality
- Visibility / transparency (what users can see and understand)
- User controls (what users can change or override)
- Edge cases and backwards compatibility (if applicable)

---

#### Success Metrics

A table with three columns: **Metric**, **Definition**, **Direction**

| Metric | Definition | Direction |
|---|---|---|
| <metric name> | <precise definition, including time window> | ↑ Increase / ↓ Decrease — with a one-line rationale |

Include 2–4 metrics that are directly causally linked to the problem being solved. Avoid vanity metrics. If the PRD input includes specific baselines or targets, include them.

---

#### Risks & Dependencies

**Risks table** with three columns: **Risk**, **Detail**, **Mitigation**

| Risk | Detail | Mitigation |
|---|---|---|
| <risk name> | <what could go wrong and why> | <what we'll do about it> |

Include 2–4 risks. Focus on risks that are real and specific to this feature — not generic risks that apply to everything.

**Dependencies** as a short bulleted list below the risks table. Each dependency should name the specific system, team, or data requirement and why it blocks or constrains this work.

---

### Step 4 — Review before saving

Output the full PRD content to the user for review. Then ask: "Does this look good to save, or would you like any changes first?"

Do not save the file until the user explicitly confirms they are happy with the content.

### Step 5 — Save the PRD

Once the user confirms, save the file:

- Derive a filename using the format: `YYYY-MM-<team>-<feature-slug>.md`
  - Example: `2026-03-CP-Llamas-persistent_dashboard_filtering.md`
  - Use today's date for YYYY-MM
  - Use `CP` for Connections Platform features (default) unless another team is specified
  - Use `Llamas` as the default squad name unless another is specified
- Save the file to: `~/Documents/product_hub/projects/<relevant-subfolder>/`
  - Match to the closest existing subfolder: AI Features, Bitly Insights, Dashboards, Insights, Research, Conversion Strategy, Benchmarking
  - If none fit, save to `~/Documents/product_hub/projects/`
- Use clean Markdown — no HTML, no unnecessary formatting

### Step 6 — Confirm to the user

Tell the user:
- The file path where it was saved
- A one-sentence summary of what the PRD covers
- Any open questions or gaps you couldn't fill from the input (flag these clearly so they know what to fill in)

---

## Tone & Style Guidelines

These apply to every word written in the PRD. They are non-negotiable.

- **Direct and concise** — get to the point, cut every filler word. "Users must be able to" not "In order to provide users with the ability to."
- **Specific over vague** — "reduces dashboard setup time by removing the manual link-selection step" not "improves the experience."
- **No hedging** — state requirements as facts, not suggestions. "The dashboard must display..." not "Ideally the dashboard would..."
- **User research grounds the problem** — embed quotes from real research when available. They make the problem real.
- **No em dashes** — use commas, colons, or sentence breaks instead.
- **No emojis**
- **No passive voice** — "users must manually re-add links" not "links must be re-added by users."
- **Tables for structured comparisons** — metrics, risks, and dependencies should always use tables, not prose lists.
- **Write from the user's perspective in the problem sections; write from the system's perspective in requirements** — requirements describe what the product must do, not what the user wants.

---

## Reference PRD

The gold standard for format and voice is:
`/Users/lizpaschen/Documents/product_hub/projects/Dashboards/2026-03-CP-Llamas-persistent_dashboard_filtering.md`

When in doubt about tone, structure, or depth — read that file.
