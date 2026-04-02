---
description: Tailor a CV and cover letter to a specific job description with ATS optimisation and gap analysis
argument-hint: "<job title, company, or paste job description>"
---

# /apply -- Job Application Tailoring

Tailor your CV and cover letter to a specific role — optimise for ATS keyword matching, surface your most relevant experience, and identify gaps to address proactively.

## Invocation

```
/apply [paste job description]
/apply Senior PM at Stripe — [paste JD]
/apply                    # asks for the job description and your CV
```

## Workflow

### Step 1: Gather the Inputs
Ask for:
1. The job description (paste or key details)
2. Your CV or resume (paste or key experience points)
3. Anything specific you want to emphasise or de-emphasise

### Step 2: Analyse the Role
Before tailoring, produce:

```
## Role Analysis: [Title] at [Company]

**Core Requirements:** [The 3-4 non-negotiable skills or experiences]
**Nice to Haves:** [Secondary preferences from the JD]
**Key ATS Keywords:** [Exact phrases from the JD to mirror in the CV]
**What They're Really Looking For:** [Read between the lines — what problem is this hire solving?]
```

### Step 3: Tailor the CV

```
## CV Tailoring Recommendations

### Summary / Headline
[Rewritten to mirror the role's language and highlight the most relevant experience]

### Experience Bullets to Prioritise
[The 3-4 existing bullets that map most directly to the role's requirements — move these up]

### Experience Bullets to Rewrite
| Original | Tailored Version | Why |
|---|---|---|
| [Bullet] | [Rewritten with JD keywords + quantified impact] | [What this addresses] |

### Keywords to Add
[ATS keywords from the JD that are missing from your current CV — and where to add them]

### Sections to Trim
[Experience or skills that are irrelevant to this role and dilute the signal]
```

### Step 4: Write the Cover Letter

```
## Cover Letter: [Title] at [Company]

[Opening — specific hook: why this company, why this role, why now. No generic openers.]

[Paragraph 1 — The most relevant thing you've done that maps directly to their core need. One specific example with a result.]

[Paragraph 2 — Why you, why them. What draws you to this company specifically — their product, mission, or approach. Shows you've done the research.]

[Paragraph 3 — What you'd bring. Forward-looking: what you'd focus on in the first 90 days or what problems you'd be eager to solve.]

[Close — confident and direct. No "I hope to hear from you."]
```

### Step 5: Gap Analysis

```
## Gap Analysis

### Strengths for This Role
- [Where your background is a strong match]

### Gaps to Address
| Gap | How to Address It |
|---|---|
| [Missing experience] | [Frame adjacent experience / acknowledge and pivot] |

### Questions They'll Likely Ask
1. [Anticipated interview question based on the JD]
2. [Anticipated question based on a gap]
```

## Notes
- Never fabricate experience — reframe and quantify what you have
- The cover letter should add information the CV doesn't — not repeat it
- Mirror the JD's exact language for ATS, but make it sound natural in context
