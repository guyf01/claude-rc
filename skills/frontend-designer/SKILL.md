---
name: frontend-designer
description: Use when building, styling, or designing frontend UI — components, pages, layouts, animations, or visual design decisions
---

# Frontend Designer

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

## Glass Effect

Use for elevated containers that need to stand out — e.g., a now-playing card, a featured info box. Not for every card.

Apply these values for glass effects:

- Background: `rgba(255, 255, 255, 0.35)`
- Backdrop filter: `blur(20px)`
- Border: `1px solid rgba(255, 255, 255, 0.5)`
- Box shadow: `0 8px 32px rgba(0, 0, 0, 0.15)`

## Optical Sizing

- A circle must be ~13% larger than a square to appear the same size optically.
- Nested border radius: always set inner radius = outer radius minus the padding between them.

## Typography

- White text on dark backgrounds looks heavier than black text on white. Reduce font weight by one step to compensate.

## Modal Animation

- Open: spring scale with overshoot, content staggers in.
- Close: don't vanish — scale down and fade out.
- Background: `blur(20px)` with a deep shadow.

## Premium Buttons

For prominent CTAs (e.g., "Get Started", not every button):

- Confirmation/delete buttons glow on hover, bounce back on press.
