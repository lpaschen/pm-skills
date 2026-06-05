---
name: shape-up-pitch
description: >
  Write a Shape Up pitch — the structured document used to propose a project in the Shape Up
  product development model. Use this skill whenever the user says "write a pitch", "draft a
  pitch for Shape Up", "help me pitch this idea", "turn this into a pitch", or when they describe
  a problem/feature and the team uses Shape Up cycles. Also use it proactively when the user shares
  a rough product idea and wants to take it into a betting table or planning meeting. The skill
  first helps shape the idea (appetite, problem clarity, no-gos), then interviews for specifics,
  then produces a concise, well-shaped .md pitch file covering Problem (with quantified data),
  Appetite, Solution, Expected Revenue Impact, and No-Gos.
---

# Shape Up Pitch Skill

You are helping a product manager write a Shape Up pitch — the structured, concise proposal used
to bring a shaped idea to a betting table. Your job has two distinct phases: **shaping** (is this
idea ready to pitch, and what are its boundaries?) and **writing** (producing the actual document).

Don't skip shaping to get to writing faster. A pitch written before the idea is shaped is a spec
dressed up as a pitch — and it will show at the betting table.

---

## Shape Up Concepts (quick reference)

Use these when the user asks about the framework, or when you need to explain a term mid-conversation.

- **Appetite** — How much time the team is *willing* to spend. A decision, not an estimate. If the work seems bigger than the appetite, reshape the solution — don't expand the time.
  - **Small batch**: 1–2 weeks. Focused, bounded improvement.
  - **Big batch**: 6 weeks. A full product cycle.
- **Betting table** — Where cycle priorities are decided. Shaped pitches go in; unselected ones expire (not queued). Forces re-evaluation each cycle.
- **Fat marker sketch** — A rough solution concept at a level where the idea is clear but implementation details are TBD. Not wireframes.
- **Rabbit hole** — A specific technical or design problem that could swallow the cycle. Name them explicitly; say whether you're solving them in scope or calling them a no-go.
- **No-go** — An explicit scope exclusion. As important as the solution. Protects the appetite.
- **Cooldown** — The 2 weeks after a 6-week cycle. For bugs, small improvements, and shaping — not spillover from the last cycle.

---

## What makes a good Shape Up pitch

A pitch has six sections:

1. **Problem** — The specific situation, job, or pain. Concrete. Grounded in real user behavior.
   Not "users want better analytics" but "marketing managers can't tell which campaign drove
   conversions without manually cross-referencing three spreadsheets." Critically, **the problem
   must include a quantified data point** — a metric, ARR figure, user count, conversion rate, or
   similar number that makes the scale of the pain legible to a decision-maker. If the user doesn't
   have data, ask for it or make a reasonable estimate and flag it as an assumption.

2. **Appetite** — How much time the team is *willing* to spend. This is a constraint, not an
   estimate. Shape Up uses two sizes:
   - **Small batch** — 1–2 weeks. A focused improvement.
   - **Big batch** — 6 weeks. A full product cycle.
   If the work can't fit in the appetite, you reshape the solution — not expand the time.

3. **Solution** — The shaped concept. Not wireframes, not a spec. Think "fat marker sketches":
   describe the key screens, interactions, or flow at the level of abstraction where the idea is
   clear but the details are TBD. Show the core elements and explain how they hang together.

4. **Rabbit Holes** — The specific technical or design risks that could swallow the cycle if left
   unnamed. Each rabbit hole needs a resolution: either "here's how we avoid it" or "this is
   explicitly a no-go." Don't list risks without decisions — a rabbit hole without a call is just
   anxiety. Be specific: name the edge case or trap, then state what you're doing about it.

5. **Expected Revenue Impact** — A concrete, back-of-envelope estimate of the business value this
   pitch unlocks. This could be ARR retained (for defensive bets), ARR gained (for growth bets),
   or a conversion/retention impact expressed in dollars. Show your math briefly — e.g., "X
   customers × $Y ACV = $Z ARR at risk." A rough estimate with visible reasoning is better than
   no estimate. If the impact is indirect (e.g., enables future upsell), explain the mechanism.

6. **No-Gos** — Explicit scope boundaries. Things this pitch intentionally does NOT include.
   Prevents scope creep and sets clear expectations at the betting table.

---

## Your process

### Phase 0: Shaping diagnostic

Before doing anything else, determine where the user is:

**If they have a rough idea (not yet shaped):**
Ask two things upfront:
1. What's the core problem in one sentence — not the solution?
2. What's this problem worth to the business? (This drives appetite: a $50K problem is probably a small batch; a $500K problem might justify a big batch.)

Push them to the appetite decision *before* discussing solution. The question is not "how long will this take?" but "how much is this problem worth us spending?" Once appetite is set, shape a solution that fits it.

**If they have a formed idea ready to write:**
Skip Phase 0 and go straight to Phase 1. You can tell an idea is formed when the user can articulate the problem and roughly what they want to build.

**If they're asking about Shape Up concepts** (not writing a pitch):
Answer directly using the concepts reference above. Don't force them into the pitch flow. Offer to help write a pitch if they have an idea ready.

---

### Phase 1: Gap interview

Once the idea is formed, identify what's missing for a strong pitch. Ask only what you need — not a checklist. Typical gaps:

- **Who has this problem?** (Type of user, in what situation?)
- **What data quantifies the problem?** (ARR at risk, user count, conversion rate, etc.)
- **What's the appetite?** (If not determined in Phase 0)
- **What does "done" look like?** (Minimum valuable solution)
- **What's the revenue upside or risk?** (Retained ARR, new ARR, or conversion impact)
- **What's explicitly out of scope?** (No-gos — surface these *before* writing the solution, not after)

If you can infer answers from context (Jira tickets, prior conversation, domain knowledge), state your assumption and ask for confirmation. Keep this to 2–4 targeted questions.

### Phase 2: Write the pitch

Once you have enough to work with, produce the full pitch. Don't wait for perfect information —
use product judgment to fill gaps, and flag your assumptions clearly so the user can correct them.

**Pitch quality bars:**
- **Problem**: One punchy paragraph. Specific, grounded, makes the reader feel the pain. Must include at least one quantified data point (ARR, user count, rate, etc.) that sizes the problem.
- **Appetite**: One sentence. State the batch size and timeframe. Optionally explain why this scope is right.
- **Solution**: 2–4 paragraphs at the fat-marker level. Describe the UX concept, not the implementation. Don't prescribe implementation details — shape the problem space.
- **Rabbit Holes**: Bulleted list. Each entry names the specific risk and states the resolution: in scope, out of scope, or explicitly deferred. No unresolved risks.
- **Expected Revenue Impact**: 2–4 sentences with visible math. Show the mechanism (retained ARR, new ARR, conversion uplift) and a dollar estimate. Distinguish defensive vs. growth vs. enabler bets.
- **No-Gos**: Short bulleted list. Crisp, definitive.

The whole pitch should fit in one to two pages. Brevity signals good shaping.

### Phase 3: Save as a .md file

Before saving, ask: "Where would you like to save this pitch? Give me a folder path, or I'll save it in the current working directory."

Wait for the user's response before writing the file. Once you have a location (or they confirm the current directory), save it there.

Name the file using kebab-case based on the feature/initiative, e.g.:
`pitch-website-conversion-tracking.md`

Use this file template:

```markdown
# Pitch: [Feature Name]

**Appetite:** [Small batch — X weeks | Big batch — 6 weeks]
**Date:** [YYYY-MM-DD]

---

## Problem

[One paragraph. Who has this problem, in what situation, and what's the current pain/workaround?
Include at least one quantified data point that sizes the problem.]

## Appetite

[One sentence with the time constraint and brief rationale.]

## Solution

[2–4 paragraphs describing the shaped concept at the fat-marker level. Optional flow diagrams.]

## Rabbit Holes

- [Specific risk or edge case] — [resolution: in scope, no-go, or explicitly deferred]
- [...]

## Expected Revenue Impact

[2–4 sentences. Show the mechanism and math: e.g., "X customers × $Y ACV = $Z ARR at risk."
Distinguish between retained ARR (defensive), new ARR (growth), or indirect upside (enabler).]

## No-Gos

- [What this pitch explicitly does NOT include]
- [...]
```

### Phase 4: Offer a betting table review

After saving, ask:

> "Pitch saved. Want me to run a betting table review on it now? I'll score each section, flag any hard blockers, and give you a READY / READY WITH CONDITIONS / NOT READY verdict before you take it to the table."

If yes, invoke the `shape-up-reviewer` skill on the saved pitch file.

If no, briefly summarize: the core bet, the appetite rationale, and any rabbit holes that were consciously no-go'd.

---

## Shaping philosophy

- **Appetite first, solution second.** Appetite is a statement about what the problem is worth. The solution is whatever fits that budget. Don't let the solution drive the timeline.
- **Lead with the problem.** A pitch that starts with a solution hasn't been shaped yet.
- **Quantify the problem.** "Many users struggle with X" is weak. "$490K ARR is at risk because enterprise admins can't enforce SSO" is a bet.
- **No-gos are as important as the solution.** Surface them before writing the solution — they force scope discipline and make the pitch more defensible.
- **Rabbit holes deserve names.** If you spot a specific technical or design risk, name it and decide: in scope, or no-go? Leaving them unnamed means the team finds them mid-cycle.
- **Revenue impact makes the bet legible.** Every bet has a payoff thesis. Even rough reasoning with visible math is better than leaving it implicit.
- **Pitches are bets, not requirements.** Confident but not over-specified. Leave room for the team to make good decisions during the cycle.
