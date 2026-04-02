---
name: competitor-pricing-change
description: Check competitor pricing pages for changes and flag anything that has shifted since the last snapshot
---

---
name: competitor-pricing-change
description: >
  Monitor a list of competitors for pricing changes on their websites. Use this whenever
  the user wants to check if a competitor has changed their pricing, wants to track pricing
  across multiple competitors, says things like "has X changed their pricing?", "check our
  competitors' pricing pages", or "are any competitors running a promotion?" Also trigger
  when the user wants to set up or run a pricing intelligence check, or asks what competitors
  are currently charging.
---

# Competitor Pricing Change Monitor

Check competitor pricing pages for changes and surface anything that looks different from
what's been previously recorded. Useful for staying on top of competitive pricing moves
before they affect deals.

## Step 1: Find the Competitor List

Look for a `competitors.md` file in the user's current project directory or in the skill
folder. This file should contain competitors and their pricing page URLs.

If no list exists, ask the user:
- Which competitors should I track?
- What are their pricing page URLs? (or I can find them)

Once confirmed, create or update `competitors.md` so the list is saved for next time.

**Format for competitors.md:**
```
# Competitor Pricing List
Last updated: [date]

| Competitor | Pricing URL | Notes |
|------------|------------|-------|
| Acme Corp  | https://acme.com/pricing | Enterprise pricing requires contact |
| Rival Inc  | https://rival.io/pricing | |
```

## Step 2: Visit Each Pricing Page

For each competitor, use web browsing to visit their pricing page and capture:
- Plan names and tiers
- Price points (monthly and annual if shown)
- What's included in each tier
- Any promotions, discounts, or limited-time offers
- Any "contact us" or custom pricing signals
- Date checked

Note anything that requires a sales call rather than showing public pricing — that's
competitive intelligence too.

## Step 3: Compare to Previous Snapshot

Check if a `pricing-snapshot.md` file exists in the project directory. If it does:
- Compare what you just found to the stored snapshot
- Flag any differences: price changes, new/removed tiers, changed feature inclusions,
  new promotions, or pricing model changes (e.g., per-seat to usage-based)
- Note if a previously public price is now "contact us" (often signals enterprise pivot)

If no snapshot exists yet, say so — this first run establishes the baseline.

## Step 4: Report Changes

Structure your output like this:

```
## Competitor Pricing Check — [Date]

### ⚠️ Changes Detected
[List any competitors where something changed, with before/after detail]

### ✅ No Changes
[List competitors where pricing appears unchanged]

### ⚠️ Could Not Check
[List any pages that were inaccessible, login-gated, or returned errors]

### Notable Observations
[Anything worth flagging even if not a direct price change — e.g., a new enterprise
tier, a new free plan, a "limited time" promotion, or a pricing page redesign
that suggests a strategy shift]
```

## Step 5: Update the Snapshot

After reporting, update `pricing-snapshot.md` with today's findings so the next run
has an accurate baseline to compare against. Include the date of each snapshot entry.

## Notes

- Pricing pages behind login walls or paywalls cannot be checked — flag these
- "Contact us" pricing is common for enterprise tiers; note it but don't treat it as a gap
- Promotional pricing (e.g., "50% off for 3 months") should be flagged separately from
  permanent price changes
- Annual vs. monthly pricing discrepancies are worth noting — they signal how a competitor
  is trying to drive commitment
- If a competitor removes public pricing entirely, that's often a signal they're moving
  upmarket — worth flagging
- Run this monthly at minimum; quarterly is too infrequent in fast-moving markets
