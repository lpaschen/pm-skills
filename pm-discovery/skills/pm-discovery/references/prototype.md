# Prototype

Two sub-modes: **Build** generates a first prototype prompt from a concept, **Refine** iterates an existing prototype based on feedback.

## Sub-Mode: Build

Translate a solution concept into everything needed to generate a working UI demo in Lovable or Figma Make. The output is ready to paste — no extra thinking required.

### Step 1: Gather Inputs

- If the input looks like a file path, read it.
- If nothing was provided, ask: "What solution or feature do you want to prototype?"
- Identify the core user flow this prototype needs to demonstrate.
- Confirm target tool (Lovable or Figma Make) — default to Lovable if unspecified.

### Step 2: Generate the Three Outputs

Produce all three blocks in sequence. Don't ask clarifying questions mid-generation unless the concept is genuinely too ambiguous to proceed.

#### Block 1: Prompt for UI Generator Tool

A single, concise prompt to paste directly into Lovable or Figma Make. Specific enough to generate a useful first screen without being so long the tool ignores half of it.

Rules:
- Lead with the app type and primary use case in one sentence
- Describe the first screen to render — the most important one for testing the concept
- Name the 3–5 key UI components that must appear
- Specify visual style in one short phrase (e.g. "clean SaaS dashboard," "mobile-first card layout")
- No implementation details or backend logic
- Under 150 words

```
[PASTE INTO LOVABLE / FIGMA MAKE]

[The prompt text]
```

#### Block 2: Component / Screen Summary

An outline of all key screens and components needed for the full prototype flow — a map of what to build beyond the first generated screen.

```
**Screen 1: [Screen name]**
- [Component or element]
- [Interaction or state to demonstrate]

**Screen 2: [Screen name]**
- ...
```

Keep to 2–4 screens, 3–6 bullets each. Focus on what's visible and interactive, not data models or backend behavior.

#### Block 3: Sample Mock Data

Starter data to paste in during setup, so the demo feels real rather than lorem ipsum. Include whichever are relevant: dropdown/filter values, card list items (3–5 realistic examples), table rows, chart labels, user/account names. Use realistic values matching Bitly's product context (links, QR codes, campaigns, clicks, analytics) unless the concept is clearly for a different domain.

### Step 3: Ask Before Saving

"Want me to save this as a file in the project hub?" If yes, save to `~/Documents/product_hub/projects/<closest-matching-subfolder>/` as `YYYY-MM-<feature-slug>-prototype-prompt.md`.

---

## Sub-Mode: Refine

Take an existing prototype and a round of feedback — from user testing, a stakeholder review, or a `pm-design` critique — and produce the next iteration's prompt. This picks up mid-flow rather than starting over.

### Step 1: Gather Inputs

Ask for whichever isn't already provided:
- **What exists now** — a description of the current screens/components, a link, a screenshot, or the original Build-mode output
- **What needs to change** — specific feedback items (bullet list, a `pm-design` critique's Priority Issues, or raw user testing notes)

If the feedback is vague ("users were confused"), ask what specifically they did or said — don't guess at the fix.

### Step 2: Translate Feedback into Specific Changes

For each feedback item, name the concrete change — not "improve the onboarding" but "remove step 3 of the signup flow and merge its one required field into step 2." If a feedback item is too vague to act on, flag it rather than inventing a fix.

### Step 3: Generate the Two (or Three) Outputs

#### Block 1: Iteration Prompt for UI Generator Tool

A prompt to paste into the existing Lovable/Figma Make project (not a fresh build). Lead with what's changing, not a restatement of the whole app.

```
[PASTE INTO LOVABLE / FIGMA MAKE — ITERATION]

Update the existing [app/screen name] to:
- [Specific change 1]
- [Specific change 2]
- [Specific change 3]

Keep everything else as-is.
```

#### Block 2: Change Log

Maps each change back to the feedback that drove it — useful for showing a stakeholder or test participant what was actually addressed.

```
| Feedback | Change Made | Screen Affected |
|---|---|---|
| [What was said/observed] | [Specific change] | [Screen] |
```

#### Block 3: Updated Mock Data (only if needed)

Only include this block if the changes introduce new fields, states, or data that need realistic sample values. Skip it otherwise.

### Step 4: Ask Before Saving

Same as Build mode — ask where to save, and default to versioning the filename (e.g. `..._prototype-prompt-v2.md`) rather than overwriting the original.
