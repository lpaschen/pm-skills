# Launch Readiness

Ensure nothing falls through the cracks before launch by systematically checking readiness across every function, and produce a clear, evidenced go/no-go recommendation.

## Step 1: Establish the Scope

Ask if not provided:
- "What are you launching?"
- "What is the planned launch date?"
- "Is this a full GA, limited beta, flag-gated rollout, or phased launch?"

## Step 2: Run the Readiness Check

```markdown
## Launch Readiness: [Feature Name]
**Launch Date:** [Date]
**Launch Type:** [GA / Beta / Phased / Flag-gated]

---

### Product ✅/⚠️/❌
- [ ] Acceptance criteria met and signed off
- [ ] Edge cases and error states handled
- [ ] Mobile/responsive behaviour verified
- [ ] Accessibility requirements met
- [ ] Analytics instrumentation confirmed

### Engineering ✅/⚠️/❌
- [ ] Feature flagged and rollout plan defined
- [ ] Performance benchmarks met
- [ ] Rollback plan documented
- [ ] Monitoring and alerting in place
- [ ] Load testing completed (if applicable)

### Marketing & Comms ✅/⚠️/❌
- [ ] In-app messaging / onboarding copy ready
- [ ] Help centre article drafted
- [ ] Announcement copy ready (blog, email, social)
- [ ] Sales and CS notified with talking points

### Support ✅/⚠️/❌
- [ ] Support team briefed on the feature
- [ ] FAQ and escalation path documented
- [ ] Known issues and workarounds documented

### Sales ✅/⚠️/❌
- [ ] Feature included in sales materials (if applicable)
- [ ] Pricing and packaging implications communicated
- [ ] Demo environment updated

### Data & Analytics ✅/⚠️/❌
- [ ] Tracking events implemented and verified
- [ ] Launch metrics dashboard live
- [ ] Baseline metrics captured pre-launch

---

### Gaps & Blockers
| Item | Owner | Due | Status |
|---|---|---|---|
| [Gap] | [Who] | [Date] | 🔴 Blocker / 🟡 Risk / 🟢 On track |

---

### Go / No-Go Recommendation
**Recommendation:** GO / NO-GO / GO WITH CONDITIONS
**Rationale:** [Why]
**Conditions (if applicable):** [What must be true before flipping the switch]
```

## Step 3: Identify the Critical Path

Highlight the single most important item to resolve before the launch date.

## Notes

- A 🔴 blocker in Engineering or Product is an automatic NO-GO
- 🟡 risks in Marketing or Support can be managed post-launch with a mitigation plan
- Pair with `pm-stakeholders`'s Write a Stakeholder Update mode (Launch Announcement template) once the launch is a go
- For phased rollouts, run this check again at each rollout milestone
