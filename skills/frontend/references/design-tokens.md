# Design Tokens

Every visual property is a named decision. Tokens live in one place and everything else references them. Never hardcode raw values in components.

---

## General

### Naming Convention

`--[category]-[variant]-[state]`

- `--color-text-primary` — category + variant
- `--color-button-bg-hover` — category + component + state
- `--blue-500` — wrong: no category, no meaning
- `--primaryColor` — wrong: camelCase, no structure

### Framework Defaults

Don't rely on framework primitives for brand values. Tailwind's `gray-50` is a fixed hex shared across every project. Brand-specific grays, warm blacks, and tinted neutrals need to be defined explicitly.

---

## Color

Color is the most complex domain — it's the only one that needs three tiers.

**Primitive** — the full palette. Raw values, no meaning. One scale per hue, 11 shades (50–950). Define every hue the brand uses.
```css
--color-blue-500: #3B82F6;
--color-gray-50:  #F9FAFB;
```

**Semantic** — purpose assigned to primitives. This is the layer components consume. Group by role: surface, brand, text, border, status.
```css
--color-brand:      var(--color-blue-500);
--color-background: var(--color-gray-50);
--color-error:      var(--color-red-600);
```

**Component** — element-specific overrides. Reference semantic tokens only. Use sparingly.
```css
--button-bg: var(--color-brand);
```

Why three tiers: multiple semantic tokens often share the same primitive. Without the primitive layer, changing a brand color means hunting every hardcoded hex across all semantic tokens.

### Dark Mode

Only the semantic layer changes. Primitives never change. Implementation depends on the stack:

**Raw CSS** — `light-dark()`. OS picks the default, no JS, no flicker.
```css
:root {
  color-scheme: light dark;
  --color-background: light-dark(var(--color-gray-50), var(--color-gray-950));
  --color-brand:      light-dark(var(--color-blue-500), var(--color-blue-400));
}
[data-theme="light"] { color-scheme: light; }
[data-theme="dark"]  { color-scheme: dark; }
```

**Tailwind v4** — `light-dark()` breaks opacity modifiers (`bg-brand/10` stops working).
---

## Typography

Not random font sizes — a system where every step is intentional. Define named roles: display, heading, body, small. Each role owns its size, weight, and line-height together. A hierarchy you can feel — each step must look clearly different from its neighbors.

| Token | Use | Weight | Line Height |
|-------|-----|--------|-------------|
| display | Hero headlines, marketing | Bold | 1.1–1.2 |
| heading | Section titles, page headers | Semibold | 1.2–1.3 |
| body | Paragraphs, default text | Regular | 1.5–1.75 |
| small | Captions, labels, meta | Regular/Medium | 1.4 |

Font families are tokens too. Define them once: display font, body font, mono font. Never scatter font-family declarations across components.

---

## Spacing

One tier. The scale name carries enough meaning — no semantic layer needed.

Base unit: **4px**. Every value is `n × 4`. The token name is the multiplier.

```css
--space-1: 4px;   --space-4: 16px;   --space-8:  32px;
--space-2: 8px;   --space-5: 20px;   --space-12: 48px;
--space-3: 12px;  --space-6: 24px;   --space-16: 64px;
```

Apply to all margins, paddings, and gaps. If a value isn't in the scale, it doesn't belong in the system.

---

## Motion

Two tiers — duration scale and easing curves. Used directly in components.

**Duration** — named by weight of interaction, not milliseconds.

```css
--duration-micro:  100ms;  /* hover, toggle */
--duration-small:  200ms;  /* button press */
--duration-medium: 300ms;  /* modal, dropdown */
--duration-large:  400ms;  /* page transition */
--duration-xl:     500ms;  /* complex multi-step */
```

**Reduced motion** — override the duration scale, not individual components.
```css
@media (prefers-reduced-motion: reduce) {
  :root {
    --duration-micro: 0.01ms; --duration-small:  0.01ms;
    --duration-medium: 0.01ms; --duration-large: 0.01ms; --duration-xl: 0.01ms;
  }
}
```