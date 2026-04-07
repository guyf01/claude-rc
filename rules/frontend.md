# Frontend Rules

## Approach

Before writing UI code, understand the project's stack — check package.json, imports, and existing components. Use what's already there. Never introduce a competing library.

Think before coding: what problem does this UI solve? Who uses it? What should they feel? What's the tone — brutally minimal, maximalist, editorial, playful, refined? What are the constraints? And what's the one thing that makes it unforgettable? Pick a clear direction and commit to it — bold maximalism and refined minimalism both work, the key is intentionality.

Never produce generic AI-looking output. Avoid safe, predictable choices. Every design should be unique — make a genuine creative decision every time.

Match implementation complexity to the aesthetic vision. Maximalist designs deserve elaborate code — layered effects, rich animations, dense interactions. Minimalist designs demand precision — exact spacing, careful typography, subtle details. Elegance comes from executing the vision well, not from a fixed level of effort.

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

White text on dark backgrounds looks heavier than black text on white. Reduce font weight by one step to compensate.

## Color

- Use CSS variables for all colors — never hardcode hex values scattered across the codebase.
- Dominant color with sharp accents beats evenly-distributed palettes.
- Dark themes: never pure `#000` — use near-blacks like `#0a0a0a`, `#111`, `#1a1a2e`.
- Light themes: never pure `#fff` — use warm whites like `#fafafa`, `#f8f7f4`, `#fef9ef`.
- NEVER: Purple gradient on white background.

## Layout

- Whitespace is a design element.
- Touch targets: minimum 44x44px.
- Break predictable grids — asymmetry, overlapping elements, and diagonal flow create visual interest.
- Commit to either generous negative space or controlled density. Never land in the middle.

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

## Anti-Patterns (NEVER)

- Purple gradient on white background.
- Gray text on colored backgrounds.
- Cards inside cards inside cards.
