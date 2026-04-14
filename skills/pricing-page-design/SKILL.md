---
name: pricing-page-design
description: Use when building or designing a pricing page UI — layout, plan cards, comparison tables, billing toggles, or trust signals
---

# Pricing Page Design

A step-by-step guide for building a web-based pricing page. In-app stores, mobile game shops, and other non-webpage pricing UIs may need different patterns.

Assumes the pricing strategy (tiers, prices, features) is already decided. If the strategy details are not provided, ask the user before proceeding.

## Step 1: Design the Page Layout

Consider these zones for the pricing page. Not all are needed — skip any that don't earn their place for this product. Order and format depend on the product:

- **Hook** — what is this and why should I care? Headline, value prop, and the primary price or billing toggle.
- **Options** — what can I buy? Plan cards, product tiers, packages — however the product presents choices. For multi-product businesses, options may be organized by product rather than by tier.
- **Proof** — why should I trust this? Logos, testimonials, guarantees, reviews. Place near the decision point.
- **Detail** — what exactly do I get? Comparison table, feature lists, specs. For buyers who need to dig deeper before committing.
- **Objections** — what's stopping me? FAQ, policies, concerns. Address before the customer leaves.
- **Final push** — last chance CTA for anyone who scrolled past the main options.

## Step 2: Decide How Prices Are Presented

- **Not all products show prices** — for high-touch or custom-priced offerings, the card may show "Contact us" or "Request a quote" instead of a number.
- **Price transparency** — when prices are shown, show the mandatory minimum price upfront. Optional add-ons and upgrades are presented during checkout. Never surprise the customer with mandatory costs at the end — that erodes trust.
- **Lead with the best deal** — the first number the customer sees becomes the anchor. If there's an annual option, show it by default (it's the lower number). If there's a discount, strike through the original price next to the real one — the higher number anchors perception and makes the deal feel like a steal.
- **Smallest unit** — display the price in the smallest natural unit. "$22/seat/month, billed annually" feels smaller than "$264/seat/year." Break the price down to what feels most accessible.
- **Frame savings** — always frame as saving. Use whichever number looks bigger — a percentage when the dollar amount is small, a dollar amount when the percentage looks small.
- **Range and "starting at" pricing** — if the price varies by scope or configuration, show "starting at $X" or a range ("$5k–$15k"). Anchors the conversation without committing to a number that may not apply.
- **Currency** — for global products, detect locale and show local currency. For local/regional products, use the local currency.
- **Urgency/scarcity** — countdown timers and "limited time" labels are generally a cheap tactic. Most customers recognize them as fake and they erode trust. Only use when the scarcity is genuinely real (seasonal offer, launch window, inventory limit).

## Step 3: Build the Plan Cards

Skip this step if the product doesn't use plan cards (e.g., consumption-based pricing, product catalogs where each product has its own pricing page).

If offering multiple billing periods, include a billing toggle above the cards. Show the savings on the toggle itself (e.g., "Annual (save 20%)"). Animate price transitions on toggle so the switch feels responsive. If some tiers don't participate in the toggle (e.g., custom-priced enterprise), keep their price static and note "Contact for annual pricing" or similar.

**Card layout** — what goes in each card, top to bottom:

- Plan name
- Price (if there are secondary variable costs like transaction fees or usage rates that differ by plan, show them below the main price)
- A short description of who this plan is for
- CTA button
- Top differentiating features only — not the full list, that goes in the comparison table
- Cards should say "Everything in [previous tier], plus:" to avoid repeating features
- On mobile, cards stack vertically ordered by price (low to high)

**Card types:**

By default, a card's job is to present a distinct level of value. Style it as a standard card — no special treatment needed. Some cards get a specific role:

- **Target plan**
  - *Role:* the one you want most customers on.
  - *Visual:* visually elevated — stronger shadow, colored top border, "Most Popular" or "Recommended" badge, slightly more padding than siblings. If it's the middle tier, center-stage reinforces this naturally.
  - *Psychology:* the "Most Popular" badge removes doubt for undecided users by giving them a socially validated "safe" choice. It doesn't need to be backed by real data — its job is to reduce decision paralysis, not report statistics. Use it on whichever plan you want to drive volume to.

- **Free tier**
  - *Role:* present but de-emphasized. It's a stepping stone, not the destination.
  - *Visual:* ghost/outline CTA button. Visually lighter than paid cards.

- **Trial / promo tier**
  - *Role:* temporary introductory offer (free trial, discounted first months, etc.). CTA focuses on the intro offer — "Start free trial" or "Get 3 months for $1."
  - *Visual:* standard card styling, prominent CTA button. Show the regular price below or next to the promo price (e.g., "then $29/mo") so the commitment is clear before they click.

- **Entry tier**
  - *Role:* clean, straightforward. Should feel like a no-brainer.
  - *Visual:* standard card styling. Secondary CTA button.

- **Decoy tier**
  - *Role:* treat it as a completely normal tier. Don't hint that it's a worse deal — let the customer discover that the target plan is obviously better value by comparing the numbers themselves.
  - *Visual:* identical styling to other paid tiers. Nothing should signal this tier is different.

- **Enterprise tier**
  - *Role:* show pricing when possible ("starting at $X"), show what they'll get, and make the next step easy — form or calendar link inline, not a generic "contact us" redirect.
  - *Visual:* outline CTA button.


## Step 4: Build the Comparison Table

Skip this step if the product has few tiers or few differentiating features — a simple highlight on the cards is enough. A comparison table earns its place when there are enough features that cards can't show them all.

- Group features into labeled sections relevant to the product.
- Use checkmarks for booleans, dashes for "not included", specific values for limits.
- Highlight the target plan column with a subtle tinted background.
- Sticky header row so plan names stay visible on scroll.
- On mobile, convert to per-plan accordions — cross-plan comparison on small screens is a losing battle.

## Step 5: Establish Brand Trust

The goal is to reduce hesitation at the point of decision. What builds trust depends on the product and audience — pick what's credible for your brand:

- **Social proof** — who else uses this? Logos, customer counts, notable users, case studies. Only impressive if the names or numbers are recognizable to your audience.
- **Testimonials and reviews** — real words from real customers. Third-party ratings (G2, Trustpilot, App Store) carry more weight than self-reported quotes. Match the testimonial to the audience.
- **Awards and recognition** — industry awards, press mentions, certifications. Only if genuine and relevant.
- **Guarantees** — money-back, cancel-anytime, SLA uptime. If offered, display prominently — they reduce the risk of committing.
- **Compliance and security** — SOC 2, GDPR, HIPAA badges. Only relevant for enterprise or high-stakes products.
- **The product itself** — for well-known brands or visual products, the content/experience IS the trust signal. Show what the customer gets: content previews, facility photos, product screenshots, demo videos.

Place trust throughout the page near decision points, not all in one block.

## Step 6: Build the FAQ

Address real objections — the questions a customer asks right before deciding not to buy:

- **Commitment fears** — can I cancel? Is there a contract? What happens to my data?
- **Flexibility** — can I switch plans? What if I need more/less?
- **Risk** — is there a trial? A guarantee? What if it doesn't work for me?
- **Payment** — what methods are accepted? When am I charged?
- **Value** — what makes this worth the price? Are there discounts?

Write the FAQ based on the product's actual objections, not a generic template.

## Step 7: Design plan Change UI

How the customer sees plan changes — not the billing logic, just what's on screen:

- **Upgrades** — make the path obvious. Show what they'll gain. Keep it to one confirmation step.
- **Downgrades** — show what they'll lose, not what the lower tier has. "You'll lose automations, custom reports, and priority support" hits harder than listing what the lower tier includes.
- **Switching** — if plans aren't purely sequential, make it clear what changes and what carries over.
- **Current plan indicator** — if existing customers visit the pricing page, highlight their current plan and show upgrade paths from it.

