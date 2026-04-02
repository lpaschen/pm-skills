---
description: Prioritise a feature list or backlog using RICE, MoSCoW, Kano, ICE, or Opportunity Scoring
argument-hint: "[rice|moscow|kano|ice|opportunity] <feature list or backlog>"
---

# /prioritize -- Feature & Backlog Prioritisation

Apply a structured prioritisation framework to rank features, initiatives, or backlog items — and produce a decision-ready output.

## Invocation

```
/prioritize rice [paste feature list]
/prioritize moscow [paste backlog or initiative list]
/prioritize kano [paste feature list with user types]
/prioritize ice [paste ideas or experiments to rank]
/prioritize opportunity [paste jobs-to-be-done or opportunity areas]
/prioritize                    # asks what you're prioritising and recommends a framework
```

## Workflow

### Step 1: Choose the Right Framework
If no framework is specified, ask:
- "How many items are you ranking?" (>10 → RICE or ICE; <10 → MoSCoW or Kano)
- "Is this for a roadmap (RICE/MoSCoW), experiment backlog (ICE), or feature discovery (Kano/Opportunity Scoring)?"

Framework guide:
| Framework | Best For |
|---|---|
| **RICE** | Roadmap items — balances reach, impact, confidence, effort |
| **MoSCoW** | Release scoping — quick must/should/could/won't |
| **Kano** | Feature value — delighters vs. basics vs. performance |
| **ICE** | Experiments — fast ranking by impact, confidence, ease |
| **Opportunity Scoring** | Discovery — importance vs. satisfaction gaps |

### Step 2: Gather Inputs
For RICE/ICE, ask for estimates if not provided. For Kano, ask for user segment. For Opportunity Scoring, ask for importance and satisfaction ratings.

### Step 3: Produce the Prioritised Output

#### RICE Output
```
## RICE Prioritisation

| Feature | Reach | Impact | Confidence | Effort | RICE Score | Rank |
|---|---|---|---|---|---|---|
| [Feature] | [users/period] | [0.25–3] | [%] | [person-weeks] | [R×I×C/E] | |

**Top Priority:** [Feature + rationale]
**Defer:** [Features to push out and why]
**Watch Out:** [High-effort items that need re-scoping]
```

#### MoSCoW Output
```
## MoSCoW Prioritisation — [Release/Sprint Name]

**Must Have (launch blockers):**
- [Feature] — [why it's P0]

**Should Have (high value, not launch-blocking):**
- [Feature] — [why it's P1]

**Could Have (nice to have):**
- [Feature] — [condition under which it moves up]

**Won't Have (this cycle):**
- [Feature] — [when it might be revisited]
```

#### ICE Output
```
## ICE Prioritisation

| Idea | Impact (1-10) | Confidence (1-10) | Ease (1-10) | ICE Score | Rank |
|---|---|---|---|---|---|
| [Idea] | | | | | |

**Run First:** [Top 3 experiments + rationale]
```

### Step 4: Challenge the Output
Surface any items that seem mispriced — underestimated effort, overestimated confidence, or strategic importance not captured by the score.

## Notes
- Scores are tools for conversation, not final answers — always sanity-check with judgment
- If stakeholders disagree on scores, that disagreement is worth surfacing explicitly
- Pair with `/write-prd` once priorities are set to spec the top items
