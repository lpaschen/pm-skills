---
name: pm-execution
description: Use for shipping work — turning a vague brief into a clear problem statement, prioritizing a feature list or backlog, running a pre-launch readiness check, or generating internal release notes. Triggers on "vague brief", "unclear opportunity", "prioritise features", "what should we build", "backlog grooming", "RICE score", "MoSCoW", "launch readiness", "pre-launch check", "go/no-go", "generate release notes", "write release notes".
license: MIT
metadata:
  author: Liz Paschen
  domain: execution
  related-skills: pm-discovery, pm-strategy, shape-up
---

# PM Execution

Four modes for shipping work: clarifying ambiguous briefs, prioritizing what to build, checking launch readiness, and documenting what shipped.

## Mode Selection

Infer directly when the request clearly signals one mode — don't ask:
- "vague brief / unclear opportunity / figure out what to do about X / make sense of this" → **Ambiguity Resolver**
- "prioritise features / what should we build / backlog grooming / RICE / MoSCoW / ICE / Kano" → **Feature Prioritization**
- "launch readiness / pre-launch check / go/no-go / ready to ship" → **Launch Readiness**
- "generate release notes / write release notes / document this feature for users" → **Generate Release Notes**

Ask with `AskUserQuestion` only when genuinely ambiguous.

## Modes

| Mode | Reference | Use When |
|------|-----------|----------|
| Ambiguity Resolver | `references/ambiguity-resolver.md` | A brief or opportunity is too vague to act on yet |
| Feature Prioritization | `references/feature-prioritization.md` | Ranking a backlog or deciding what to build next |
| Launch Readiness | `references/launch-readiness.md` | Checking whether a feature is ready to ship |
| Generate Release Notes | `references/generate-release-notes.md` | Documenting a shipped feature for the broader team |

Load the corresponding reference file and follow its process and output template exactly.
