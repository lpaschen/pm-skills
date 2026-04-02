# Monetization Strategy: Best Practices Reference

## What Excellent Monetization Strategies Include

A credible monetization strategy answers these five questions with specificity:

1. **Pricing model**: How do we charge? (per-seat, usage-based, subscription, transaction fee, etc.)
2. **Price points**: What are the actual dollar amounts, and how do they tier?
3. **Who pays**: The end user? The buyer for a team? An enterprise procurement department?
4. **When they pay**: Upfront annual contract? Monthly billing? Per-transaction? Trial period before payment?
5. **Why they'll keep paying**: What creates recurring revenue? What's the switching cost? What happens if they stop?

Without specificity on all five, the strategy is undercooked. "We'll charge enterprises for premium features" is not a strategy. "We'll charge $X per seat/month with annual commitment, buyers are engineering managers with a $50K annual budget, and they renew because switching to a new tool costs 2 weeks of productivity" is a strategy.

## Pricing Models and When Each Fits

**Per-seat (per-user, per-account)**: Appropriate for tools where value scales with user count (Slack, Notion, GitHub). The unit economics are clean—more users = more revenue. Works best when onboarding scales with headcount and support costs are predictable. Risk: discourages adoption if it feels expensive to add a single user.

**Usage-based**: Appropriate for utilities where consumption is the primary value driver (cloud compute, API calls, data transfer). Aligns incentive: you pay more as you benefit more. Risk: chills adoption during evaluation because billing is unpredictable, and can suppress feature usage if customers fear the bill.

**Freemium**: Appropriate when free tier demonstrates core value, removes friction to adoption, and creates a natural upgrade path (Figma, Loom). The free tier must be compelling enough to drive adoption but constrained enough that power users hit the ceiling and choose to pay. Risk: free tier becomes a permanent cap on addressable market if the paid tier isn't significantly more valuable.

**Flat subscription**: Appropriate for products with predictable, flat-fee value across segments (e.g., $X/month for a marketing SaaS tool, regardless of company size). Simpler pricing lowers sales friction. Risk: leaves money on the table from high-value customers and overprices smaller customers.

**Transactional (per-transaction, take-rate)**: Appropriate for marketplaces or payment processors where you extract value from each transaction (Stripe, Uber, Airbnb). Aligns incentive: higher transaction volume = higher revenue. Risk: leaves money on the table if some use cases are high-value but low-volume; may discourage adoption if take-rate feels high relative to the service.

**Hybrid**: Many successful products combine models (e.g., base seat price + usage overage, or flat subscription with transactional take-rate). This can optimize across customer segments but adds pricing complexity.

## Pricing Model Alignment with Value Delivered

The pricing model must map to how the product creates value. If the product delivers value per user, per-seat pricing is correct. If the product saves time or money that scales with usage volume, usage-based or transactional aligns better.

Misalignment is a red flag. If a tool saves you $100K per year and the pricing model caps out at $10K/year, either the pricing is wrong or the value prop is overstated. If a tool sells per-user but 80% of value goes to 5% of power users, you're undermonetizing the power users and overcharging light users.

## Unit Economics: The Irreducible Math

A viable business requires **LTV > CAC** (Lifetime Value must exceed Customer Acquisition Cost). This is not optional. No amount of volume or optimism changes this.

- **LTV**: Average revenue per customer × gross margin % × average customer lifetime (months/years). For a $100/month SaaS product with 70% gross margin, if the average customer lasts 3 years, LTV is roughly $25,200.
- **CAC**: Total sales and marketing spend ÷ number of new customers acquired. If you spend $2M acquiring 100 new customers, CAC is $20K.

If CAC approaches or exceeds LTV, the business doesn't work, regardless of top-line growth. A strategy that relies on unit economics improving "later" is gambling. If the numbers don't work at small scale, they won't work at large scale—unit economics get worse, not better, as you grow.

## Monetization Timing: When "Later" Is Reasonable vs. a Red Flag

**"We'll figure out monetization later" is reasonable when:**
- The product solves a real problem with clear willingness to pay, and the founder can articulate the likely model and price range (even if not final).
- The primary focus is validating product-market fit; revenue can follow.
- The market is new enough that pricing models are genuinely uncertain.

**"We'll figure out monetization later" is a red flag when:**
- There's no credible path from customer problem to revenue. ("We'll monetize through ads on a B2B tool" or "enterprise users won't mind seeing ads.")
- The founding team has no experience with the go-to-market motion or the market itself.
- The strategy assumes adoption without a clear reason customers would pay relative to alternatives.
- The product is free indefinitely and the team has never articulated why paying customers would emerge.

## Freemium Traps

Freemium pricing is powerful but dangerous. The trap: the free tier becomes the actual product, and the paid tier never gets enough adoption to fund development.

**Freemium works when:**
- The free tier is genuinely valuable (users accomplish real work) but limited (cap on storage, number of files, team size, export frequency, API calls).
- The upgrade path is obvious and low-friction (user hits the cap, sees a clear upsell, clicks to upgrade).
- A meaningful fraction of active free users convert to paid. If conversion is <1%, freemium is subsidizing a free service, not a path to revenue.

**Freemium fails when:**
- The free tier is so full-featured that paying feels optional. Users are happy staying free forever.
- The upgrade path is unclear or the paid tier isn't meaningfully better. (Why upgrade if the free version does the job?)
- Free usage is high but willingness to pay is near zero. You've optimized for adoption, not monetization.

## Warning Signs: What to Flag in Critique

1. **Underpricing relative to value**: If the product saves customers money or time worth 10x the subscription cost, pricing is likely too low. Underpriced products grow fast but can't fund the business model they need.

2. **No clear path from usage to revenue**: "We have 100K free users" is not a path to revenue. How will they transition to paid? When? What triggers the conversion?

3. **Pricing model doesn't scale**: Per-transaction pricing works at small volumes but becomes unstable at scale as customers find ways to batch, cache, or work around the metering. Per-seat pricing inverts as teams grow (becomes a smaller % of the team's budget). The model must hold across the customer lifecycle.

4. **Assuming enterprise buyers will pay without a sales motion**: Enterprise deals don't close themselves. If the strategy assumes large annual contracts but there's no plan for sales hiring, sales engineering, or deal structure, it's fantasy.

5. **Pricing that doesn't reflect customer segment economics**: Charging a 2-person startup the same as a 500-person enterprise is leaving money on the table from the enterprise and overpricing the startup. Value-based pricing or tiering is more honest.

6. **No differentiation between free and paid tiers**: If the product feels the same on both sides, there's no motivation to upgrade. The paid tier must unlock material value.

## Connection to Audience and Distribution

The monetization strategy must map to how you reach customers. If your target is small teams who self-serve, per-seat pricing and freemium can work well. If your target is enterprise, you need a sales-supported model with annual contracts and predictable pricing.

If the strategy is "we'll distribute through partners" but the pricing model requires direct customer relationships to calculate usage or manage seat counts, you have a misalignment. If you're selling to cost-conscious customers but the pricing is premium, you need a compelling value story or superior positioning.

The distribution strategy and monetization strategy are not separate. They must align. A consumption-based model requires metering and API access; a per-seat model requires user provisioning infrastructure. The operational complexity of your monetization must match your distribution capability.

---

**In critique**: Look for specificity, internal consistency, and evidence that the founding team has thought through the actual unit economics and the path from customer to paying customer. Vague strategies and misalignment between pricing and value are the most common failures.
