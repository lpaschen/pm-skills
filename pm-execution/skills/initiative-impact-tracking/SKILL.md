---
name: initiative-impact-tracking
description: Generate a pre-launch hypothesis, format an initiative log entry, or write a monthly learning doc entry — the three parts of the initiative impact tracking process
argument-hint: "hypothesis | log | learning — followed by initiative details"
allowed-tools: [Read, Write, Glob]
---

# Initiative Impact Tracking

Help a PM execute the initiative impact tracking process. This skill handles three distinct outputs that work together to create a feedback loop between what ships and what it produces.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments to detect which mode they need:
- **hypothesis** — generate a pre-launch hypothesis doc for a new initiative
- **log** — create or update an initiative log entry (new launch or a 7/30/60-day check-in)
- **learning** — format a monthly learning doc entry

If no mode is clear from the arguments, ask: "Which do you need help with: a pre-launch hypothesis, an initiative log entry, or a monthly learning doc entry?"

---

## Mode 1: Pre-Launch Hypothesis

### What it is
Before any initiative ships, the PM documents what metric they expect to move, by how much, and why. This becomes the anchor for the post-launch review.

### Step 1 — Collect inputs

Ask for anything not already provided:

1. **Initiative name** — what is it called?
2. **Owner** — who is the PM?
3. **Target KPI** — which metric are you trying to move? (e.g., 7-day retention, activation rate, feature adoption)
4. **Expected direction and magnitude** — by how much and which way? (e.g., increase by 8%, reduce drop-off from 40% to 32%)
5. **Reasoning** — why do you believe this initiative will move that metric? What is the mechanism?
6. **Current baseline** — where does that metric stand today?
7. **Launch date** — when does it ship?

Do not ask for everything at once. If the user has provided context, infer what you can and only ask for what is genuinely missing.

### Step 2 — Generate the hypothesis

Output the hypothesis in this format:

---

**Initiative:** [Name]
**Owner:** [PM Name]
**Launch date:** [Date]

**Hypothesis**
We expect [initiative name] to move [metric] [direction] by [magnitude] because [reason — the mechanism that connects the initiative to the metric outcome].

**Baseline**
[Metric] currently sits at [current value], measured as of [date or timeframe].

**Success looks like**
| Checkpoint | Target | Rationale |
|---|---|---|
| 7 days | [value] | Early signal — [what this early read tells us] |
| 30 days | [value] | Directional read — [what this tells us about trajectory] |
| 60 days | [value] | Fuller picture — [what we can conclude at this point] |

**What could make this wrong**
[1-2 sentences on the assumptions this hypothesis rests on, and what would invalidate it]

---

### Step 3 — Confirm and save

Show the output to the user and ask: "Does this look right, or do you want to adjust anything before I save it?"

Once confirmed, save to:
`~/Documents/product_hub/outputs/hypotheses/[initiative-slug]-hypothesis.md`

If the outputs/hypotheses folder does not exist, create it.

---

## Mode 2: Initiative Log Entry

### What it is
A structured entry for the shared initiative log — either a new row at launch, or a check-in update at 7, 30, or 60 days.

### Step 1 — Determine what type of entry

Ask: "Is this a new entry at launch, or a check-in update for an existing initiative?"

**For a new entry at launch**, collect:
1. Initiative name and owner
2. Launch date
3. Target KPI(s) and expected direction
4. Hypothesis (or ask them to run Mode 1 first if they haven't written one)

**For a check-in update**, collect:
1. Initiative name
2. Which check-in: 7-day, 30-day, or 60-day
3. What the metric is showing now
4. Whether the signal is on track, off track, or inconclusive
5. Any context that explains the number (attribution caveats, confounds, early vs. late data)
6. For 60-day only: a verdict (moved as expected / inconclusive / did not move)

### Step 2 — Format the log entry

Output the entry ready to paste into the shared initiative log. Use this structure:

---

**Initiative log entry — [Initiative Name]**
*[New Entry / 7-Day Check-in / 30-Day Check-in / 60-Day Check-in] — [Date]*

| Field | Value |
|---|---|
| Initiative | [Name] |
| Owner | [PM Name] |
| Launch date | [Date] |
| Target KPI(s) | [Metric(s) and expected direction] |
| Hypothesis | [One sentence summary] |
| 7-day check-in | [Value and signal — or "pending"] |
| 30-day check-in | [Value and signal — or "pending"] |
| 60-day check-in | [Value and signal — or "pending"] |
| Verdict | [Moved as expected / Inconclusive / Did not move — or "pending"] |

**Check-in notes**
[Any context the number needs — attribution notes, confounds, what to watch for next]

---

### Step 3 — Confirm

Show the entry and ask: "Ready to copy this into the log, or do you want any changes?"

Do not save this to a file unless the user asks — the log lives in Google Sheets.

---

## Mode 3: Monthly Learning Doc Entry

### What it is
A short, structured entry for the monthly learning doc — a reflection on one thing learned from users or data, and what the team plans to do about it. This is not a status update. It is a signal that the team is adapting based on what they see.

### Step 1 — Collect inputs

Ask for anything not already provided:

1. **What did you learn?** — Describe the learning in one or two sentences. Be specific. Not "users want better analytics" but "users in the 50-100 link tier are not opening the weekly summary because the subject line doesn't signal value."
2. **What was the source?** — User interview, A/B test result, support ticket spike, data analysis, research session, NPS feedback, etc. Be specific about which one.
3. **Why does it matter to the business?** — Connect the learning to a metric, a segment, or a strategic bet. What does this tell us about where we are?
4. **What are you doing about it?** — Follow-on action or next bet. This can be "running a follow-up interview study," "deprioritizing X in favor of Y," "updating the hypothesis for [initiative]," or "no action yet — flagging for roadmap review."

If the user has already shared some of this context, pull from it rather than re-asking.

### Step 2 — Generate the entry

Output the entry in this format:

---

**Monthly Learning — [Month Year]**
**Submitted by:** [PM Name, if known]

**What we learned**
[A tight, specific summary of the learning — 2-4 sentences. Written in plain language, active voice, no hedging.]

**Source**
[Specific source: e.g., "Five moderated user interviews conducted March 18-21 with paid users in the Professional tier" or "A/B test on the weekly digest subject line, n=12,400, run March 3-17"]

**Why it matters**
[How this connects to a business metric, a segment the team cares about, or a strategic question on the roadmap — 2-3 sentences.]

**What we're doing about it**
[Concrete follow-on action or explicit acknowledgment that this is being flagged without immediate action, and why.]

---

### Step 3 — Confirm and save

Show the entry and ask: "Does this capture it accurately? I can adjust the framing or save this as a local draft."

If the user wants to save it:
- Save to: `~/Documents/product_hub/outputs/monthly-learnings/[YYYY-MM]-learning-[slug].md`
- If the folder does not exist, create it.

---

## Tone and Style

All outputs must follow these rules. They apply to every sentence.

- **Direct and specific** — "activation rate dropped 4 points among users who skipped onboarding" not "some users are having trouble getting started"
- **No hedging** — state what you know as fact; flag uncertainty explicitly ("this is directional — sample size is small") rather than softening everything
- **No em dashes** — use commas, colons, or a new sentence instead
- **No emojis**
- **No passive voice** — "users skipped the onboarding step" not "the onboarding step was skipped"
- **Numbers over adjectives** — "up 12% from baseline" not "meaningfully higher than before"
- **Short paragraphs** — three sentences max before a line break. Dense walls of text make the doc harder to scan and act on.
