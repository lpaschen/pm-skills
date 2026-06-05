# Shape Up Methodology Reference

Source: Basecamp's Shape Up book (Ryan Singer). This is a condensed reference for pitch review purposes.

---

## What a Pitch Is

A pitch is a shaped idea — not a spec, not a ticket, not a PRD. It communicates enough to make a betting decision. The person reading it is a senior leader deciding whether to bet a cycle on this problem. The person writing it is responsible for having done enough thinking that the team isn't discovering the shape of the work mid-sprint.

Pitches are written *before* a cycle. The betting table decides what goes into a cycle. Teams build during the cycle. Pitches are not requirements documents — they set boundaries and constraints, not step-by-step instructions.

---

## The Five Elements (Required)

### 1. Problem
- States a specific, real problem — not a feature request
- Grounded in customer or business evidence, not assumption
- Clear about *who* is affected and *how* they're currently working around it
- Distinguishes between what we know and what we believe
- Does NOT lead with a solution

**Common failure modes:**
- Vague problem ("customers want better organization")
- Solution disguised as a problem ("add a folders feature")
- No evidence — assertion without supporting data or customer signal
- Conflates symptoms with root cause
- Missing the counterfactual: what happens if we don't solve this?

### 2. Appetite
- A time box, not an estimate — this is how much time we're *willing to spend*, not how long we think it will take
- Must be one of: Small Batch (1–2 weeks) or Big Batch (6 weeks)
- The appetite shapes the solution, not the other way around
- Should be justified — why this appetite for this problem?

**Common failure modes:**
- Appetite stated as estimate ("this will take 6 weeks")
- No justification for the time box
- Appetite that implies a much larger solution than the pitch describes
- Missing the tradeoff: what are we *not* doing with this appetite?

### 3. Solution
- Describes the *shape* of the solution — enough to hand off, not a full spec
- Uses fat marker sketches, breadboarding, and/or written description
- Shows key interactions and flows, not pixel-perfect design
- Bounded: the team knows what's in scope and can make decisions within those bounds
- Does NOT prescribe implementation details

**Common failure modes:**
- Under-specified: the team would still have to discover the shape during the cycle
- Over-specified: reads like a PRD, constrains implementation unnecessarily
- Solution doesn't fit the appetite (a 6-week solution described for a 4-week appetite)
- Key decisions left unresolved (e.g., "the team can figure out the UX")
- Scope creep baked in: "and also..." additions that inflate the work

### 4. Rabbit Holes
- Explicitly calls out the parts of the solution that *look* tractable but could blow up
- Each rabbit hole should have a resolution: either "here's how to avoid it" or "this is explicitly out of scope"
- Includes technical risks, edge cases, and UX traps
- Honest about unknowns — doesn't paper over uncertainty

**Common failure modes:**
- Rabbit holes listed without resolution (just a list of risks)
- Missing obvious rabbit holes that the reviewer can spot from the outside
- Rabbit holes that are actually requirements in disguise
- Technical debt or migration complexity that isn't acknowledged

### 5. No-Gos
- Explicit list of what is NOT in scope
- Prevents scope creep during the cycle
- Should be specific enough to be actionable ("no per-feature toggles" vs. "no extra features")
- Reflects decisions made *by the shaper*, not deferred to the team

**Common failure modes:**
- No-gos that are too vague to be enforceable
- Missing obvious no-gos (things a reader would assume are in scope)
- No-gos that contradict the solution description
- No-gos that suggest the scope is already under pressure

---

## Secondary Elements (Strengthening)

### Open Questions
- Things the shaper knows are unresolved
- Should be flagged with owners or conditions for resolution
- Should NOT be fundamental to whether the pitch is viable — those are blockers, not open questions

### What Success Looks Like
- Measurable or observable outcomes from the cycle
- Helps the team know when they're done
- Prevents "done" from being subjective

### Blocked/At-Risk Evidence
- Specific accounts, revenue, or user evidence
- Converts assertion into stake

---

## The Betting Table Test

A pitch passes the betting table test if a senior leader can answer all of these:

1. What problem are we solving, and for whom?
2. How much time are we willing to spend?
3. What will the team build, roughly?
4. What are we explicitly NOT building?
5. What could go wrong, and how are we handling it?
6. What evidence exists that this is worth a cycle?

---

## Shape Up vs. Traditional PM Pitfalls

| Traditional trap | Shape Up equivalent |
|---|---|
| Spec every interaction | Fat marker sketch — show the shape, not the pixels |
| Estimate how long | Set the appetite — decide how much it's worth |
| List all requirements | Define boundaries — what's in, what's not |
| Surface risks at sprint review | Surface rabbit holes before the cycle starts |
| Output: features | Output: solved problems |

---

## Appetite Calibration Guide

| Appetite | Appropriate for |
|---|---|
| 1–2 weeks (Small Batch) | Single well-understood interaction, known technical path, minimal integration |
| 6 weeks (Big Batch) | Multi-surface work, unclear solution space, significant backend changes, new user model |

If you're unsure which appetite fits, the problem likely needs more shaping.
