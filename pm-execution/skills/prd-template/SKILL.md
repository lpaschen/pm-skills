---
name: prd-template
description: Write a complete Product Requirements Document from a problem statement or feature idea
argument-hint: <problem-statement-or-feature-idea>
allowed-tools: [Read, Glob, Grep, Write, WebFetch, mcp__claude_ai_Figma__get_design_context, mcp__claude_ai_Atlassian__searchJiraIssuesUsingJql]
---

# PRD Template

Write a complete, structured Product Requirements Document from a problem statement, feature idea, or existing brief.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **Input**: A problem statement, feature idea, file path to an existing brief, or inline description of what to build
2. **Figma URL** (optional): A figma.com URL to pull design context from

## Instructions

### Step 1 — Gather inputs

- If the input looks like a file path, read it with the Read tool.
- If a Figma URL is provided, call `mcp__claude_ai_Figma__get_design_context` to understand the design being specced.
- If no arguments were provided, ask the user for the feature or problem they want to PRD before proceeding.

### Step 2 — Ask clarifying questions (if needed)

If the input is sparse or ambiguous, ask up to 3 targeted questions before writing. Good questions to ask:
- Who is the primary user affected?
- What does success look like in 90 days?
- Are there known constraints (technical, timeline, tier/access)?

Don't ask questions that can be reasonably inferred from the input.

### Step 3 — Write the PRD

Generate a complete PRD using the structure below. Follow the tone and style guidelines at the bottom of this skill exactly.

---

#### Document Title

```
YYYY/MM - Product - Team - Initiative
[Optional subtitle / project codename]
```

---

#### Summary Registry Row — DO NOT MODIFY STRUCTURE

*One-line snapshot of this initiative. The agent copies this row verbatim to the primary tab of the weekly SSOT sheet.*

| Initiative | PM Owner | Status | Expected Release | Goal / Impact | Confidence | Last Updated |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| [Initiative name] | [PM name] | Draft | [MM/DD-MM/DD YYYY] | [One-line goal / expected impact] | High | [YYYY-MM-DD] |

Required at commit time: Initiative Name, PM Owner, Current Status, Initial Planned Release Date, Primary KPI, and Level of Confidence. Leave a cell blank if a field is not yet known.

Status must be one of: `Draft`, `In Progress`, `Shipped`, `Paused`, `Cancelled`.
Confidence must be one of: `High`, `Medium`, `Low`.

---

#### Problem Statement

What problem are we solving, for whom, and why does it matter now? This section should:
- Describe the friction in specific, concrete terms — not vague ("users struggle") but precise ("users must re-apply the filter and manually re-add links every time a new link is created")
- Include relevant strategic context, market signals, or data that frames urgency
- Include real user research quotes if any were provided or can be inferred from context
- Explain the downstream consequence of the problem (what users do instead, what they abandon, what trust is lost)

Aim for 2–4 paragraphs. Every sentence should earn its place.

---

#### User Personas

Who is affected and what they are trying to accomplish. Cover:
- **Primary users**: the people whose workflow this directly changes
- **Secondary users**: anyone who consumes the output or is indirectly affected
- **Internal stakeholders**: teams or roles with a material interest in the outcome

One short paragraph per persona is enough. Be specific — name the job role, plan tier, or use pattern that defines them, not a generic archetype.

---

#### Solution Overview

A brief description of what you're building. Cover:
- The core idea and the key design decisions worth anchoring
- A high-level summary of the end-to-end user flow (or a link to a more detailed flow if one exists)
- What this solution does NOT include (scope boundaries)

Aim for 2–3 paragraphs. No implementation detail — describe the experience and the decision, not the code.

---

#### Goal & Expected Impact

| | |
|:---|:---|
| **Summary of Initiative** *1–3 sentences describing the active scope for this cycle.* | [Fill in here] |
| **Goal & Impact** *What outcome(s) we expect and why? Keep it business legible.* | [Fill in here] |
| **Primary KPI(s) to move** *The metric(s) this initiative is accountable for.* | [Fill in here] |
| **Confidence** *One of High / Medium / Low, plus a sentence on what drives the call.* | High |
| **Additional context** *Optional. Strategic framing, related initiatives, key links. Leave blank if not needed.* | [Fill in here] |

---

#### Requirements

Numbered sections, one per major area of functionality. Each section should have:
- A clear section title (e.g., "1. Persistent Filter as Dashboard Scope")
- 3–6 sub-requirements as bullet points
- Requirements written as "must" statements (e.g., "The dashboard must automatically include all links matching the active filter")
- No implementation details — specify what the system must do, not how

Cover the full surface area of the feature including:
- Core functionality
- Visibility / transparency (what users can see and understand)
- User controls (what users can change or override)
- Key edge cases and error states

---

#### Risks / Dependencies

##### Risks

| Risk | Description | Mitigation |
|:---:|:---:|:---:|
| [Risk 1] | [What could go wrong and why] | [How we reduce likelihood or impact] |
| [Risk 2] | [What could go wrong and why] | [How we reduce likelihood or impact] |

Include 2–4 risks specific to this feature. Avoid generic risks that apply to everything.

##### Dependencies

| Dependency | Description | Status |
|:---:|:---:|:---:|
| [Dependency 1] | [What we need and from whom] | [On track / At risk / Blocked] |
| [Dependency 2] | [What we need and from whom] | [On track / At risk / Blocked] |

---

#### Release / Launch Planning

##### Release Timeline

| | |
|:---|:---|
| **Initial planned release date** | [Fill in here] |
| **Changes to release date** *Each slip / acceleration with a one-line reason. Leave blank if no change.* | [Fill in here] |
| **Planned test stages** *e.g. Internal → 5% → 20% → GA. Include gates if there are any.* | [Fill in here] |

##### GTM Planning & Timeline

| | |
|:---|:---|
| **GTM launch date** *Date of the external / customer-visible launch moment. Use N/A for internal-only work.* | [Fill in here] |
| **GTM Plan** *Short summary of marketing / comms / sales enablement plan, or link to the GTM doc.* | [Fill in here] |
| **Changes to GTM Plan** *Log any material shifts. 'None' is a valid answer.* | [Fill in here] |

##### Actual Release

| | |
|:---|:---|
| **Actual release date** *Date the release actually shipped. Leave blank until set.* | [Fill in here] |
| **Released to** *Cohort that got the release (e.g. 5% of free users; all Enterprise; internal).* | [Fill in here] |
| **Rollout details** *Anything worth noting about how the rollout went — gates hit, issues, rollbacks.* | [Fill in here] |
| **Release notes (link)** *Link to the changelog / release notes / Jira release.* | [Fill in here] |

---

#### Post-Launch Performance — DO NOT MODIFY STRUCTURE

*Fixed 7-/14-/30-day intervals. Each row is read into the Post-Launch Performance tab of the SSOT sheet with the Initiative Name prepended. Leave future checkpoints blank until they land.*

| Initiative | Launch Date | Date Updated | KPI(s) | KPI Goal | 7-day | 14-day | 30-day |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| [Initiative Title] | [YYYY-MM-DD] | [YYYY-MM-DD] | [Metric name(s)] | [Goal vs. measured value] | [What stood out] | [What we did about it] | |

##### GTM Learnings

Qualitative takeaways from the GTM motion — what landed, what didn't, what you'd do differently. One paragraph is plenty.

##### Aggregated Reporting / Trends

Longer-horizon trends once the interval table settles: directional momentum, second-order effects, implications for the next initiative.

---

### Step 4 — Review before saving

Output the full PRD content to the user for review. Then ask: "Does this look good to save, or would you like any changes first?"

Do not save the file until the user explicitly confirms they are happy with the content.

### Step 5 — Save the PRD

Once the user confirms, save the file:

- Derive a filename using the format: `YYYY-MM-<team>-<feature-slug>.md`
  - Example: `2026-03-CP-Llamas-persistent_dashboard_filtering.md`
  - Use today's date for YYYY-MM
  - Use `CP` for Connections Platform features (default) unless another team is specified
  - Use `Llamas` as the default squad name unless another is specified
- Save the file to: `~/Documents/product_hub/projects/<relevant-subfolder>/`
  - Match to the closest existing subfolder: AI Features, Bitly Insights, Dashboards, Insights, Research, Conversion Strategy, Benchmarking
  - If none fit, save to `~/Documents/product_hub/projects/`
- Use clean Markdown — no HTML, no unnecessary formatting

### Step 6 — Confirm to the user

Tell the user:
- The file path where it was saved
- A one-sentence summary of what the PRD covers
- Any open questions or gaps you couldn't fill from the input (flag these clearly so they know what to fill in)

---

## Tone & Style Guidelines

These apply to every word written in the PRD. They are non-negotiable.

- **Direct and concise** — get to the point, cut every filler word. "Users must be able to" not "In order to provide users with the ability to."
- **Specific over vague** — "reduces dashboard setup time by removing the manual link-selection step" not "improves the experience."
- **No hedging** — state requirements as facts, not suggestions. "The dashboard must display..." not "Ideally the dashboard would..."
- **User research grounds the problem** — embed quotes from real research when available. They make the problem real.
- **No em dashes** — use commas, colons, or sentence breaks instead.
- **No emojis**
- **No passive voice** — "users must manually re-add links" not "links must be re-added by users."
- **Tables for structured data** — the Summary Registry Row, Goal & Impact, Risks, Dependencies, Release Planning, and Post-Launch Performance sections must always use tables, not prose.
- **Write from the user's perspective in the problem sections; write from the system's perspective in requirements** — requirements describe what the product must do, not what the user wants.
- **Preserve DO NOT MODIFY STRUCTURE labels** — the Summary Registry Row and Post-Launch Performance table headers must appear exactly as specified so the agent can parse them correctly.
