---
name: shapeup-pitch
description: Write a Shape Up pitch document from a problem statement or feature idea. Outputs the five canonical sections — Problem, Appetite, Solution, Rabbit Holes, No-gos — using fat-marker thinking. Use when pitching a new feature for a betting table, scoping a cycle, or shaping rough ideas before committing a team. Triggers on "shape up pitch", "write a pitch", "shaping", "betting table", "appetite", "fat marker".
argument-hint: <problem-statement-or-feature-idea>
allowed-tools: [Read, Glob, Grep, Write, WebFetch, mcp__claude_ai_Figma__get_design_context, mcp__claude_ai_Atlassian__searchJiraIssuesUsingJql]
---

# Shape Up Pitch

Write a well-shaped pitch document following Basecamp's Shape Up framework. The output is a concise, opinionated document a small team can execute in one cycle — not a PRD or a spec.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **Input**: A problem statement, feature idea, file path to an existing brief, or inline description
2. **Appetite** (optional): "small" (2 weeks) or "large" (6 weeks) — default to large if not specified
3. **Figma URL** (optional): Pull existing design context to inform the solution sketch

## Instructions

### Step 1 — Gather inputs

- If the input looks like a file path, read it with the Read tool.
- If a Figma URL is provided, call `mcp__claude_ai_Figma__get_design_context` to pull design context.
- If no arguments were provided, ask for the problem before proceeding.

### Step 2 — Ask clarifying questions (if needed)

Ask up to 3 questions if the input is sparse:
- Who is the primary user and what are they trying to do?
- What's the appetite — small batch (~2 weeks) or big batch (~6 weeks)?
- Are there any known constraints or prior attempts to solve this?

Don't ask questions that can be reasonably inferred.

### Step 3 — Write the pitch

Generate a complete pitch using the structure below. Keep writing concrete and opinionated — a pitch makes choices, it doesn't list options.

---

## Output Structure

---

### Problem

*1–3 paragraphs. Describe the specific situation that causes pain. Name the user and the job they're trying to do. Use a concrete scenario — not a statistic or a vague complaint.*

---

### Appetite

*One sentence stating the time box.*

> **Small batch** — 2 weeks, 1–2 engineers
> **Big batch** — 6 weeks, 2–3 engineers

State clearly: if this takes longer than the appetite allows, we cut scope — not add time.

---

### Solution

*The shaped approach. Describe the core interaction at fat-marker resolution — enough to guide a team, not enough to pre-design it for them.*

Use one or more of these as appropriate:
- **Breadboard** — flow diagram in plain text showing places, affordances, and connections
- **Fat-marker sketch** — describe the key screens or states in plain language (no wireframes, no pixel specs)
- **Key decisions** — 3–5 explicit choices baked into the shape (e.g. "no bulk actions", "single-page flow", "reuse existing modal pattern")

Write this section so a designer can sketch it and an engineer can scope it — without a meeting.

---

### Rabbit Holes

*List 3–5 specific edge cases, technical complexities, or UX traps that could blow the appetite. For each one, state the risk and the explicit decision to avoid it.*

Format:

| Risk | Decision |
|------|----------|
| [Specific edge case or complexity] | [How we're handling or explicitly avoiding it] |

---

### No-gos

*Bullet list of things explicitly out of scope for this cycle. Be specific — vague no-gos aren't useful.*

- [ ] [Specific thing we are not building]
- [ ] [Specific integration we are not adding]
- [ ] [Specific user segment or use case we are not supporting this cycle]

---

## Tone and Style Guidelines

- **Opinionated, not exhaustive.** A pitch makes decisions. It doesn't hedge with "we could also…" or "one option is…".
- **Concrete language.** Avoid "users can manage X" — say "the user clicks the link in the email and lands on a one-page form with their current plan and a single change button."
- **Fat-marker resolution.** The solution should be describable in 2–3 sentences per screen or interaction. If you're writing component-level detail, you've gone too far.
- **Short.** The whole document should be readable in 5 minutes. Problem: 200–400 words. Solution: 300–500 words. Everything else: tight bullets or a table.
- **No implementation prescriptions.** Don't dictate database schema, API contracts, or component names. Shape the problem space, not the solution.
