# Problem Definition: Best Practices Reference

## What an Excellent Problem Looks Like

A well-defined problem is **specific, evidence-backed, significant, and felt by the target audience**.

**Specific**: The problem statement names *who* experiences it, *what* they struggle with, *when* it matters, and ideally *why* the existing approach fails. Vague phrases like "slow workflow" or "inefficient process" aren't enough. You need: "Marketing managers spend 6-8 hours per week manually consolidating campaign performance data across 4+ tools, delaying decisions by 2-3 days."

**Evidence-backed**: The problem rests on customer research, market signals, or usage data—not assumptions. Direct evidence includes customer interviews, support tickets, usage patterns showing abandonment or workarounds. Indirect evidence includes market size estimates, competitor presence, or analyst reports. If you can't cite your source, you don't know the problem.

**Significant**: The problem must be frequent enough and painful enough that people will change behavior to solve it. A problem experienced by 5% of users, once a year, for mild inconvenience is not significant. A problem experienced by 40% of your target audience, weekly, that wastes 3+ hours—that's significant.

**Felt by the audience**: The people you're building for must *recognize* this as their problem. They've complained about it. They've already tried workarounds. If you have to convince users the problem exists, you're solving for an assumed need, not a real one.

## Symptom vs. Root Cause

Strategies fail when they address symptoms, not root causes.

A **symptom** is what users *observe*: "Reports take 2 weeks to produce." A **root cause** is *why*: "Analysts manually extract data from 12 different systems because no single source of truth exists, and they lack query access to the underlying databases."

Surface-level product strategies often chase symptoms. They might build a "faster reporting tool" when the real problem is data fragmentation. The symptom-focused product becomes a patch over a systemic issue—technically solving the symptom while the root cause creates new friction elsewhere.

Ask: "If we solved X, would the problem go away, or would users just hit a new bottleneck?" If the latter, you're addressing a symptom.

## Real Problem vs. Assumed Problem

**Real problems have evidence.**

Evidence of a real problem includes:
- Customer research: Users unprompted mention the problem in interviews or surveys
- Market signals: Competitors exist and are funded; analysts cover the problem space
- Usage data: Users abandon workflows, seek workarounds, or request the feature repeatedly
- Economic signal: Users are paying for partial solutions or workarounds (revealing the problem's severity)

**Assumed problems lack evidence** or have thin evidence:

- You built a hypothesis and assume it's true
- "I think X would be useful" without customer validation
- Problems identified in a workshop, untested against real users
- Problems you'd personally solve, without confirmation that your target audience shares the pain

The gap between assumption and reality is where most failed products live. Before investing in a strategy around a problem, you should have at least one of: customer research confirming the problem, market evidence (competition, analyst reports), or usage data showing friction.

## Severity and Frequency

Not all problems deserve strategy. Distinguish:

**Must-solve problems**: Experienced by most users, frequently (daily/weekly), with high impact. Breaking these creates churn. Solving them drives adoption. These are foundation material.

**Should-solve problems**: Experienced by many users, occasionally or with moderate impact. These enhance the core value prop but aren't survival-critical.

**Nice-to-have problems**: Experienced by few users, rarely, with low impact. These are feature expansions, not strategic bets.

If your strategy rests on solving a nice-to-have problem, it's not a strategy—it's a feature list. Your core problem should be a must-solve for a meaningful audience.

**Frequency + Severity = Opportunity Size**

A problem experienced by 1% of users daily might be higher priority than a problem experienced by 50% yearly. Calculate both: who it affects and how often it hurts.

## What the Competitive Landscape Says

If no one is solving this problem, ask why.

**Possible reasons your problem isn't being addressed:**

- It's not real (assumed, not validated)
- It's too small to sustain a business
- It's already solved by incumbents (and you're not aware)
- The market isn't ready; demand doesn't exist yet
- The unit economics don't work
- It requires solving a harder upstream problem first

None of these disqualify a problem. But if you're entering a white space, you need a theory for *why the white space exists*. "No one's doing it yet" is not a strategy; "no one's doing it yet because [economic reason / timing reason / coordination problem]" is.

Conversely, a crowded market isn't a red flag—it validates demand. But it means your value prop must be specific: cheaper, faster, easier for a specific use case, or solving a need incumbents can't address.

## Red Flags

**Vague problem statements**: "Improve collaboration," "empower users," "eliminate friction." These are aspirations, not problems. A real problem describes concrete pain.

**Solution looking for a problem**: You built a feature first, then defined the problem to justify it. The real test: could you have discovered this problem *before* building the solution?

**Problems that are too small**: "Saves 3 minutes per month." If the problem only matters to 0.1% of users, it's not a foundation.

**Problems that are too big**: "We're going to revolutionize entire industries" with no customer evidence. Overly ambitious problem statements signal you haven't narrowed the scope enough to validate it.

**No customer voice**: You can articulate the problem without a single quote, interview insight, or usage metric from an actual user. That's a red flag.

**Circular reasoning**: "We built this because customers need it" without evidence that customers actually expressed the need.

## Connection to Scope and Value Prop

Your problem definition should directly justify your product's scope and core value proposition.

If your problem is "Sales reps spend 4 hours daily on manual data entry across fragmented systems," your product scope should directly address that: a single interface for the rep's highest-friction workflows. Your value prop isn't "a CRM"—it's "reclaim 4 hours weekly and make data instantly accessible."

A disconnected strategy has a problem statement about X and a product roadmap that solves Y. If your problem and your solution don't map tightly, one of them is misaligned.

Use this test: Can you draw a direct line from problem to product feature? If you need multiple steps or hand-waving, your problem definition or scope needs refinement.

---

**The bottom line:** A defensible problem is one you can trace from customer research → market evidence → usage behavior → your product scope. Weak problems are symptoms dressed as causes, assumed without evidence, or disconnected from your actual solution. Critique ruthlessly on this dimension first.
