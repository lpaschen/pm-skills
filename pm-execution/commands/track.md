---
description: Generate a pre-launch hypothesis, create an initiative log entry, or write a monthly learning doc entry
argument-hint: "hypothesis | log | learning — followed by initiative details"
---

# /track -- Initiative Impact Tracking

Execute any part of the initiative impact tracking process: write a pre-launch hypothesis, format a log entry at launch or check-in, or structure a monthly learning doc entry.

## Invocation

```
/track hypothesis                    # guided — asks for initiative details
/track hypothesis NBA Engine         # starts with the initiative name
/track log                           # guided — asks new entry or check-in
/track log Weekly Digest 30-day      # 30-day check-in for a specific initiative
/track learning                      # guided — asks for learning details
/track learning [paste notes]        # formats your raw notes into the monthly doc entry
/track                               # asks which of the three you need
```

## What each mode does

### hypothesis
Generates a formatted pre-launch hypothesis doc including: target KPI, expected movement, reasoning, current baseline, and 7/30/60-day success targets. Saves to `outputs/hypotheses/`.

### log
Formats a row-ready entry for the shared initiative log — either a new entry at launch or a check-in update at 7, 30, or 60 days. Output is ready to paste into the Google Sheet.

### learning
Structures a monthly learning doc entry with: what was learned, the source, business relevance, and follow-on action. Saves to `outputs/monthly-learnings/`.

## Notes
- Run `/track hypothesis` before launch — the 30 and 60-day log check-ins depend on having a baseline
- The log entry output is formatted for copy-paste into the shared Google Sheet, not saved locally unless requested
- Pair with `/write-prd` if you are still in the scoping phase — run `/track hypothesis` once you have a clear launch date and metric target
