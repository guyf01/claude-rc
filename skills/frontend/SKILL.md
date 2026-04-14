---
name: frontend
description: Use when building, editing, reviewing, or designing any frontend UI — React components, pages, layouts, styles, visual elements, animations, or accessibility. Trigger for any task involving HTML, CSS, UI code, or visual design decisions.
---

## Approach

Before writing UI code, understand the project's stack — check package.json, imports, and existing components. Use what's already there. Never introduce a competing library.

Think before coding: what problem does this UI solve? Who uses it? What should they feel? What's the tone — brutally minimal, maximalist, editorial, playful, refined? What are the constraints? And what's the one thing that makes it unforgettable? Pick a clear direction and commit to it — bold maximalism and refined minimalism both work, the key is intentionality.

Never produce generic AI-looking output. Avoid safe, predictable choices. Every design should be unique — make a genuine creative decision every time.

Match implementation complexity to the aesthetic vision. Maximalist designs deserve elaborate code — layered effects, rich animations, dense interactions. Minimalist designs demand precision — exact spacing, careful typography, subtle details. Elegance comes from executing the vision well, not from a fixed level of effort.

## Responsive

Mobile-first: design at 320px, enhance upward through breakpoints.

## Accessibility (non-negotiable)

- All interactive elements must be keyboard-accessible.
- Visible focus rings on all interactive elements.
- Tab order must match visual order.
- Images: meaningful alt text. Decorative images: `alt=""`.
- Icon-only buttons must have `aria-label`.
- Form inputs must have a `<label>` with a matching `for` attribute.
- Minimum 4.5:1 contrast ratio for normal text.
- Never use color as the only indicator of state or meaning.

## Frameworks

- Use whatever the project already has. Don't mix competing libraries.
- If nothing exists, prefer in this order:
  - CSS — Tailwind, vanilla CSS, CSS Modules, styled-components, Emotion, UnoCSS, Panda CSS
  - Primitives — shadcn/ui, Radix, Headless UI, Ark UI, DaisyUI, Mantine, Chakra, Vuetify
  - Animation — CSS transitions, Framer Motion, GSAP, View Transitions API, AutoAnimate
  - Charts — Recharts, D3, Chart.js, Visx, ECharts, Nivo
  - Icons — Lucide, Phosphor, Heroicons, Tabler Icons, Iconify

## Performance

- Images: WebP format, `srcset` for responsive sizes, `loading="lazy"` below the fold, explicit `width`/`height`.
- Reserve space for async content — skeleton screens or explicit dimensions prevent layout jumps.
- Respect `prefers-reduced-motion` — disable or reduce animations for users who request it.

## Tone

Pick one that fits the product's personality:

- Brutally minimal — stripped to essentials, nothing decorative
- Maximalist chaos — rich, layered, overwhelming in a deliberate way
- Retro-futuristic — nostalgia meets sci-fi, CRT glows, synthwave
- Organic/natural — soft, earthy, alive
- Luxury/refined — restrained elegance, expensive feeling
- Playful/toy-like — rounded, bouncy, approachable
- Editorial/magazine — strong type hierarchy, large imagery, asymmetric
- Brutalist/raw — exposed structure, stark contrast, anti-polish
- Art deco/geometric — structured ornament, bold symmetry
- Soft/pastel — gentle, low-contrast, calm
- Industrial/utilitarian — functional, no-frills, honest materials

## Visual Style

Pick one that fits the product:

- Glassmorphism — frosted glass, blur, semi-transparent surfaces. Use for: overlays, modern dashboards
- Neumorphism — soft extruded shadows, low contrast, muted palette. Use for: settings panels, minimal controls
- Brutalism — raw structure, stark contrast, exposed grid. Use for: developer tools, editorial sites
- Minimalism — maximum whitespace, few colors, typography-driven. Use for: portfolios, documentation, content-first
- Maximalism — rich textures, layered elements, dense, bold color. Use for: creative agencies, e-commerce
- Claymorphism — soft 3D shapes, pastels, rounded, inner shadows. Use for: playful apps, onboarding
- Bento Grid — modular mixed-size cards, clear hierarchy. Use for: dashboards, feature showcases
- Aurora / Mesh Gradients — flowing color transitions, organic shapes. Use for: landing pages, hero sections
- Editorial — strong type hierarchy, asymmetric layouts, large imagery. Use for: blogs, long-form content
- Flat Design — clean, no shadows or gradients. Use for: mobile apps, system UI
- Material Elevation — shadow-based depth, consistent motion curves. Use for: data-heavy apps, enterprise

## Typography

Choose fonts that are beautiful, unique, and interesting. Pair a distinctive display font with a refined body font — one makes the statement, the other carries the reading.

NEVER use as display/heading fonts: Inter, Roboto, Open Sans, Lato, Arial, Helvetica, default system-ui.

Reach for instead:

- Code/tech: JetBrains Mono, Fira Code, Space Grotesk, Space Mono
- Editorial: Playfair Display, Crimson Pro, Fraunces, Newsreader
- Modern: Clash Display, Satoshi, Cabinet Grotesk, General Sans
- Technical: IBM Plex family, Source Sans 3
- Distinctive: Bricolage Grotesque, Syne, Outfit, Plus Jakarta Sans

### Scale

Every font size is intentional — not arbitrary pixel values. Build a named scale:

| Token | Use | Weight | Line Height |
|-------|-----|--------|-------------|
| display | Hero headlines, marketing | Bold | 1.1–1.2 |
| heading | Section titles, page headers | Semibold | 1.2–1.3 |
| body | Paragraphs, default text | Regular | 1.5–1.75 |
| small | Captions, labels, meta | Regular/Medium | 1.4 |

A hierarchy you can feel — each step must look clearly different from its neighbors.

White text on dark backgrounds looks heavier than black text on white. Reduce font weight by one step to compensate.

- Body text line height: 1.5–1.75.
- Line length: 65–75 characters per line maximum.

## Color

### Tokens

Never use raw hex values in components. Build a semantic color system with one source of truth:

- **Name by purpose, not value** — `--color-background`, `--color-surface`, `--color-brand`, `--color-success`, `--color-error`. Never `--color-blue-500` as a direct reference.
- **Primary scale** — 9 shades from dark to light for the brand color. Each shade maps to a purpose: darkest for text on light backgrounds, mid-range for interactive states, lightest for tinted backgrounds.
- **Semantic tokens reference scale tokens** — components consume `--color-brand`, not `--color-blue-500`. Rebrand means changing one value, not hunting hex values.

### 60/30/10 Rule

- **60% — background**: the dominant surface color that sets the overall tone.
- **30% — secondary**: same hue as the background, slightly lighter (dark themes) or slightly darker (light themes). Used for cards, navs, containers, and secondary surfaces.
- **10% — accent**: bold, warm color reserved exclusively for CTAs and key actions. Warm tones (amber, orange, red-adjacent) maximize contrast and draw the eye — never dilute by using them decoratively.

### Gradients

- Stay within 60 degrees of the color wheel — adjacent hues blend naturally; hues far apart clash and create visual noise.
- Angle: `135deg` as the default.
- Gradient on text: headlines only. Keep body text solid — gradients on small text destroy readability.

### General

- Use CSS variables for all colors — never hardcode hex values scattered across the codebase.
- Dominant color with sharp accents beats evenly-distributed palettes.
- Dark themes: never pure `#000` — use near-blacks like `#0a0a0a`, `#111`, `#1a1a2e`.
- Light themes: never pure `#fff` — use warm whites like `#fafafa`, `#f8f7f4`, `#fef9ef`.
- NEVER: Purple gradient on white background.

## Components

Build every component against all states — not just the happy path. Components missing states create accessibility failures and visual inconsistency.

- **States to cover:** default, hover, focus, error, disabled
- **Apply to:** buttons, inputs, cards, badges — anything interactive or data-bearing
- Build once, reuse everywhere. A button with no focus state breaks keyboard nav. A disabled input with no visual difference is invisible to users who need it.

## Interaction

- Touch targets: minimum 44x44px.
- Add `cursor-pointer` to all clickable elements — cards, buttons, links, anything interactive.
- Disable buttons during async operations to prevent double-submits.
- Show error messages near the field that caused them, not at the top of the form.
- Use click/tap for primary interactions — never rely on hover as the only trigger.
- Hover states must provide clear visual feedback (color, shadow, border) — no silent hovers.
- Hover transitions: `150-300ms`. Never instant, never over `500ms`.

## Layout

- Pick a base spacing unit (4px) and make every margin, padding, and gap a multiple — 4, 8, 12, 16, 24, 32, 48, 64. Arbitrary values make layouts feel random. Multiples make them feel intentional.
- Whitespace is a design element.
- Break predictable grids — asymmetry, overlapping elements, and diagonal flow create visual interest.
- Commit to either generous negative space or controlled density. Never land in the middle.
- Always include `<meta name="viewport" content="width=device-width, initial-scale=1">`.
- Minimum 16px body text on mobile.
- No horizontal scroll — all content must fit the viewport width.
- Test responsiveness at 375px, 768px, 1024px, and 1440px.
- Define a z-index scale (10, 20, 30, 50) — never use arbitrary values like `9999`.

## Backgrounds & Atmosphere

Create depth — never flat solid colors:

- Gradient meshes, noise textures, geometric patterns
- Layered transparencies, dramatic shadows
- Grain overlays, subtle dot/grid patterns
- Blur effects for depth on overlapping elements

## Shapes

- Sharp corners signal threat and tension. Round edges signal safety and friendliness.

## Optical Sizing

- A circle must be ~13% larger than a square to appear the same size optically.
- Nested border radius: always set inner radius = outer radius minus the padding between them.

## Glass Effect

Use for elevated containers that need to stand out — not for every card.

- Background: `rgba(255, 255, 255, 0.35)`
- Backdrop filter: `blur(20px)`
- Border: `1px solid rgba(255, 255, 255, 0.5)`
- Box shadow: `0 8px 32px rgba(0, 0, 0, 0.15)`

## Motion

- For plain HTML/CSS: CSS transitions and animations only.
- For React: prefer the Motion library.
- One well-orchestrated page load with staggered reveals (`animation-delay`) creates more delight than scattered micro-interactions everywhere.
- Animate only `transform` and `opacity` — never `width`, `height`, or `top/left`. Animating layout properties causes jank.
- Always show loading states — skeleton screens or spinners. Never leave the user staring at nothing.
- Never block the user — if they interact during a transition, the interaction wins.

### Easing

Match the curve to the direction of movement:

- **ease-out** — enter/appear. Starts fast, decelerates to rest. Content arriving feels natural.
- **ease-in** — exit/leave. Starts slow, accelerates out. Gets out of the way cleanly.
- **ease-in-out** — move/resize. Smooth on both ends. For elements repositioning within the view.

### Duration

Match duration to the weight of the interaction:

| Scale | Duration | Use |
|-------|----------|-----|
| Micro | 100ms | Hover state, toggle |
| Small | 200ms | Button press, icon swap |
| Medium | 300ms | Modal, dropdown, tooltip |
| Large | 400ms | Page transition, drawer |
| XL | 500ms | Complex multi-step |

## Premium Popup

- Open: spring scale with overshoot, content staggers in.
- Close: don't vanish — scale down and fade out.
- Background: `blur(20px)` with a deep shadow.

## Buttons

### General

- Give buttons generous padding — let them breathe.
- Round the corners — soft edges feel friendly and approachable.
- Touch targets: minimum 44x44px.

### Color

Button color sets the mood — pick a color that fits the state of mind the user should be in when pressing:

- **Blue** — safe, professional, reliable. Use for: primary actions, sign-ups, neutral CTAs.
- **Green** — go, success, money. Use for: confirmations, "complete purchase", positive actions.
- **Purple** — trust, premium, security. Use for: checkout, payment, sensitive actions.
- **Red** — urgency, danger, stop. Use for: destructive actions, warnings. Sparingly for urgency CTAs.
- **Orange/Yellow** — attention, energy, impulse. Use for: limited-time offers, attention-grabbing CTAs.
- **Black** — premium, bold, authority. Use for: luxury products, high-end CTAs.
- **White/outline** — secondary, de-emphasized. Use for: cancel, back, alternative actions.

Don't override the project's brand colors for every button — use psychology for key decision-point CTAs where the emotional state matters.

### Premium

For prominent CTAs (e.g., "Get Started"), not every button:

- High font-weight — bold text commands attention.
- Box shadow to make them glow and pop off the page.
- On hover: glow intensifies, scale up slightly.
- On press: bounce back.

## Charts & Data

- Match chart type to data: trends → line, comparisons → bar, parts of whole → pie, distributions → histogram.
- Use accessible color palettes — never rely on color alone to differentiate data series.
- Always provide a data table alternative for screen readers.

## Polish Details

- Hover states must not cause layout shift — use color, opacity, or shadow transitions, not scale transforms.
- Glass cards in light mode: use `bg-white/80` or higher opacity. `bg-white/10` is invisible.
- Light mode body text: minimum slate-600 (`#475569`). Never slate-400 or lighter.
- Muted/secondary text: minimum slate-600 in light mode — never gray-400.
- Account for fixed navbar height — content must not be hidden behind it.
- Floating navbars: add `top-4 left-4 right-4` spacing, not flush to the edge.
- Consistent max-width across all pages — don't mix `max-w-6xl` and `max-w-7xl`.
- Borders in light mode: use `border-gray-200` — never `border-white/10` (invisible against white).
- Consistent icon sizing — fixed viewBox (24x24) with consistent size classes.
- Brand logos: use official SVGs from Simple Icons — never guess or approximate logo paths.

## Anti-Patterns (NEVER)

- Purple gradient on white background.
- Gray text on colored backgrounds.
- Cards inside cards inside cards.
- Emojis as UI icons — use SVG icons (Lucide, Heroicons, Phosphor).
- Inconsistent style across pages — commit to one visual direction for the entire product.
