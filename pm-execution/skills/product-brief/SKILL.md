---
name: product-brief
description: Write a concise product brief to align stakeholders on a problem and solution direction before a PRD is written. Use when starting a new initiative, pitching a feature idea, or getting early buy-in before investing in full specification. Triggers on "product brief", "feature brief", "write a brief", "brief before PRD", "pitch this feature", or when a PM needs stakeholder alignment on a concept.
argument-hint: <problem-or-feature-idea>
allowed-tools: [Read, Glob, Grep, Write, WebFetch, mcp__claude_ai_Figma__get_design_context, mcp__claude_ai_Atlassian__searchJiraIssuesUsingJql]
---

# Product Brief

Write a concise, strategic product brief that aligns stakeholders on a problem and proposed direction before committing to full specification.

A brief is not a PRD. It answers: "Should we build this, and roughly how?" A PRD answers: "Exactly what are we building?" This skill produces the former.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **Input**: A problem statement, feature idea, file path to existing notes, or inline description
2. **Figma URL** (optional): A figma.com URL for any early design explorations to pull context from

## Instructions

### Step 1 — Gather inputs

- If the input looks like a file path, read it with the Read tool.
- If a Figma URL is provided, call `mcp__claude_ai_Figma__get_design_context` to pull early design context.
- If no arguments were provided, ask the user what problem or opportunity they want to brief before proceeding.

### Step 2 — Ask clarifying questions (if needed)

If the input is thin or ambiguous, ask up to 3 targeted questions before writing. Good ones:
- Who is the primary user affected, and what plan or tier are they on?
- What's driving urgency — is there a customer signal, a competitor move, or a strategic bet?
- Do you have a rough solution direction in mind, or is this fully open?

Don't ask questions that can be reasonably inferred from the input.

### Step 3 — Write the brief

Generate the brief using the structure below. It should be readable in under 5 minutes. Aim for 1.5 to 2 pages — every section should earn its place.

---

#### Document Title

```
YYYY/MM - Product Brief - [Feature or Initiative Name]
```

---

#### TL;DR

One paragraph. Describe the problem, the proposed direction, and the expected outcome in plain language. Write this last, but put it first. Someone who reads only this should walk away knowing what we're doing and why.

---

#### Problem & Opportunity

What's broken, for whom, and why it matters now.

- Describe the friction in concrete terms — not "users struggle" but what they actually have to do, skip, or workaround
- Include any quantitative signal: support volume, churn attribution, feature request volume, NPS verbatims
- Include real user research quotes if any were provided or can be inferred
- Explain the downstream consequence: what do users do instead, what do they abandon, what trust erodes
- Articulate the business opportunity: what does solving this unlock (retention, expansion, activation, competitive positioning)

Aim for 2–3 paragraphs. Be specific.

---

#### Proposed Direction

What we think we should build and why. This is a direction, not a spec.

- Describe the core idea and the key design bets — what experience are we creating?
- Explain the primary user flow at a high level (no wireframes needed, but describe the before and after)
- State what this solution does NOT include — scope boundaries prevent the brief from ballooning into a PRD prematurely
- Call out any meaningful alternatives you considered and why you're not pursuing them

Aim for 2–3 paragraphs. No implementation detail — experience and decision, not code.

---

#### Success Criteria

| Metric | Current Baseline | Target | Timeframe |
|:---|:---|:---|:---|
| [Primary KPI] | [Current value or "unknown"] | [Goal] | [e.g., 30 days post-launch] |
| [Secondary KPI] | [Current value or "unknown"] | [Goal] | [e.g., 90 days post-launch] |

Include 1–3 metrics. If baselines are unknown, flag them — measuring before-state is often a prerequisite to validating impact.

---

#### Scope

**In scope:**
- [What this brief covers]
- [Core capability we're committing to]

**Out of scope (for now):**
- [Adjacent ideas that are tempting but excluded from this initiative]
- [Future phases, not this one]

---

#### Key Assumptions & Risks

| Assumption / Risk | Why it matters | How to validate or mitigate |
|:---|:---|:---|
| [e.g., Users will adopt the new flow without training] | [If wrong, adoption falls flat] | [e.g., Usability test with 5 users before shipping] |
| [e.g., Engineering estimate is under 3 weeks] | [Timeline risk for the quarter] | [e.g., Spike in week 1] |

Include 2–4 rows. Avoid generic risks — be specific to this feature.

---

#### Stakeholder Alignment Needed

Who needs to review and sign off before this moves to a PRD.

| Stakeholder | Role | What they need to weigh in on | Status |
|:---|:---|:---|:---|
| [Name or team] | [e.g., Engineering Lead] | [e.g., Feasibility of the proposed approach] | Not started |
| [Name or team] | [e.g., Legal / Privacy] | [e.g., Data handling implications] | Not started |

---

#### Open Questions

Questions that must be answered before writing the PRD. These are blockers to full specification — not open items to resolve later.

- [Question 1 — who owns answering it?]
- [Question 2 — who owns answering it?]
- [Question 3 — who owns answering it?]

---

#### Next Steps

| Action | Owner | By When |
|:---|:---|:---|
| Share brief for stakeholder review | [PM] | [Date] |
| [Key open question to answer] | [Owner] | [Date] |
| Begin PRD if brief is approved | [PM] | [Date] |

---

### Step 4 — Review before saving

Output the full brief to the user for review. Then ask: "Does this look good to save, or would you like any changes first?"

Do not save the file until the user explicitly confirms.

### Step 5 — Save the brief

Once the user confirms, save the file:

- Filename format: `YYYY-MM-CP-Llamas-<initiative-slug>-brief.md`
  - Example: `2026-04-CP-Llamas-persistent-dashboard-filtering-brief.md`
  - Use today's date for YYYY-MM
- Save to: `~/Documents/product_hub/projects/<relevant-subfolder>/`
  - Match to the closest existing subfolder: AI Features, Dashboards, Insights, Research, Conversion Strategy, Benchmarking
  - Analytics and metrics work goes in `Insights`, not `Bitly Insights`
  - If none fit, save to `~/Documents/product_hub/projects/`
- Use clean Markdown — no HTML, no unnecessary formatting

### Step 6 — Confirm to the user

Tell the user:
- The file path where it was saved
- One sentence on what the brief covers
- Open questions and assumptions that are not yet filled in (flag these clearly)
- Suggest running `/prd-template` once stakeholders have aligned and open questions are answered

---

## Tone & Style Guidelines

These apply to every word written in the brief.

- **Direct and concise** — cut every filler word. A brief should be fast to read and easy to share.
- **Specific over vague** — "reduces setup time by eliminating the manual link-selection step" not "improves the experience."
- **No hedging** — state assumptions clearly, but write conclusions with conviction.
- **No em dashes** — use commas, colons, or sentence breaks instead.
- **No emojis**
- **No passive voice** — "users must manually re-add links" not "links must be re-added by users."
- **Tables for structured data** — Success Criteria, Assumptions, Stakeholders, and Next Steps must use tables.
- **Write the TL;DR last** — it should summarize what the brief actually says, not what you hoped to say.
- **Brief is not a PRD** — resist the urge to write requirements. Describe direction and rationale, not specification.
