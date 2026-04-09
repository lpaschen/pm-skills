# pm-skills

A collection of 33 custom Claude skills for product managers. These skills give Claude structured frameworks, templates, and domain expertise for common PM workflows — from discovery interviews to competitive analysis to executive updates.

## How to Use

### In Cowork
Skills in this repo are automatically available when you connect your Skills folder in Cowork. Claude will pick them up and use the right one based on what you ask.

### In Claude Code
Clone this repo and symlink it to your Claude skills directory:

```bash
git clone https://github.com/lpaschen/pm-skills.git
ln -s /path/to/pm-skills ~/.claude/skills
```

Then run `claude` from any project folder — skills will be available automatically.

### Triggering a Skill
Most skills trigger automatically based on what you ask. You can also invoke them directly by name, e.g.:

> "Use the prd-template skill to write a spec for..."
> "Run a competitive-analysis on Notion vs Coda"
> "Help me write a discovery-interview-guide for our onboarding research"

---

## Skills

| Skill | Description |
|-------|-------------|
| `ab-test-planner` | Design statistically rigorous A/B tests for product features, UI changes, and onboarding flows |
| `ai-product-canvas` | Structure AI/ML product decisions including model selection, data requirements, evaluation frameworks, and responsible AI considerations |
| `ambiguity-resolver` | Turn vague opportunities and unclear briefs into structured, actionable problem statements |
| `competitive-analysis` | Research the competitive landscape — identify competitors, compare strengths and weaknesses, surface differentiation opportunities |
| `competitive-intelligence-monitor` | Monitor competitor signals and surface strategic insights from web, news, and product changes |
| `competitor-pricing-change` | Check competitor pricing pages for changes and flag anything that's shifted since the last snapshot |
| `data-analysis-standard` | Structure product data analyses with a clear question, methodology, finding, and recommended action |
| `design-critique` | Provide structured UX feedback using Nielsen's heuristics, Gestalt principles, and JTBD alignment |
| `design-handoff-brief` | Transform feature briefs into structured design briefs that give designers the user context and constraints they need |
| `discovery-interview-guide` | Create structured user discovery interview guides with screener questions, discussion guides, and synthesis frameworks |
| `executive-update` | Transform detailed product updates into concise executive briefings structured around decisions, risks, and numbers |
| `experiment-designer` | Design A/B tests from hypotheses and interpret results with statistical and practical significance |
| `feature-prioritisation` | Apply RICE, MoSCoW, Kano, ICE, or Opportunity Scoring frameworks to rank features and backlog items |
| `initiative-impact-tracking` | Generate a pre-launch hypothesis, create an initiative log entry, or write a monthly learning doc entry — the three parts of the initiative impact tracking process |
| `job-application` | Tailor a CV and cover letter to a specific job description with ATS optimisation and gap analysis |
| `launch-readiness` | Run a comprehensive pre-launch readiness assessment across product, engineering, marketing, support, and sales |
| `multi-source-signal-synthesiser` | Synthesise user signals from multiple research sources (interviews, support tickets, NPS, reviews) into a unified insight brief |
| `okr-builder` | Create well-structured Objectives and Key Results with quality checks and scoring guidance |
| `performance-review` | Transform notes into professional performance reviews with structured templates and clear framing |
| `pm-weekly-review` | Run a structured 20-minute weekly PM review covering metrics, shipping progress, blockers, and next priorities |
| `prd-template` | Write a complete Product Requirements Document from a problem statement or feature idea |
| `product-review` | Prepare and run a Product Review with Bitly's CEO, CPO, and Sr Director of Product — pre-read doc, session structure, and debrief template |
| `pricing-strategy` | Evaluate and design pricing models, tiers, and packaging using SaaS pricing frameworks |
| `product-health-analysis` | Assess overall product health across acquisition, activation, engagement, retention, and revenue metrics |
| `product-strategy-critique` | Play devil's advocate on a product strategy — identify gaps across target audience, problem definition, value prop, differentiation, growth, and monetisation |
| `retention-analysis` | Structure retention analyses including cohort breakdowns, churn root cause investigation, and improvement recommendations |
| `roadmap-narrative` | Transform a prioritised initiative list into a compelling strategic roadmap narrative for stakeholders |
| `sql-query-explainer` | Explain SQL queries in plain English and suggest optimisations |
| `stakeholder-influence-mapper` | Map stakeholder relationships, interests, and influence to inform alignment and communication strategy |
| `stakeholder-update` | Write targeted stakeholder updates tailored to audience, cadence, and communication goal |
| `strategic-narrative-generator` | Transform a list of product initiatives into a coherent strategic narrative for non-technical audiences |
| `user-interview-synthesis` | Synthesise user interview transcripts into structured themes, insights, and actionable recommendations |
| `user-research-synthesis` | Synthesise mixed-method user research into prioritised findings and product implications |

---

## Structure

Each skill lives in its own folder with a `SKILL.md` file containing instructions, output templates, and frameworks. Some skills include a `best-practices/` subfolder with reference documents Claude reads during execution.

```
pm-skills/
├── competitive-analysis/
│   └── SKILL.md
├── product-strategy-critique/
│   ├── SKILL.md
│   └── best-practices/
│       ├── target-audience.md
│       ├── value-proposition.md
│       └── ...
└── ...
```

---

## Contributing

Found a skill worth adding? Improvements welcome via pull request.
