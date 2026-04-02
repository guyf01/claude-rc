# Frontend Patterns

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
