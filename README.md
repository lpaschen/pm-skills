# pm-skills

A Claude Code plugin marketplace of 11 domain-specific plugins for product managers — covering discovery, strategy, execution, analytics, stakeholder communication, design collaboration, and critical-reasoning tools.

Most plugins are a single **mode-routed skill**: one entry point that infers which mode you need from how you ask, and only asks a clarifying question when the request is genuinely ambiguous. This replaced an earlier structure of 40+ separately-named skills and slash commands, which had gotten hard to remember and use.

## How to Use

### In Claude Code

Add this repo as a plugin marketplace, then install the plugins you want:

```bash
claude plugin marketplace add lpaschen/pm-skills
claude plugin install pm-strategy
```

(The same commands work as `/plugin marketplace add ...` and `/plugin install ...` inside an interactive session.)

Repeat `claude plugin install <name>` for whichever plugins below you want available. Run `claude plugin marketplace update pm-skills` to pull the latest changes from this repo into an already-added marketplace.

### Triggering a Skill

Most plugins trigger automatically based on what you ask — no need to name them. For example, "write a Shape Up pitch for X" triggers `shape-up`'s Pitch mode directly; "help me with discovery" on `pm-discovery` (7 modes) will ask a quick clarifying question first since the request doesn't point at one specific mode.

---

## Plugins

### `pm-design` — 2 modes
Critique an existing design/UI/flow, or write a design handoff brief before a feature goes to a designer.

### `pm-discovery` — 7 modes
Discovery Interview Guide · Research Synthesis · Jobs to Be Done · Persona Builder · Journey Mapping · Competitive Intelligence (Analyze / Track) · Prototype (Build / Refine)

### `pm-analytics` — 4 modes
A/B Testing (Design / Results) · Data Analysis · Initiative Impact Tracking (hypothesis / log / learning) · SQL Query Explainer

### `pm-execution` — 4 modes
Ambiguity Resolver · Feature Prioritization · Launch Readiness · Generate Release Notes

### `pm-stakeholders` — 4 modes
Weekly Recap · Write a Stakeholder Update · Prep for a Product Review · Plan Stakeholder Alignment

### `pm-strategy` — 5 modes
Product Strategy (Build / Critique) · Roadmap Narrative · Scope an AI Feature · Pricing Strategy · Positioning Statement

### `shape-up` — 2 modes
Write a Shape Up pitch, or review one before it goes to the betting table.

### `pm-toolkit` — 1 mode
Tailor a CV and cover letter to a specific job description.

### `jehiah-brain` — 1 mode
Pressure-test a PRD, architecture proposal, or engineering plan the way Bitly's Sr Principal Architect actually would, grounded in his real review history.

### `performance-review` — 1 mode
Transform notes into professional performance reviews with structured templates and clear framing.

### `the-fool` — 5 modes
Structured critical reasoning to stress-test any idea, plan, or decision: Socratic questioning, dialectic synthesis, pre-mortem analysis, red team adversarial, evidence audit. Imported from [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) (MIT licensed).

---

## Structure

Each plugin has a `.claude-plugin/plugin.json` and a `skills/<plugin-name>/` folder containing the front-door `SKILL.md` plus a `references/` folder with one file per mode:

```
pm-skills/
├── .claude-plugin/
│   └── marketplace.json
├── pm-design/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   └── skills/
│       └── pm-design/
│           ├── SKILL.md
│           └── references/
│               ├── design-critique.md
│               └── design-handoff-brief.md
└── ...
```

The front-door `SKILL.md` handles mode selection (infer from the request, or ask via `AskUserQuestion` when ambiguous) and points to the matching `references/*.md` file for the actual process and output template.

---

## Contributing

Found a mode worth adding, or a plugin that needs sharper personalization for how you actually work? Improvements welcome via pull request.
