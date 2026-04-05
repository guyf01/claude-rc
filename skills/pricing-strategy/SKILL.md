---
name: pricing-strategy
description: Use when evaluating or designing pricing strategies, plan tiers, subscription models, freemium conversion, or feature gating for any product or service
---

# Pricing Strategy

A step-by-step framework for designing pricing from first principles.

1. Understand the business
2. Understand the market
3. Assemble the pricing model
4. Review the combination
5. Structure the tiers
6. Set the prices
7. Present the strategy

If the user describes an existing pricing model, don't be constrained by it. Understand it as context, but design the most fitting strategy from first principles. It's the business's problem to bridge from their current pricing to the recommended one.

## Step 1: Understand the Business

You must have clear answers to every question below before proceeding. If anything is unclear or unknown, ask the user — do not guess or assume.

- **What does it cost to serve one customer?** Is cost per-user, per-request, per-GB, or roughly flat regardless of usage? This determines whether you need margin protection.
- **How do customers get value?** Per person using it, per action taken, or just having access? Price the dimension that correlates with value.
- **Does value come from beyond the product itself?** Community, network effects, ecosystem (plugins, integrations, templates)? Does the product get more valuable as more people use it?
- **Who are the customer segments?** Solo users vs teams vs enterprises? B2B vs B2C? Different segments may need different pricing combinations entirely.
- **Is the buyer the same person as the user?** If not, who makes the purchase decision and who receives the value? (Enterprise SaaS: IT buys, employees use. Healthcare: employer/insurer pays, patient uses.)
- **Is this a marketplace?** If so, who are the distinct sides and how does each side pay or get paid? (Uber: riders pay, drivers earn minus commission. Spotify: listeners pay or see ads, artists earn per stream.)
- **Does the product serve multiple geographic markets with different purchasing power?** Local only, regional, or global? (Spotify charges different prices in 180+ countries. A local SaaS may only need one price.)
- **What is the business's moat?** What makes it hard for customers to leave? File formats, data, workflows, integrations, habits, community, brand loyalty.
- **Is the product capacity-constrained?** Does serving more active customers cost disproportionately more, or degrade the experience? (Gyms, airlines, hotels, restaurants.)
- **What is the customer's lifetime with the product?** Are there opportunities to generate revenue beyond the initial purchase? A long customer lifecycle changes how aggressively you can price the entry.
- **How high are the stakes of the purchase decision?** life-or-death, brand reputation, financial exposure, professional credibility, and data security are all high stakes. Consider what happens if the product fails or performs poorly.
- **If known, what margins is the business targeting?**
- **If known, what price points have been tested or validated with customers?**

## Step 2: Understand the Market

What kind of competitive battle are you in? This changes your entire pricing approach. If unsure, ask the user — the wrong market assumption leads to the wrong pricing strategy.

- **Commodity** — the product is practically the same across providers. Customers compare on price, reliability, brand trust, UX, and support. When the core product is identical, the provider who understands the customer's pain best wins. (Cloud storage, basic hosting, commodity APIs)
- **Differentiated** — every product is different. Customers compare on value-for-money. (Project management tools, design tools, CRMs)
- **Premium** — the product signals quality or exclusivity. Customers expect a high price — a low price would make them suspicious. The price itself can be part of the product experience, filtering the customer base to create exclusivity. (Enterprise consulting, luxury products, Equinox, specialized tools)
- **Network-driven** — the product's value is the user base itself. A product without users is an empty room. (Fortnite, Instagram, TikTok, Discord)

- **What do comparable products charge?** Where does this product want to sit relative to them?

Products often span multiple market types. Understand how they interact — each type may drive a different aspect of the pricing strategy. Don't let one type's logic limit another's.

After steps 1 and 2 are complete, ask the user: do you want to review and give input at each step, or receive the complete strategy at the end? Steps 3–6 can run autonomously or collaboratively based on their preference.

## Step 3: Assemble the Pricing Model

Pricing is assembled from three categories of building blocks. Pick from each to construct a combination. Your market type from step 2 should heavily influence which blocks you pick. Most successful products combine multiple blocks.

If the business has multiple distinct product lines, run steps 3-6 for each product line separately, then consider bundling and cross-product strategy.

**Price unit** — what triggers a charge:

- **Per seat** — charge per person/account. Simple, predictable. Risk: encourages account sharing (Netflix's biggest revenue leak for years), penalizes team growth.
- **Per consumption** — charge for what's used (AWS, Stripe, Claude API). Strong margin protection. How and when the customer pays is determined by the payment cadence.
- **Per access** — flat fee for a tier of service (Claude Max, ChatGPT Plus). Predictable for both sides. Risk: light users subsidize heavy users within the same tier.
- **Per product** — pay once, own it (software licenses, games). No billing friction. Risk: no recurring revenue, lifetime deals are dangerous at scale.
- **Free** — no charge to users. Revenue comes from elsewhere: ads, cosmetics, marketplace cuts, or a separate paying audience. Risk: requires a different revenue engine entirely — the core product doesn't generate money directly.

**Plan differentiation** — what differentiates offerings:

- **Feature gating** — unlock capabilities at higher tiers. Clear upgrade path. Risk: gating the wrong feature frustrates users.
- **Usage limits** — same features, different ceilings (storage, API calls, seats, team size). Decide what happens at the limit: hard cap (blocked), soft cap with overage charges (becomes consumption-based), or throttling (degraded service). Risk: too low frustrates, too high erodes margin.
- **Support levels** — same product, better service at higher tiers. Works as a secondary differentiator, not primary.
- **Add-ons** — modular extras on top of a base (DLC, integrations, premium features). Lets customers build their own plan.
- **No differentiation** — single offering, one price. Only works when all customers look roughly the same.

**Payment cadence** — when money changes hands:

- **Subscription** — recurring monthly/annual. Predictable revenue, creates retention.
- **Pay-as-you-go** — billed after consumption. Revenue follows usage. Risk: unpredictable bills for customers, bill shock kills trust.
- **Prepaid** — credits or balance bought upfront. Revenue before costs. Risk: customers hoard and ration instead of using naturally.
- **One-time** — single purchase. Must constantly acquire new customers to grow.
- **Microtransaction** — small on-demand purchases within the product, often through virtual currency (V-Bucks, gems). Revenue comes in bursts, driven by new content drops.
- **Ad-supported** — continuous revenue from third parties, not users. Requires massive user base.
- **Dynamic** — price determined algorithmically in real-time based on supply, demand, or other market signals (ride-hailing surge, airline tickets, ad auctions).
- **Donation/patronage** — voluntary payments with no direct quid pro quo. Niche funding source, rarely the right choice for a business. (Wikipedia, NPR, open source foundations, Patreon creators.)

### Bundling

Bundling is a separate pricing tool used on top of your main pricing structure. It packages multiple distinct products or services — each with their own standalone pricing — into a single offer at a discount. The goal is to get customers who want one product to also pay for others they wouldn't buy individually.

- **Adobe Creative Cloud** — Photoshop, Illustrator, Premiere etc. sold individually or as an "All Apps" bundle at a discount vs buying separately.
- **Apple One** — Music, TV+, Arcade, iCloud bundled together. Customers who only want Music end up paying for TV+ too.
- **Video games** — base game + DLC bundled as a "complete edition" at a lower total price than buying separately.

Bundling works best when you have multiple distinct offerings that appeal to overlapping audiences.

### Cross-Subsidy (Razor and Blades)

Sell the entry product at low or no margin to lock customers into a recurring revenue stream. The entry product is a no-brainer purchase that creates sunk cost — once the customer owns it, they're committed to buying the consumable or service at high margin.

- **Printers** — cheap hardware, expensive ink cartridges.
- **Coffee machines** — cheap machine, expensive proprietary capsules (Nespresso, Keurig).

### Price Discrimination

Charge different customers different prices for the same product based on who they are or how they buy. The product is identical — only the price changes.

- **Age-based** — accommodate lower-income users who would otherwise be priced out. Students and younger users can still pay, just less. (Tinder, Adobe, Spotify student pricing.)
- **Geographic** — accommodate lower-income users who would otherwise be priced out, at country scale. Match pricing to local purchasing power so the product is accessible globally. (Spotify charges different prices in 180+ countries.)
- **Channel-based** — indirect channels (delivery apps, resellers) cost money. Usually the customer pays the markup — the middleman's cut comes out of their pocket. Only absorb the cost yourself when you genuinely need the middleman's reach and your own distribution can't get there.

### Loyalty Programs

A retention loop disguised as a reward. Customers earn points for purchases and need to come back to use them — creating a reason to choose you over an identical competitor. Why go to Burger King when you have McDonald's points building up? Once customers have points, leaving means losing them — loyalty programs build switching costs over time.

### Real-World Combinations

- **Figma** — per-seat + feature tiers + subscription. Differentiated market. Generous free tier built a massive community of designers, which became a moat competitors can't replicate.
- **Claude** — two entirely different models for two audiences. Per-access + usage ceiling tiers + subscription (Pro/Max) for consumers who want simplicity. Per-consumption + prepaid (API) for developers who want control. Shows that different customer segments can get different pricing entirely.
- **Slack** — per-seat + feature tiers + subscription. Free tier let entire companies adopt it before anyone paid. By the time IT got involved, switching costs were too high. The free tier was the sales team.
- **AWS** — per-consumption + pay-as-you-go. Pure usage in a commodity market. Won on reliability and breadth, not price — despite being a commodity play.
- **Fortnite** — free + cosmetic add-ons + subscription (Battle Pass). Network-driven market. The game is free because the community IS the product. Revenue comes from players wanting to stand out among their friends.
- **Instagram** — free + ad-supported. Network-driven market. Users are the product, advertisers are the customers. Charging users would kill the network that makes it valuable.
- **A video game** — per-product + one-time + add-ons (DLC). Traditional model where the core product has enough value to sell once, with optional expansions for engaged players.

### Sanity Check

After assembling, verify your combination makes sense for your market type. Red flags: a network-driven product with no free entry point, a commodity product priced above competitors without clear justification, a premium product with aggressive discounting.

## Step 4: Review the Combination

Review your combination against these five factors, including the risks listed on each chosen building block. For free products, apply these factors to whoever is actually paying (advertisers, whales buying cosmetics, etc.).

For each factor, state whether it's a strength, acceptable, or a weakness of the combination:

1. **Alignment** — does the customer pay more when they get more value? If yes, pricing feels fair AND scales revenue. If not, someone's getting a bad deal. Note: capacity-constrained businesses (gyms, airlines) can profit from deliberate misalignment — customers paying for access they don't fully use. Risk: if all customers actually show up, the experience degrades and damages the brand.
2. **Predictability** — can the customer predict their bill? Can you predict your revenue? Surprises on either side create churn or cash flow problems.
3. **Margin protection** — does the combination protect you from customers who cost disproportionately more to serve? Feature gating alone doesn't solve this — a power user who only needs basic features stays on a cheap plan while hammering your infrastructure. Only consumption-based pricing inherently protects margins. If your combination doesn't, add usage limits or caps.
4. **Growth friction** — does pricing punish the customer for growing? The best combinations make growth feel natural, not penalizing.
5. **Simplicity** — can a customer understand their bill in one sentence? If you need a calculator, you'll lose self-serve customers.

If more than half the factors are weaknesses, heavily consider remaking the combination. You may iterate once — if the second attempt still fails, present the trade-offs honestly in the final output rather than looping further.

## Step 5: Structure the Tiers

### Tier Fundamentals

1. **Every tier needs a job** — it exists to serve a purpose in your pricing strategy. A tier without a clear job is noise.
2. **Tiers create comparison** — humans don't evaluate prices in isolation, they compare. Without comparison, any price feels arbitrary.
3. **Each tier should have a clear "unlock moment"** — the single reason someone upgrades from the tier below. Not 15 features, one compelling reason.

### Tier Roles

By default, a tier's job is to offer a distinct level of value at a matching price point. A product can have multiple tiers like this — honest levels that serve real needs.

Some tiers get a **strategic role** on top of providing value:

- **Free** — permanent zero-cost access. Acquisition and network growth.
- **Trial** — temporary full access to a paid tier. Proves value before asking for money. Getting the credit card on file with no immediate charge is easier than asking for payment upfront.
- **Entry** — low price, easy commitment. The "no-brainer."
- **Target** — primary revenue driver. Design other tiers to make this one look like the best deal.
- **Decoy** — exists to make the target look like a steal. Priced close to the target but with significantly less value. Example: base at $8, pro at $13 with limited features, premium at $16 with everything — the brain sees pro→premium as a no-brainer because $3 more gets so much more. The decoy makes customers feel smart for picking the tier you wanted them on all along. Risk: sophisticated buyers (B2B procurement) will spot intentional decoys and it can erode trust.
- **Pipeline** — deeply discounted for a segment with low current value but high future value. Students, startups, nonprofits. The goal is to build habits and lock-in now, converting to full-price customers later.

Not every tier needs a strategic role — a product with three honest value levels is perfectly valid. For high-stakes products (healthcare, legal, financial), avoid manipulative tactics like decoys — trust is the product, and feeling tricked destroys it.

### How Many Tiers

- **3** — the sweet spot for most products. Creates natural comparison. Fewer tiers can work when the product doesn't need differentiation.
- **4** — when a free tier is needed on top of three paid, or an extra tier serves a strategic role (e.g., decoy).
- **5+** — a lot. Make sure each one has a clear job. If you can't justify why each tier exists, cut it.

### Free to Paid

**Should there be a free tier?**

- **Free forever** — when the product has network effects or viral loops. When you want a large user base for upsell.
- **Free trial** — when the product's value is obvious quickly but ongoing free use would cannibalize paid tiers.
- **No free option** — when the product serves a professional audience that expects to pay.

**If free, design the boundary carefully:**

- Free tier must be genuinely useful, not crippled. Users should hit limits naturally, not feel tricked.
- The free→paid jump should solve a real pain point that emerged from using the free tier.
- Too generous and users never convert. Too restrictive and they leave instead of upgrading.

**Consider staged conversion** — instead of one big leap (free → paid), break it into smaller steps that progressively reduce friction. Example: free demo (zero risk, generates a "wow" moment) → credit-card-required trial on the first paid tier (full experience, low commitment) → paid subscription (already invested). Each step de-risks the next.

### Feature Gating Rules

**How to gate** — decide what differentiates tiers:

- **Usage-based** — same features, different limits (projects, storage, API calls). Best when all users need the same tools but at different scales.
- **Capability-based** — higher tiers unlock new features (automations, reporting, SSO). Best when customer segments have genuinely different needs.
- **Support-based** — same product, different service levels. Works as a secondary differentiator, not primary.

These aren't mutually exclusive — most products combine them. A higher tier can unlock both more features and higher usage limits.

**How NOT to gate:**

- Never gate security features (2FA, encryption). Gate compliance features (audit logs, data residency).
- SSO and SAML belong in higher tiers — IT buyers expect this and have budget for it.

## Step 6: Set the Prices

### Charm Pricing

- $29 not $30, $99 not $100. The left digit dominates perception. Only applies to fixed prices.
- Match the format to the target customer: developers and consumers respond to charm pricing. Enterprise buyers and B2B procurement expect round numbers — round numbers signal premium and seriousness.

### Price Ratios Between Tiers

- Common pattern: 2x–3x price jump with 3x–5x value jump.
- Value per dollar should increase with each tier — higher tiers should feel like a better deal, not just more expensive. This is what pulls customers upward.
- If two adjacent tiers are too close in price, there's no reason to stay on the lower one. 

### Price as a Filter

For premium products, a high price is not just revenue — it's a feature. It filters the customer base, creates exclusivity, and signals quality. Lowering the price to attract more customers can destroy the product's core value.

### Price Transparency

Decide whether to show one all-inclusive price or break it into components (base + fees + taxes). All-inclusive is simpler and builds trust. Component pricing can look cheaper upfront but erodes trust when fees appear late (Airbnb cleaning fees, airline baggage fees). Drip pricing — revealing costs gradually through the purchase flow — converts more short-term but damages brand long-term.

### Annual vs Monthly

- Offering both annual and monthly billing is standard for subscriptions. Annual discount of 15–20% is typical — enough to incentivize commitment without devaluing the monthly price.

## Step 7: Present the Strategy

Format the final output so the user can act on it:

### Business Context
One paragraph summarizing what the product is, how it delivers value, who the customers are, and what market it competes in.

### Pricing Model
The chosen combination of building blocks (price unit + plan differentiation + payment cadence) with a brief explanation of why this combination fits the business.

### Evaluation
How the combination reviewed against the five factors. Flag any trade-offs or weak spots.

### Tier Breakdown

For each tier, list:
- Name, role, and price
- What's included
- The unlock moment — the single reason someone upgrades from the tier below

### Risks and Trade-offs
What could go wrong with this strategy. What to monitor after launch.
