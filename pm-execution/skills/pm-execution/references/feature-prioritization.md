# Feature Prioritization

Apply the right prioritization framework to any backlog and produce a clear, decision-ready ranking with rationale — not just a sorted list.

## Step 1: Choose the Framework

If not specified, ask:
- "How many items are you ranking?" (>10 → RICE or ICE; <10 → MoSCoW or Kano)
- "Is this for a roadmap (RICE/MoSCoW), experiment backlog (ICE), or feature discovery (Kano/Opportunity Scoring)?"

| Framework | Best For |
|---|---|
| **RICE** | Roadmap items — balances reach, impact, confidence, effort |
| **MoSCoW** | Release scoping — quick must/should/could/won't, good for stakeholder alignment |
| **Kano** | Feature value — delighters vs. basics vs. performance |
| **ICE** | Experiments — fast, subjective ranking before data exists |
| **Opportunity Scoring** | Discovery — importance vs. satisfaction gaps, identifying underserved needs |

## Step 2: Gather Inputs

For RICE/ICE, ask for estimates if not provided. For Kano, ask for user segment. For Opportunity Scoring, ask for importance and satisfaction ratings.

## Step 3: Score and Produce the Output

### RICE

**Formula:** (Reach × Impact × Confidence) ÷ Effort

| Factor | Definition | Scale |
|--------|-----------|-------|
| Reach | Users impacted per quarter | Actual number |
| Impact | Effect on goal per user | 0.25 / 0.5 / 1 / 2 / 3 |
| Confidence | How certain are you? | 50% / 80% / 100% |
| Effort | Person-months required | Actual number |

```markdown
## RICE Prioritization

| Feature | Reach | Impact | Confidence | Effort | RICE Score | Rank |
|---|---|---|---|---|---|---|

**Top Priority:** [Feature + rationale]
**Defer:** [Features to push out and why]
**Watch Out:** [High-effort items that need re-scoping]
```

### MoSCoW

Categorize each feature — always ask "Must have for *what*?" (launch, sprint, quarter) before categorizing:

```markdown
## MoSCoW Prioritization — [Release/Sprint Name]

**Must Have (launch blockers):**
- [Feature] — [why it's P0]

**Should Have (high value, not launch-blocking):**
- [Feature] — [why it's P1]

**Could Have (nice to have):**
- [Feature] — [condition under which it moves up]

**Won't Have (this cycle):**
- [Feature] — [when it might be revisited]
```

### ICE

**Formula:** Impact + Confidence + Ease (each 1–10). Quick and subjective — good for early decisions before data exists.

```markdown
## ICE Prioritization

| Idea | Impact (1-10) | Confidence (1-10) | Ease (1-10) | ICE Score | Rank |
|---|---|---|---|---|---|

**Run First:** [Top 3 experiments + rationale]
```

### Kano

Classify each feature:
- **Basic (Must-be):** Expected; absence causes dissatisfaction
- **Performance:** More = better satisfaction; linear relationship
- **Excitement (Delighters):** Unexpected; creates delight; absence is neutral
- **Indifferent:** Users don't care either way
- **Reverse:** Some users want it, others don't

Recommend build order: all Basic features first → Performance features for key use cases → 1–2 Excitement features per release.

## Step 4: Challenge the Output

Surface any items that seem mispriced — underestimated effort, overestimated confidence, or strategic importance not captured by the score.

## Guidelines

- Always anchor prioritization to a specific goal or metric — never prioritize in a vacuum
- Flag when two features have similar scores but very different risk profiles
- If stakeholder politics are influencing prioritization, name it explicitly and suggest separating the framework score from the final decision
- Recommend revisiting priorities every 2 weeks minimum
- Never produce a single-column ranked list without rationale — explain the top 3 and bottom 3 decisions
- Scores are tools for conversation, not final answers — always sanity-check with judgment
- If stakeholders disagree on scores, that disagreement is worth surfacing explicitly
