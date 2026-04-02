---
description: Prepare a customer interview guide or synthesise research into structured insights
argument-hint: "[prep|synthesize] <topic, transcript, or research inputs>"
---

# /discover -- Customer Interview Prep & Research Synthesis

Two modes: **prep** creates a structured interview guide before you talk to customers, **synthesize** turns transcripts or mixed research inputs into prioritised findings.

## Invocation

```
/discover prep Enterprise users struggling with analytics dashboards
/discover prep [paste a feature brief or hypothesis to explore]
/discover synthesize [paste interview transcript or notes]
/discover synthesize [paste multiple sources — tickets, NPS, interviews]
/discover                    # asks which mode you need
```

## Modes

### Prep Mode

Build a discovery interview guide grounded in "The Mom Test" — questions that get honest signal, not validation.

#### Step 1: Clarify the Research Goal
Ask if not provided:
- "What behavior or problem are you investigating?"
- "Who are you interviewing — what user type or segment?"
- "What assumptions do you most need to test?"

#### Step 2: Generate the Interview Guide

```
## Discovery Interview Guide: [Topic]

**Research Goal:** [What you're trying to learn]
**Target Participant:** [User type, segment, qualifying criteria]
**Session Length:** [Recommended duration]

### Screener Questions
[3-4 questions to confirm the participant is right for this study]

### Warm-Up (5 min)
[2-3 low-stakes questions to build rapport and understand context]

### Core Questions (20-30 min)
[8-10 open-ended questions focused on past behaviour, not hypothetical opinions]

### Wrap-Up (5 min)
- "Is there anything about [topic] we didn't cover that you think is important?"
- "Who else on your team would have strong opinions about this?"

### What to Listen For
[3-4 signals that would confirm or challenge your key assumptions]
```

---

### Synthesize Mode

Turn raw research — transcripts, notes, support tickets, NPS responses — into a prioritised insight brief.

#### Step 1: Gather the Inputs
Ask the user to paste or upload the research material. Ask how many sources and what type (interviews, tickets, surveys, etc.).

#### Step 2: Generate the Synthesis

```
## Research Synthesis: [Topic]

**Sources:** [Types and volume of input]
**Participants / Responses:** [Count]

### Key Themes
| Theme | Frequency | Strength | Representative Quote |
|---|---|---|---|
| [Theme 1] | High/Med/Low | Strong/Weak signal | "[quote]" |
| [Theme 2] | | | |

### Top Insights (prioritised by impact + frequency)
1. **[Insight]** — [What users said/did + why it matters]
2. **[Insight]** — [What users said/did + why it matters]
3. **[Insight]** — [What users said/did + why it matters]

### Assumptions Confirmed
- [Assumption + evidence]

### Assumptions Challenged
- [Assumption + contradicting evidence]

### Recommended Next Steps
1. [Action — investigate further, build, kill, or pivot]
2. [Action]
```

## Notes
- In prep mode, push back on leading questions — reframe them as behaviour-focused
- In synthesize mode, distinguish between what users said vs. what they did
- Pair synthesize output with `/write-prd` to turn insights into requirements
