---
name: rapid-prototype
description: Translate a solution concept into a high-quality UI coding prompt for Lovable or Figma Make. Use when you want to quickly spin up a demo to test assumptions and gather feedback. Triggers on "prototype", "rapid prototype", "build a demo", "lovable prompt", "figma make", "UI prototype", or when preparing a concept for user testing.
argument-hint: <solution-concept-or-feature-idea>
allowed-tools: [Read, Glob, Grep]
---

# Rapid Prototype Skill

## Purpose

Translate a solution concept into everything needed to generate a working UI demo in Lovable or Figma Make. The output is ready to paste — no extra thinking required.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **Input**: A solution concept, feature idea, PRD, file path, or inline description of what to prototype
2. **Target tool** (optional): Lovable or Figma Make — default to Lovable if unspecified

## Instructions

### Step 1 — Gather inputs

- If the input looks like a file path, read it with the Read tool.
- If no arguments were provided, ask: "What solution or feature do you want to prototype?" before proceeding.
- Identify the core user flow this prototype needs to demonstrate.

### Step 2 — Generate the three outputs

Produce all three blocks in sequence. Do not ask clarifying questions mid-generation unless the concept is genuinely too ambiguous to proceed.

---

## Output Format

Output the following three blocks, in order, using the exact headers and code block formatting below.

---

### Block 1: Prompt for UI Generator Tool

A single, concise prompt the user can paste directly into Lovable or Figma Make. It should be specific enough to generate a useful first screen without being so long that the tool ignores half of it.

Rules for writing this prompt:
- Lead with the app type and primary use case in one sentence
- Describe the first screen the tool should render — the most important one for testing the concept
- Name the 3–5 key UI components that must appear
- Specify visual style in one short phrase (e.g. "clean SaaS dashboard", "mobile-first card layout", "data-dense analytics view")
- Do not include implementation details or backend logic
- Keep it under 150 words

Format as:

```
[PASTE INTO LOVABLE / FIGMA MAKE]

[The prompt text]
```

---

### Block 2: Component / Screen Summary

An outline of all key screens and UI components needed for the full prototype flow. This gives the user a map of what to build beyond the first generated screen.

Format as:

**Screen 1: [Screen name]**
- [Component or element]
- [Component or element]
- [Interaction or state to demonstrate]

**Screen 2: [Screen name]**
- ...

Keep to 2–4 screens. Each screen should have 3–6 bullet points. Focus on what's visible and interactive, not on data models or backend behavior.

---

### Block 3: Sample Mock Data

Starter data to paste in or reference during prototype setup. This improves fidelity so the demo feels real rather than lorem ipsum.

Include whichever of these are relevant to the concept:
- Dropdown options or filter values
- Card list items (3–5 examples with realistic field values)
- Table rows or data grid entries
- Chart labels or axis values
- User or account names

Format each as a labeled list or small table. Use realistic values that match Bitly's product context (links, QR codes, campaigns, clicks, analytics) unless the concept is clearly for a different domain.

---

### Step 3 — Ask before saving

After outputting all three blocks, ask: "Want me to save this as a file in the project hub?"

If yes, save to `~/Documents/product_hub/projects/<closest-matching-subfolder>/` with filename `YYYY-MM-<feature-slug>-prototype-prompt.md`.
