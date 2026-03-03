# Frontend — Domain Rules

> Tier-2 agent rules for the frontend domain.

## Scope

Everything under `frontend/` — the game UI, components, styling, interactions.

## Owner Tag

`[DEV:frontend]`

## Conventions

1. **Single-file architecture** — the game is one HTML file with embedded JSX
2. **React 18 via CDN** — no npm, no build step, no bundler
3. **Design tokens** — all styles reference the `T` (tokens) object, never hardcoded hex values
4. **CSS Grid** — used for shaped level layouts with `grid-column`/`grid-row` positioning

## Rules

- Every color MUST come from the `T` tokens object
- No gray colors — all neutrals are violet-tinted
- Gold is reserved for XP/rewards only
- Card flip uses CSS 3D transforms (500ms, `preserve-3d`)
- Interaction guards: max 2 flipped, no re-click, no same-card, dealing lock
