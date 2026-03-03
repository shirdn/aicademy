# Arcane UI Kit — Design System

> One theme. One identity. Every pixel violet-tinted, gold-accented, rune-marked.

---

## 1. Color Palette

### Surfaces (dark -> light)

| Token | Value | Usage |
|-------|-------|-------|
| `void` | `#030010` | Deepest background (page bg) |
| `abyss` | `#08001a` | Primary surface (inputs, recessed areas) |
| `obsidian` | `#0f0528` | Elevated surface (card panels) |
| `nightstone` | `#160a35` | Card/panel fill |
| `dusk` | `#1e1145` | Hover / active states |
| `twilight` | `#2a1a55` | Borders, dividers |

### Accents

| Token | Value | Usage |
|-------|-------|-------|
| `arcane` | `#a78bfa` | Primary accent -- buttons, links, active states |
| `arcaneLight` | `#c4b5fd` | Hover accent |
| `arcaneDim` | `#7c5cbf` | Muted accent (disabled, secondary) |
| `gold` | `#fbbf24` | XP, rewards, legendary -- NEVER decorative |
| `goldLight` | `#fde68a` | Gold highlight / glow |

### Semantic

| Token | Value | Usage |
|-------|-------|-------|
| `success` | `#34d399` | Match found, level complete |
| `warning` | `#f59e0b` | Timer < 30s, medium difficulty |
| `danger` | `#f87171` | Timer < 10s, mismatch shake |
| `info` | `#60a5fa` | Hints, tutorials |

### Text (violet-tinted -- NEVER gray)

| Token | Value | Usage |
|-------|-------|-------|
| `text` | `#e2ddf5` | Headings, key info |
| `textMuted` | `#9b8ec2` | Body text, labels |
| `textFaint` | `#5b4d80` | Metadata, timestamps |
| `textGhost` | `#3d2e60` | Placeholders, disabled states |

**Hard rule:** No `#gray` anywhere. Every neutral has a violet tint. R=G=B values are rejected.

---

## 2. Typography

| Role | Stack | Usage |
|------|-------|-------|
| Display | `'MedievalSharp', serif` | Headings, buttons, labels |
| Body | `'Crimson Text', Georgia, serif` | Descriptions, paragraphs |
| Mono | `'Fira Code', monospace` | Stats, grid specs, metadata |

---

## 3. Spacing

4px base: `4 - 8 - 12 - 16 - 20 - 24 - 32 - 48 - 64`

---

## 4. Border Radii

| Token | Value | Usage |
|-------|-------|-------|
| `r1` | 4px | Small elements, badges |
| `r2` | 8px | Buttons, inputs |
| `r3` | 12px | Cards, panels |
| `r4` | 16px | Modals, large containers |
| `rFull` | 999px | Pills, circles |

Card-specific: `min(width, height) * 0.12`

---

## 5. Shadows

| Level | CSS | Usage |
|-------|-----|-------|
| Sm | `0 2px 4px rgba(0,0,0,0.3)` | Subtle lift |
| Md | `0 4px 8px rgba(0,0,0,0.4)` | Cards, buttons |
| Lg | `0 8px 24px rgba(0,0,0,0.5)` | Modals, overlays |
| Glow | `0 0 24px {color}, 0 4px 16px rgba(0,0,0,0.5)` | Emphasis, matched state |

---

## 6. Animation Tokens

| Animation | Duration | Usage |
|-----------|----------|-------|
| Card flip | 500ms | 3D Y-axis rotation |
| Match glow | 800ms | Success glow pulse |
| Mismatch shake | 400ms | Horizontal oscillation |
| Button hover | 150ms | Color/glow transition |
| Timer bar | 100ms | Tick smoothing |

---

## 7. Visual Rules

- **Glow budget:** Max 1-2 glowing elements per screen
- **Gold reservation:** ONLY for XP, rewards, legendary content
- **No gray:** Every neutral is violet-tinted
- **Card radius:** `min(w, h) * 0.12` -- proportional to card size

---

## 8. Components

| Component | Variants |
|-----------|----------|
| ArcaneButton | primary, gold, ghost, danger (+ glow, sizes sm/md/lg) |
| TimerBar | Color transitions: arcane > warning > danger |
| HUD | Timer, pairs, moves, level name |
| Card | Back face (glyph), front face (emoji), matched (glow) |
| StarRating | 1-3 stars, gold filled / ghost empty |
| ShapeMiniPreview | Dot-grid representation of level shape |

---

## 9. Accessibility

- Contrast: text on nightstone >= 7:1 (WCAG AAA)
- Focus states: planned for future sprint
- Motion: `prefers-reduced-motion` support planned
