# Frontend Guidelines

## Design Principles

Pick one primary design principle per project. Don't mix randomly.

- Glassmorphism — overlays, modern dashboards
- Neumorphism — settings panels, minimal controls
- Brutalism — developer tools, editorial sites
- Minimalism — portfolios, documentation, content-first
- Maximalism — creative agencies, e-commerce
- Claymorphism — playful apps, onboarding
- Bento Grid — dashboards, feature showcases
- Aurora / Mesh Gradients — landing pages, hero sections
- Flat Design — mobile apps, system UI
- Material Elevation — data-heavy apps, enterprise
- Editorial — blogs, long-form content

## Component Framework

Use whatever the project already has. Don't mix competing libraries. Options are listed in order of preference.

- CSS — Tailwind, vanilla CSS, CSS Modules, styled-components, Emotion, UnoCSS, Panda CSS
- Primitives — shadcn/ui, Radix, Headless UI, Ark UI, DaisyUI, Mantine, Chakra, Vuetify
- Animation — CSS transitions, Framer Motion, GSAP, View Transitions API, AutoAnimate
- Charts — Recharts, D3, Chart.js, Visx, ECharts, Nivo
- Icons — Lucide, Phosphor, Heroicons, Tabler Icons, Iconify

## Responsive

Mobile-first.

## Performance

- Images: `loading="lazy"` below the fold, explicit `width`/`height`.

## Accessibility (non-negotiable)

All interactive elements must be keyboard-accessible.
Images: meaningful alt text. Decorative images: `alt=""`.
