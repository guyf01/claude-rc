# Frontend Rules

## Approach

Before writing UI code, understand the project's stack — check package.json, imports, and existing components. Use what's already there. Never introduce a competing library.

Think before coding: what problem does this UI solve? What should the user feel? Pick a design direction that fits the product.

## Responsive

Mobile-first: design at 320px, enhance upward through breakpoints.

## Accessibility (non-negotiable)

- All interactive elements must be keyboard-accessible.
- Images: meaningful alt text. Decorative images: `alt=""`.

## Frameworks

- Use whatever the project already has. Don't mix competing libraries.
- If nothing exists, prefer in this order:
  - CSS — Tailwind, vanilla CSS, CSS Modules, styled-components, Emotion, UnoCSS, Panda CSS
  - Primitives — shadcn/ui, Radix, Headless UI, Ark UI, DaisyUI, Mantine, Chakra, Vuetify
  - Animation — CSS transitions, Framer Motion, GSAP, View Transitions API, AutoAnimate
  - Charts — Recharts, D3, Chart.js, Visx, ECharts, Nivo
  - Icons — Lucide, Phosphor, Heroicons, Tabler Icons, Iconify

## Performance

- Images: `loading="lazy"` below the fold, explicit `width`/`height`.

## Design Principles

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

Choose fonts that are beautiful, unique, and interesting.

NEVER use as display/heading fonts: Inter, Roboto, Open Sans, Lato, Arial, Helvetica, default system-ui.

Reach for instead:

- Code/tech: JetBrains Mono, Fira Code, Space Grotesk, Space Mono
- Editorial: Playfair Display, Crimson Pro, Fraunces, Newsreader
- Modern: Clash Display, Satoshi, Cabinet Grotesk, General Sans
- Technical: IBM Plex family, Source Sans 3
- Distinctive: Bricolage Grotesque, Syne, Outfit, Plus Jakarta Sans

White text on dark backgrounds looks heavier than black text on white. Reduce font weight by one step to compensate.

## Color

- Dominant color with sharp accents beats evenly-distributed palettes.
- Dark themes: never pure `#000` — use near-blacks like `#0a0a0a`, `#111`, `#1a1a2e`.
- Light themes: never pure `#fff` — use warm whites like `#fafafa`, `#f8f7f4`, `#fef9ef`.
- NEVER: Purple gradient on white background.

## Layout

- Whitespace is a design element.
- Touch targets: minimum 44x44px.

## Backgrounds & Atmosphere

Create depth — never flat solid colors:

- Gradient meshes, noise textures, geometric patterns
- Layered transparencies, dramatic shadows
- Grain overlays, subtle dot/grid patterns
- Blur effects for depth on overlapping elements

## Optical Sizing

- A circle must be ~13% larger than a square to appear the same size optically.
- Nested border radius: always set inner radius = outer radius minus the padding between them.

## Glass Effect

Use for elevated containers that need to stand out — not for every card.

- Background: `rgba(255, 255, 255, 0.35)`
- Backdrop filter: `blur(20px)`
- Border: `1px solid rgba(255, 255, 255, 0.5)`
- Box shadow: `0 8px 32px rgba(0, 0, 0, 0.15)`

## Modal Animation

- Open: spring scale with overshoot, content staggers in.
- Close: don't vanish — scale down and fade out.
- Background: `blur(20px)` with a deep shadow.

## Buttons

### General

- Give buttons generous padding — let them breathe.
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

- Confirmation/delete buttons glow on hover, bounce back on press.

## Anti-Patterns (NEVER)

- Purple gradient on white background.
- Gray text on colored backgrounds.
- Cards inside cards inside cards.
