---
name: shapeup-pitch
description: Use this skill to pressure test a product idea using the Shape Up pitch format, or to help a PM develop, stress-test, or critique a Shape Up pitch. Trigger whenever the user mentions pitching an idea, shaping work, Shape Up methodology, betting table prep, writing a pitch, validating a product idea for a cycle, or asks to pressure test any product concept. Also trigger when a user wants to think through a product problem structurally before writing it up, even if they don't mention Shape Up explicitly.
---

# Shape Up Pitch Builder & Pressure Tester

This skill helps PMs develop and pressure test product ideas using the Shape Up pitch format. It works in two modes:

1. **Build mode** — guide the user through structuring a rough idea into a full pitch
2. **Pressure test mode** — critique an existing idea or draft pitch against Shape Up standards

---

## The Shape Up Pitch Structure

A complete pitch has six sections. Use all of them.

### 1. Problem
*What's the customer situation? What's going wrong, and for whom?*

- Ground it in a real customer scenario, not a category ("users are frustrated")
- Name the job-to-be-done, not the feature request
- Be specific about who experiences this and when
- Avoid scope creep — one problem per pitch

**Pressure test questions:**
- Can you describe a specific customer in a specific moment experiencing this?
- Is this a problem Bitly is uniquely positioned to solve, or could any tool fix it?
- How do you know this is a real problem vs. an assumed one? What signal do you have?
- Is this the problem, or a symptom of a deeper problem?

---

### 2. Appetite
*How much time is this worth? (Not: how long will it take.)*

- State a specific cycle length: small batch (1–2 weeks) or big batch (6 weeks)
- Appetite is a strategic judgment, not an estimate — you're saying what the problem is *worth*
- If you can't justify the appetite, the pitch isn't ready

**Pressure test questions:**
- Why is this worth a 6-week cycle and not a 2-week spike?
- What would you cut if you had only half the time?
- Is there a smaller version of this that would still validate the core value?
- What's the opportunity cost — what *won't* get built if this wins the bet?

---

### 3. Solution (the Sketch)
*A rough shape of the solution — enough to de-risk, not enough to over-specify.*

- Fat-marker sketches, not wireframes
- Show the key interaction or flow that makes the problem go away
- Don't design the UI — show the concept
- The team fills in the details; your job is to bound the solution space

**Pressure test questions:**
- Is this sketch constraining enough that the team won't go in 10 directions?
- Is it open enough that the team has room to solve it their way?
- Does the solution actually address the problem as stated, or did you drift?
- Have you seen a real customer react to anything close to this concept?

---

### 4. Rabbit Holes
*What are the dangerous directions this could go? What are you explicitly ruling out?*

- Name the traps: edge cases that could swallow the cycle, technical landmines, scope that sounds adjacent but isn't
- Be explicit: "We are NOT building X in this cycle"
- This section is where your product expertise is most visible

**Pressure test questions:**
- What's the thing that sounds obviously related but you're choosing not to do?
- What technical dependencies could blow up the timeline?
- What customer request will come in the moment this ships that you're choosing to defer?
- Have you talked to engineering about any known unknowns?

---

### 5. No-Gos
*What are you explicitly out of scope — forever, or for this cycle?*

- Different from rabbit holes: rabbit holes are risks, no-gos are decisions
- Draw the line clearly so the team doesn't revisit scope mid-cycle
- Distinguish "not now" from "not ever"

**Pressure test questions:**
- Is each no-go a principled decision or just a time-box compromise?
- Will any of these no-gos frustrate customers in a way that undermines adoption of what you do ship?
- Have you pre-aligned with anyone who might push back on these constraints?

---

### 6. Open Questions (Pre-Pitch)
*What do you need to resolve before this pitch is ready for the betting table?*

This section is the pressure test itself — a well-shaped pitch should have very few open questions left. Many open questions = the idea isn't ready.

**Categories of open questions:**

**Customer/problem validity**
- Have you talked to enough customers to be confident in the problem?
- Is there a segment assumption baked in that you haven't validated?

**Solution feasibility**
- Is there a technical dependency or constraint you need an engineering read on?
- Does the sketch assume a capability that doesn't exist yet?

**Strategic fit**
- Does this ladder into a ranked problem the company has committed to solving?
- Is there a stakeholder who needs to be aligned before this goes to the betting table?

**Data/sizing**
- Do you know how many customers are affected?
- Do you have a hypothesis about what metric this moves?

**Appetite justification**
- Can you make the case for why this is worth this cycle vs. something else?

---

## How to Use This Skill

### If the user has a rough idea:
1. Ask for a one-paragraph description of the idea and the problem it solves
2. Walk through each section, asking the pressure test questions
3. Help them draft each section in sequence
4. Surface the open questions at the end — things they need to resolve before pitching
5. Produce a complete pitch draft they can copy and refine

### If the user has a draft pitch:
1. Read the full draft
2. Score each section: **Strong / Needs work / Missing**
3. Call out where problem and solution have drifted from each other
4. Identify the most dangerous rabbit hole they haven't named
5. Surface the open questions they're implicitly carrying but haven't articulated
6. Return a critiqued version with inline comments and a revised draft if needed

---

## Common Failure Modes to Flag

| Failure mode | What it looks like | What to say |
|---|---|---|
| Feature pitch | Solution described before problem | "What's the customer situation this solves? Start there." |
| Vague problem | "Users want better analytics" | "Who specifically? In what moment? What goes wrong?" |
| No appetite reasoning | Time stated, not justified | "Why is this worth 6 weeks? What's the tradeoff you're making?" |
| Wireframe as sketch | Too much UI detail | "Strip it back — what's the core concept in 3 boxes?" |
| Missing rabbit holes | Section empty or generic | "What's the thing that sounds related that you're choosing NOT to do?" |
| No open questions | Pitch seems too clean | "What are you uncertain about? A pitch with no questions is a pitch that hasn't been stress-tested." |
| Problem/solution drift | Solution doesn't address stated problem | "Your problem is X but your solution addresses Y — which is it?" |

---

## Shape Up Principles to Keep in Mind

- **Pitches are bets, not plans.** The betting table picks winners. Your pitch competes against other pitches. Write it like you're making a case, not filing a requirement.
- **A pitch is not a PRD.** No acceptance criteria, no user stories, no exhaustive edge case handling. The team figures that out in the cycle.
- **Appetite drives scope, not the other way around.** If the problem is worth 6 weeks, you find a 6-week solution. You don't estimate the solution and call that the appetite.
- **Shaping is the real PM work.** The pitch is the artifact. The customer conversations, the feasibility checks, the solution exploration — that's where expertise shows up.
- **Unfinished pitches don't go to the betting table.** If you have more than 2–3 open questions, keep shaping.

---

## Output Format

When producing a full pitch draft, use this structure:

```
## [Pitch Title]

### Problem
[Problem narrative]

### Appetite
[Cycle length + rationale]

### Solution
[Sketch description — can reference a diagram if one exists]

### Rabbit Holes
- [Risk 1]
- [Risk 2]

### No-Gos
- [Out of scope item 1]
- [Out of scope item 2]

### Open Questions (resolve before betting table)
**Customer/problem**
- [ ] [Question]

**Feasibility**
- [ ] [Question]

**Strategic fit**
- [ ] [Question]

**Appetite justification**
- [ ] [Question]
```
