# Annotated Pitch Examples

These two pitches are from Bitly's CTO and serve as calibration examples for the reviewer. Both are strong pitches with real, named gaps — use them to understand what "good" looks like and where even strong pitches need pressure.

---

## Example 1: Enterprise AI Controls

### What This Pitch Does Well

**Problem is business-grounded and specific.** The pitch opens with blocked/at-risk revenue and names the exact procurement question customers are asking. It acknowledges the scaling problem (every new AI feature = new bespoke contract) without overstating it.

**Appetite is explicitly justified.** "Four weeks is enough to ship something durable without over-building" — ties appetite to scope without treating it as an estimate.

**Solution is bounded and orthogonal.** The two-control architecture (AI Feature Toggles vs. Shared Intelligence) is a genuine design decision, not just a feature list. Stating they're orthogonal is a structural choice that prevents future conflation.

**Rabbit holes are actionable.** Both rabbit holes include resolution direction — "enforce at BigQuery layer, not UI" and "flag migration scope early." These are decision-quality notes, not just risk flags.

**No-gos are specific and enforceable.** "No toggle per feature" and "no upsell in disabled states" are precise enough that a team could use them to push back mid-cycle.

### Named Gaps (Reviewer Should Flag)

- **$X placeholders throughout Problem section.** The pitch explicitly acknowledges the dollar exposure is unfilled. This is not a polish issue — the pitch says the betting table should not see it without this data. Treat as a hard blocker.

- **Default state decision is unresolved.** The open question about new vs. existing enterprise account defaults is a significant scope risk. Getting defaults wrong for existing accounts is a customer trust issue, not just a support ticket. This needs resolution *before* cycle start, and the pitch correctly flags it — but a reviewer should ask: who owns this decision and what's the timeline?

- **"Admin" definition is unresolved.** Multi-admin org behavior is an open question. This could affect UI design substantially. Flag for early resolution.

- **Shared Intelligence enforcement timing.** "Real-time vs. next ETL run" could have contract compliance implications. This is not a nice-to-have — some enterprise SLAs may make this a blocker.

- **Breadboarding is structural, not visual.** The toggle tree is useful but doesn't show the disabled state UX, which is called out as important in the solution. The reviewer could ask: what does a user actually see when a feature is disabled? Is that resolved?

---

## Example 2: Link & QR Code Organization

### What This Pitch Does Well

**Problem section is honest about evidence gaps.** The pitch explicitly flags: "we don't yet have direct evidence that displacement is the cause rather than declining interest" — and names what evidence would close that gap. This epistemic honesty is a Shape Up strength, not a weakness.

**Appetite is positioned as decision-scoped, not solution-scoped.** "The problem is well-understood. The right solution is not." — this is a correct use of a 6-week appetite when the solution space is genuinely open.

**Solution presents options without false precision.** Options A/B/C with named tradeoffs is an appropriate way to shape when the team genuinely needs to evaluate approaches at cycle start.

**Rabbit holes call out named spiral risks.** Migration complexity and naming debates are both real traps that a team could fall into — and both have resolution direction.

**Success criteria include learning, not just shipping.** "We come out of this cycle with a path to concrete signal" is a strong outcome framing for a cycle where the solution is intentionally not pre-decided.

### Named Gaps (Reviewer Should Flag)

- **Displacement vs. disinterest is the central bet, and it's unresolved.** The pitch says "before this pitch goes to the betting table, pull qualitative data from CS and support." That's a pre-condition for the bet, not an open question to resolve during the cycle. A reviewer should ask: has this data been pulled? What did it show?

- **29% usage decline figure needs sourcing.** Strong claim, and the pitch treats it as established. A reviewer should verify: where does this number come from, what time window, and is it usage events or distinct accounts?

- **Three solution options with no recommendation.** This is an intentional choice, but it pushes a significant decision to the team at cycle start. A reviewer should ask: does the team have the context to make this decision quickly, or will they spend the first week debating options? Is there a preferred direction?

- **$X placeholders in blocked/at-risk accounts.** Same issue as Enterprise AI Controls — named as needed but unfilled.

- **Packaging/tier decision is open.** Where a new organizational construct lands in packaging is not just a product question — it affects sales motion, enterprise positioning, and existing customer expectations. This may need a decision before cycle start, not during.

- **Channels interaction is unresolved.** The pitch flags it but doesn't resolve it. If Channels and the new construct have overlapping surface area, the team could hit this mid-cycle.

- **Option C (Campaigns overhaul) technical ceiling question is open.** "Is the 100-link cap a hard architectural constraint or a configuration choice?" — this is a pre-condition for evaluating Option C at all. If the answer is "hard constraint," Option C is off the table. This should be answered before the cycle, not during.

---

## Calibration Notes for Reviewer

These pitches represent a high baseline. When reviewing pitches from less experienced shapers:

- Expect less epistemic honesty about evidence gaps — push harder on "how do we know this?"
- Expect solutions that are under-bounded — the team won't know what decisions they're allowed to make
- Expect rabbit holes that are listed without resolution — push for "and here's how we handle it"
- Expect no-gos that are absent entirely — ask "what are you explicitly not building?"
- Expect appetite that isn't justified — push for "why this time box, and what would you cut if you were over?"
