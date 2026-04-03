---
name: generate-release-notes
description: Generate user-facing release notes from a PRD and Figma file. Use this skill when the user asks to "generate release notes", "write release notes", "create release notes", or wants to document a feature for users.
argument-hint: <prd-path-or-text> [figma-url]
allowed-tools: [Read, Glob, Grep, Write, WebFetch, mcp__claude_ai_Figma__get_design_context, mcp__claude_ai_Figma__get_metadata, mcp__claude_ai_Figma__get_screenshot, mcp__claude_ai_Atlassian__createConfluencePage, mcp__claude_ai_Atlassian__getConfluenceSpaces]
---

# Generate Release Notes

Create a comprehensive internal launch document from a PRD and optional Figma design file, structured to inform the full team — product, engineering, marketing, sales, and CS.

## Arguments

The user invoked this with: $ARGUMENTS

Parse the arguments as:
1. **PRD**: Either a file path to read, or inline text describing the feature
2. **Figma URL** (optional): A figma.com URL to pull design context and visuals from

## Instructions

### Step 1 — Gather inputs

- If the PRD argument looks like a file path, read it with the Read tool.
- If a Figma URL is provided, extract the fileKey and nodeId, then call `mcp__claude_ai_Figma__get_design_context` (and optionally `get_metadata`) to understand the UI being shipped. Reference specific UI elements by name in the User Experience section.
- If no arguments were provided, ask the user for the PRD (file path, pasted text, or Google Doc URL) and an optional Figma URL before proceeding.

### Step 2 — Generate the document

Write a comprehensive internal release notes document with all of the following sections. Scale depth to the complexity of the feature — omit a section only if the PRD provides no relevant information for it.

---

#### Section 1: Overview

**What It Is**
1–2 paragraphs describing the feature in plain language. What does it do? What user problem does it solve? Write this for someone who hasn't read the PRD — a teammate in marketing or CS should immediately understand what shipped.

**Why We're Building It**
1–2 paragraphs on motivation and strategic context. Why now? What friction does this remove? What business goals does it support? Include any relevant metrics from the PRD that justify the investment (e.g., retention data, engagement gaps).

---

#### Section 2: Launch Plan

Describe the phased rollout strategy. For each phase, include:
- Audience / rollout size (e.g., "1–5% of users", "50% A/B test", "100% GA")
- Timing (exact dates if available; otherwise relative)
- Goals for that phase (what are we learning or validating?)
- Decision framework: what triggers moving to the next phase vs. pausing/reverting

If the PRD doesn't specify rollout phases, write a single GA launch section based on the available context.

---

#### Section 3: User Experience

For each major feature area or user-facing surface described in the PRD:

- **Feature name** as a subheading
- What the experience looks like from the user's perspective
- Key interactions and flows (reference Figma elements if available)
- Any access restrictions (free vs. paid, tier gating, entitlement limits)
- A **Goal** callout at the end of each subsection: one sentence on what this UX is designed to achieve

If Figma designs were provided, note where screenshots or design references belong using placeholder text like `[Screenshot: <description>]`.

---

#### Section 4: Success Metrics

**Experiment / Launch Objectives**
Bullet list of what we're trying to learn or prove.

**Key Metrics**
Bullet list of the specific metrics being tracked. Pull directly from the PRD's success metrics section. For each metric include:
- What it measures
- The baseline (if stated)
- The target (if stated)

If the PRD includes segmentation or cohort breakdowns, include those.

---

#### Section 5: FAQ

Generate 5–8 Q&A pairs that anticipate questions from internal stakeholders (sales, CS, marketing) and end users. Good FAQ topics to cover:
- How this feature interacts with related features
- Free vs. paid access and upgrade paths
- Any admin controls or account-level settings
- Data privacy / what data the feature uses
- Edge cases (empty states, unsupported actions, limits)
- How to get support or give feedback

Write answers concisely — 2–4 sentences each.

---

#### Section 6: Resources

List links to supporting materials extracted from the PRD. Include any of the following that are mentioned:
- Product brief / PRD
- Figma designs
- Experiment docs
- Timeline / roadmap
- Help Center articles
- GTM / launch plan
- Analytics dashboards

Format as a simple bullet list. If no links are available in the PRD, omit this section.

---

### Step 3 — Save the document

- Derive a filename from the feature name: lowercase, spaces replaced with hyphens, `.md` extension.
  - Example: "AI Assist" → `ai-assist.md`
- Save the file to: `~/projects/release notes/<filename>.md`
- Use this Markdown structure:

```markdown
# <Feature Name>

## Overview

### What It Is

<content>

### Why We're Building It

<content>

## Launch Plan

<content>

## User Experience

### <Feature Area 1>

<content>

**Goal:** <one sentence>

### <Feature Area 2>

<content>

**Goal:** <one sentence>

## Success Metrics

### Objectives

<bullet list>

### Key Metrics

<bullet list>

## FAQ

#### Q: <question>

<answer>

#### Q: <question>

<answer>

...

## Resources

- <link or reference>
- <link or reference>
```

### Step 4 — Ask about Confluence

After saving the file locally, ask the user:

> "Would you like me to also publish this to Confluence?"

If they say yes, publish it as a child page under **Insights, Analytics and AI Release Notes**:
- Site: `puffer.atlassian.net`
- Parent page ID: `4348116994`
- Space: `ET`
- Page title: the feature name (Title Case)

Use `mcp__claude_ai_Atlassian__createConfluencePage` with the parent page ID set to `4348116994`. Do not ask the user which space to post to — always use this location for release notes.

### Step 5 — Confirm to the user

Tell the user:
- The title of the document
- The local file path where it was saved
- Whether it was published to Confluence (and the page URL if so)
- A one-sentence summary of what the document covers

## Example invocations

```
/generate-release-notes docs/prd-weekly-insights.md https://www.figma.com/design/abc123/Insights?node-id=1:2
/generate-release-notes "New bulk export feature that lets users download all their data as CSV"
/generate-release-notes /Users/me/Downloads/document.md
```
