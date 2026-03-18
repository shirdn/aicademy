# The Arcane Vault — UI Kit Specification

> **Project:** Memory Match (Shaped Grid)
> **Theme:** Arcane — unified across all screens
> **Living reference:** `arcane-ui-kit.jsx` (1,156 lines)
> **Version:** 1.0
> **Date:** 2026-02-24
> **Owner:** CTO / UX Agent

---

## Table of Contents

| § | Section | JSX Lines | Description |
|---|---------|-----------|-------------|
| 1 | [Design Tokens](#1-design-tokens) | `10–60` | Colors, typography, spacing, shadows |
| 2 | [Color Palette](#2-color-palette) | `12–43` | Core surfaces, accents, semantics |
| 3 | [Typography](#3-typography) | `44–47` | Font stacks, scale, hierarchy |
| 4 | [Spacing & Radius](#4-spacing--radius) | `49–54` | 4px base grid, border radii |
| 5 | [Elevation & Shadows](#5-elevation--shadows) | `56–59` | Shadow scale, glow function |
| 6 | [Effects & Atmosphere](#6-effects--atmosphere) | — | Gradients, dividers, textures |
| 7 | [Components](#7-components) | `113–210` | Buttons, badges, cards, inputs, progress |
| 8 | [Screen Mockups](#8-screen-mockups) | `604–928` | Main menu, level select, game board, results |
| 9 | [Card Size System](#9-card-size-system) | `934–1071` | 4 size variants, grid placement rules |
| 10 | [Implementation Notes](#10-implementation-notes) | — | CSS variable export, responsive rules |

---

## 1. Design Tokens

All tokens live in the `T` object (JSX line `10`). This is the single source of truth. Every component references `T.*` — nothing is hardcoded.

```
JSX reference: const T = { ... }  →  lines 10–60
```

The token object is designed to be exportable as:
- CSS custom properties (`--arcane-void: #030010`)
- Tailwind theme extension
- JSON design token file (Style Dictionary compatible)

---

## 2. Color Palette

### 2.1 Core Surfaces (dark → light)

These define the depth layers of the UI. Every surface is violet-tinted black — never pure gray.

| Token | Hex | Role | Usage |
|-------|-----|------|-------|
| `void` | `#030010` | Deepest background | Page background, abyss |
| `abyss` | `#08001a` | Primary surface | Input fields, recessed panels |
| `obsidian` | `#0f0528` | Elevated surface | Card panels, modals |
| `nightstone` | `#160a35` | Card/panel fill | Card faces, spec boxes |
| `dusk` | `#1e1145` | Hover/active | Button hover, selected states |
| `twilight` | `#2a1a55` | Borders, dividers | Panel borders, separators |

**Design rule:** Surface hierarchy goes `void` (back) → `nightstone` (cards) → `dusk` (interactive). Never skip more than 2 levels.

### 2.2 Arcane Accent (Primary)

The signature violet. Used for interactive elements, emphasis, and the core brand identity.

| Token | Hex | Usage |
|-------|-----|-------|
| `arcane` | `#a78bfa` | Primary accent — buttons, links, active states |
| `arcaneLight` | `#c4b5fd` | Hover state, highlighted text |
| `arcaneDim` | `#7c5cbf` | Muted accent, secondary emphasis |
| `arcaneFaint` | `#a78bfa18` | Background tint (10% opacity) — selected tabs, subtle fills |
| `arcaneGlow` | `rgba(167,139,250,0.35)` | Box-shadow glow — used in `shadowGlow()` |

### 2.3 Runic Gold (Secondary)

Reserved for rewards, progression, legendary items, and XP. Using gold outside these contexts dilutes its meaning.

| Token | Hex | Usage |
|-------|-----|-------|
| `gold` | `#fbbf24` | XP values, reward text, legendary badges |
| `goldLight` | `#fde68a` | Gold highlights, shimmer effects |
| `goldDim` | `#b4870a` | Muted gold, secondary reward info |
| `goldFaint` | `#fbbf2410` | Background tint for gold panels |
| `goldGlow` | `rgba(251,191,36,0.3)` | Box-shadow glow for gold buttons |

### 2.4 Semantic Colors

Functional colors with specific meaning. Each should trigger an immediate association.

| Token | Hex | Meaning | Examples |
|-------|-----|---------|----------|
| `success` | `#34d399` | Positive outcome | Match found, level complete, pairs remaining |
| `warning` | `#f59e0b` | Caution | Timer below 30s, medium difficulty |
| `danger` | `#f87171` | Critical | Timer below 10s, mismatch flash, hard difficulty |
| `info` | `#60a5fa` | Informational | Hints, tooltips, tutorial callouts |

### 2.5 Text Colors (Violet-Tinted Neutrals)

Every text color has a violet undertone to maintain cohesion against the dark surfaces.

| Token | Hex | Hierarchy | Usage |
|-------|-----|-----------|-------|
| `text` | `#e2ddf5` | Primary | Headings, key information, active content |
| `textMuted` | `#9b8ec2` | Secondary | Body text, descriptions, labels |
| `textFaint` | `#5b4d80` | Tertiary | Metadata, timestamps, grid specs |
| `textGhost` | `#3d2e60` | Ghost | Placeholders, disabled text, decorative |

**Accessibility note:** `text` on `nightstone` achieves ~7:1 contrast ratio (WCAG AAA). `textMuted` on `nightstone` achieves ~4.5:1 (WCAG AA). Below `textMuted`, text is decorative only — not relied upon for information.

---

## 3. Typography

### 3.1 Font Stacks

| Token | Stack | Role | Source |
|-------|-------|------|--------|
| `fontDisplay` | `'MedievalSharp', serif` | Headings, labels, game UI | Google Fonts |
| `fontBody` | `'Crimson Text', 'Georgia', serif` | Body text, flavor text, descriptions | Google Fonts |
| `fontMono` | `'Fira Code', 'Courier New', monospace` | Stats, grid specs, code, metadata | Google Fonts |

```css
/* Google Fonts import (JSX line 1084) */
@import url('https://fonts.googleapis.com/css2?family=MedievalSharp&family=Crimson+Text:ital@0;1&family=Fira+Code:wght@400&display=swap');
```

### 3.2 Type Scale

All sizes are in `px`. The scale is not strictly mathematical — it's tuned for the game context.

| Level | Font | Size | Tracking | Usage |
|-------|------|------|----------|-------|
| **H1 / Title** | MedievalSharp | 36px | 0.04em | Game title ("The Arcane Vault") |
| **H2 / Section** | MedievalSharp | 24px | 0.03em | Section headers, level names |
| **H3 / Card Name** | MedievalSharp | 18px | 0.02em | Creature names, modal titles |
| **H4 / Label** | MedievalSharp | 14px | 0.02em | Button text, HUD labels |
| **Caption** | MedievalSharp | 11px | 0.15em | Uppercase subtitles, category labels |
| **Body** | Crimson Text | 15px | — | Flavor text, descriptions |
| **Body Small** | Crimson Text | 13px | — | Secondary body content |
| **Body XS** | Crimson Text | 11px | — | Attributions, timestamps (italic) |
| **Mono** | Fira Code | 11px | — | Stats (STR 30 · DEX 10) |
| **Mono Small** | Fira Code | 10px | — | Grid specs (7×9 · pairs: 12) |
| **Mono XS** | Fira Code | 9px | — | JSON/code snippets |

### 3.3 MedievalSharp Usage Rules

- Always `letter-spacing: 0.02em` minimum — the font needs breathing room
- UPPERCASE only at `≤11px` with `letter-spacing: 0.15em+` for readability
- Never use for long body paragraphs — it fatigues at >2 lines
- Perfect for: single-line labels, headings, game HUD, button text

### 3.4 Crimson Text Usage Rules

- `line-height: 1.5` for body, `1.4` for small text
- Use italic for attributions and metadata
- Works well for flavor text in card descriptions
- Fallback to Georgia keeps the serif character on missing font

---

## 4. Spacing & Radius

### 4.1 Spacing Scale

Base unit: **4px**. All spacing is a multiple of 4.

| Token | Value | Usage |
|-------|-------|-------|
| `sp1` | 4px | Tight gaps (badge internal, icon spacing) |
| `sp2` | 8px | Default inner gap (card internal, list items) |
| `sp3` | 12px | Component padding (badge padding, small card) |
| `sp4` | 16px | Standard padding (cards, panels, sections) |
| `sp5` | 20px | Comfortable padding (modals, main panels) |
| `sp6` | 24px | Section spacing (between component groups) |
| `sp8` | 32px | Large spacing (between sections, modal body) |
| `sp10` | 40px | Page-level spacing |
| `sp12` | 48px | Major section breaks |
| `sp16` | 64px | Maximum spacing (hero areas, results screen) |

### 4.2 Border Radius

| Token | Value | Usage |
|-------|-------|-------|
| `r1` | 4px | Tiny elements (color swatches, progress bars, inner borders) |
| `r2` | 8px | Default (buttons, inputs, badges, card slots) |
| `r3` | 12px | Panels (spec boxes, game board container, modals) |
| `r4` | 16px | Large panels (screen frames, main game board) |
| `rFull` | 999px | Pill shapes (badges, progress bar tracks) |

**Card radius formula:** `Math.min(cardWidth, cardHeight) * 0.12` — proportional to card size.

---

## 5. Elevation & Shadows

### 5.1 Shadow Scale

| Token | Value | Usage |
|-------|-------|-------|
| `shadowSm` | `0 2px 8px rgba(0,0,0,0.4)` | Subtle lift — card backs, small elements |
| `shadowMd` | `0 4px 16px rgba(0,0,0,0.5)` | Default card elevation — panels, buttons |
| `shadowLg` | `0 8px 32px rgba(0,0,0,0.6)` | Major elevation — modals, screen frames |

### 5.2 Glow Shadows

The signature Arcane effect. Used sparingly for emphasis.

```javascript
// JSX line 59
shadowGlow: (color) => `0 0 24px ${color}, 0 4px 16px rgba(0,0,0,0.5)`
```

| Glow Type | Color Parameter | Usage |
|-----------|----------------|-------|
| Arcane glow | `T.arcaneGlow` → `rgba(167,139,250,0.35)` | Primary CTA, selected level, active panel |
| Gold glow | `T.goldGlow` → `rgba(251,191,36,0.3)` | Reward buttons, XP bars, legendary items |
| Match glow | `T.success + "40"` | Matched card pair celebration |
| Danger glow | `T.danger + "40"` | Timer critical state |

**Usage rule:** Maximum 1-2 glowing elements per screen. Glow is emphasis — if everything glows, nothing does.

---

## 6. Effects & Atmosphere

### 6.1 Background Gradients

| Name | CSS | Usage |
|------|-----|-------|
| Void Radial | `radial-gradient(ellipse at 50% 20%, obsidian, void 70%)` | Main page background |
| Surface | `linear-gradient(145deg, nightstone, obsidian)` | Card/panel fill |
| Arcane Mist | `radial-gradient(circle at 50% 50%, arcane 12%, transparent 60%)` | Atmospheric center glow |
| Gold Glow | `radial-gradient(circle at 50% 50%, gold 10%, transparent 50%)` | Reward screen atmosphere |
| Card Back | `linear-gradient(135deg, nightstone, twilight 30%)` | Face-down card fill |
| Card Face (flipped) | `linear-gradient(135deg, nightstone, arcane 8%)` | Face-up card fill |
| Card Face (matched) | `linear-gradient(135deg, success 15%, nightstone)` | Matched card fill |

### 6.2 Decorative Dividers

Three divider styles used throughout the UI:

```
Fade-center:  ───────── (transparent → arcane 40% → transparent)
Fade-left:    ████───── (arcane 40% → transparent)
Ornamental:   ────── ✦ ────── (symmetric with glyph)
```

**Implementation:** Pure CSS `linear-gradient` on a 1px height div. The ornamental uses flex layout with a MedievalSharp `✦` character.

### 6.3 The ✦ Glyph

The star/diamond glyph `✦` is the game's visual signature. Used in:

| Context | Size | Color | Opacity |
|---------|------|-------|---------|
| Card back pattern | 12px | `arcane` | 0.12 |
| Divider ornament | 8px | `textGhost` | 1.0 |
| Main menu watermark | 200px | `arcane` | 0.02 |
| Empty grid cells | 8px | `arcane` | 0.08 |

---

## 7. Components

### 7.1 ArcaneButton

```
JSX: function ArcaneButton(...)  →  lines 115–155
```

**Props:**

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `variant` | `"primary" \| "gold" \| "ghost" \| "danger"` | `"primary"` | Visual style |
| `size` | `"sm" \| "md" \| "lg"` | `"md"` | Size preset |
| `glow` | `boolean` | `false` | Adds glow box-shadow |
| `disabled` | `boolean` | `false` | Grayed out, no pointer |
| `children` | `ReactNode` | — | Button label |

**Variant Specs:**

| Variant | Background | Border | Text Color | Use Case |
|---------|------------|--------|------------|----------|
| `primary` | `arcane 30% → 15%` | `arcane 60%` | `arcane` | Default CTA — "Next Level", "Start" |
| `gold` | `gold 25% → 10%` | `gold 50%` | `gold` | Reward actions — "Claim XP" |
| `ghost` | `transparent` | `twilight` | `textMuted` | Secondary — "Back", "Replay" |
| `danger` | `danger 20% → 8%` | `danger 40%` | `danger` | Destructive — "Quit", "Reset" |

**Size Specs:**

| Size | Padding | Font Size |
|------|---------|-----------|
| `sm` | `5px 12px` | 11px |
| `md` | `8px 20px` | 13px |
| `lg` | `12px 28px` | 15px |

**States:**
- Default: As specified per variant
- Hover: `transition: all 0.2s` (handle via CSS or onMouseEnter)
- Active: `transform: scale(0.97)` (CSS rule at line 1092)
- Disabled: `opacity: 0.35`, `cursor: not-allowed`
- Glow: Adds `shadowGlow(arcaneGlow)` or `shadowGlow(goldGlow)`

### 7.2 ArcaneBadge

```
JSX: function ArcaneBadge(...)  →  lines 157–173
```

**Props:**

| Prop | Type | Default |
|------|------|---------|
| `variant` | `"default" \| "gold" \| "success" \| "danger"` | `"default"` |
| `children` | `ReactNode` | — |

**Specs:** `font: fontDisplay 10px`, `padding: 2px 8px`, `border-radius: rFull (pill)`, background at ~10% opacity of variant color, 1px border at ~20% opacity.

**Usage examples:**
- `<ArcaneBadge>CR 24</ArcaneBadge>` — stat tag
- `<ArcaneBadge variant="gold">★ Legendary</ArcaneBadge>` — rarity
- `<ArcaneBadge variant="success">Matched!</ArcaneBadge>` — game event
- `<ArcaneBadge variant="danger">Time Low</ArcaneBadge>` — warning

### 7.3 ArcaneCard

```
JSX: function ArcaneCard(...)  →  lines 175–186
```

**Props:**

| Prop | Type | Default |
|------|------|---------|
| `glow` | `boolean` | `false` |
| `interactive` | `boolean` | `false` |
| `pad` | `number` | `16` |
| `children` | `ReactNode` | — |

**Specs:** `background: linear-gradient(145deg, nightstone, obsidian)`, `border: 1px solid twilight 50%`, `border-radius: r3 (12px)`. Glow adds `shadowGlow(arcaneGlow)`. Interactive adds `cursor: pointer`.

### 7.4 ArcaneInput

```
JSX: function ArcaneInput(...)  →  lines 188–199
```

**Props:**

| Prop | Type | Description |
|------|------|-------------|
| `placeholder` | `string` | Ghost text |
| `icon` | `string` | Leading emoji icon |

**Specs:** `background: abyss`, `border: 1px solid twilight 60%`, `border-radius: r2`, `padding: 8px 12px`. Placeholder in `fontBody 12px textGhost`.

### 7.5 ArcaneProgress

```
JSX: function ArcaneProgress(...)  →  lines 201–210
```

**Props:**

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `value` | `number` | — | Current value |
| `max` | `number` | — | Maximum value |
| `color` | `string` | `T.arcane` | Bar fill color |
| `height` | `number` | `4` | Bar height in px |

**Specs:** Track: `twilight 40%`, `border-radius: rFull`. Fill: solid `color` with `box-shadow: 0 0 8px color 60%`. Animated via `transition: width 0.5s`.

**Color conventions:**
- Timer >30s: `arcane`
- Timer 10–30s: `warning`
- Timer <10s: `danger`
- XP progress: `gold`

### 7.6 HUD Bar

Not a standalone component — composed inline. Spec:

```
Container: flex, gap 14, padding 8px 16px, radius r3
           background: abyss, border: 1px solid twilight 30%
Elements:  fontDisplay 13px
           Timer → arcane / warning / danger (time-based)
           Pairs → success
           Moves → textMuted
           XP → gold
Format:    ⏳ 72s · 🎯 5/12 · ⚡ 14 moves · ✨ 850 XP
```

### 7.7 Star Rating Display

Inline composition. Spec:

```
Container: fontSize 20-32px (context dependent), letterSpacing 4-8px
Earned:    opacity 1
Unearned:  opacity 0.12
Character: ⭐ (native emoji)
```

### 7.8 Stat Block

Inline composition. Spec:

```
Layout:  flex column, center-aligned, gap 2px
Label:   fontMono 8px, textFaint, letterSpacing 0.1em (STR, DEX, CON...)
Value:   fontDisplay 16px, text (normal) or arcane (high stat)
High:    textShadow: 0 0 8px arcaneGlow
```

---

## 8. Screen Mockups

### 8.1 Screen Frame

```
JSX: function ScreenFrame(...)  →  lines 604–620
```

All mockups render inside a phone-like frame: `340×520px`, `border-radius: r4`, `border: 1px solid twilight 50%`, `background: radial void gradient`, `shadow: shadowLg`.

### 8.2 Main Menu

```
JSX: function ScreenMainMenu()  →  lines 842–912
```

**Layout:**

```
┌─────────────────────────┐
│                         │
│         ✦ (200px        │
│         watermark,      │
│         0.02 opacity)   │
│                         │
│    The Arcane Vault      │
│    ─── MEMORY MATCH ──── │
│                         │
│    🐉 ⚔️ 👑 💎 🔥       │
│    (card fan, rotated    │
│     -16° to +16°)       │
│                         │
│   ╔═══════════════════╗  │
│   ║   Begin Quest     ║  │  ← primary glow button
│   ╚═══════════════════╝  │
│   ┌───────────────────┐  │
│   │  Continue (3/11)  │  │  ← ghost button
│   └───────────────────┘  │
│   ┌───────────────────┐  │
│   │     Bestiary      │  │  ← ghost button (dimmer)
│   └───────────────────┘  │
│                         │
│   SynaptixLabs · v1.0   │
└─────────────────────────┘
```

**Card fan:** 5 emoji cards, each `40×52px`, `r2`, surface gradient, `twilight 40%` border. Rotation: `(index - 2) * 8deg` → -16°, -8°, 0°, 8°, 16°.

### 8.3 Level Select

```
JSX: function ScreenLevelSelect()  →  lines 622–683
```

**Layout:**

```
┌─────────────────────────┐
│    The Arcane Vault      │
│    ─ SELECT YOUR TRIAL ─ │
│                         │
│  ┌─────┐ ┌─────┐ ┌─────┐│
│  │  1  │ │  +  │ │  A  ││  ← 3×N grid of level cards
│  │easy │ │easy │ │ med ││
│  │ 5p  │ │ 6p  │ │ 10p ││
│  │⭐⭐⭐│ │⭐⭐⭐│ │⭐⭐  ││
│  └─────┘ └─────┘ └─────┘│
│  ┌─────┐ ┌─────┐ ┌─────┐│
│  │  ◆  │ │  ★  │ │  H  ││
│  │ med │ │lgnd │ │hard ││
│  │ 10p │ │ 16p │ │ 10p ││
│  │     │ │     │ │     ││
│  └─────┘ └─────┘ └─────┘│
│                         │
│  ✨ 2,450 XP    3/11    │  ← footer bar
└─────────────────────────┘
```

**Level card spec:**
- Background: `surface gradient` (theme-tinted if themes differ)
- Border: `twilight 30%` default, `arcane 50%` if selected/current
- Active level: `shadowGlow(arcaneGlow)`
- Shape label: `fontDisplay 28px, arcane, opacity 0.2` (background watermark)
- Name: `fontDisplay 9px, text`
- Difficulty: `fontMono 7px`, colored by difficulty (`success`/`warning`/`danger`/`arcane`)
- Pair count: `fontMono 7px, textFaint`
- Stars: Earned stars shown, empty if not yet completed
- Size badges (if mixed sizes): `fontMono 8px`, `arcaneFaint` background

**Difficulty colors:**
- Easy: `success` (`#34d399`)
- Medium: `warning` (`#f59e0b`)
- Hard: `danger` (`#f87171`)
- Legendary: `arcane` (`#a78bfa`)

### 8.4 Game Board

```
JSX: function ScreenGameBoard()  →  lines 685–763
```

**Layout:**

```
┌─────────────────────────┐
│ ← Back  ⏳87s 🎯3/10 ⚡9  A │  ← HUD row
│ ████████████████████░░░░│  ← timer progress bar
│                         │
│     . . # # # . .       │
│     . # . . . # .       │  ← Shaped grid
│     # . . . . . #       │     (Letter A shown)
│     # W # # W # #       │     W = 2×1 wide card
│     # . . . . . #       │
│     # . . . . . #       │
│                         │
│    The Letter A · Medium │
└─────────────────────────┘
```

**Card states rendered:**
- `hidden`: Surface gradient, `twilight 40%` border, `✦` glyph at 0.08 opacity
- `flipped`: Nightstone → arcane 8% gradient, `arcane 50%` border, emoji revealed, `shadowGlow(arcaneGlow)`
- `matched`: Success 15% → nightstone gradient, `success 40%` border, emoji at 0.5 opacity

**Grid container:** `radial-gradient(ellipse at 50% 40%, obsidian, abyss)`, `border: 1px solid twilight 20%`, `border-radius: r3`, `padding: 12px`.

### 8.5 Results / Victory

```
JSX: function ScreenResults()  →  lines 765–840
```

**Layout:**

```
┌─────────────────────────┐
│                         │
│           A              │  ← shape echo (60px, arcane, 0.08)
│                         │
│     Quest Complete!      │  ← fontDisplay 22px
│                         │
│       ⭐⭐⭐              │  ← star rating (32px)
│                         │
│   MOVES    TIME    XP    │
│    12      47s    1,250  │  ← stat row
│                         │
│  ┌───────────────────┐  │
│  │ XP BREAKDOWN      │  │  ← recessed panel
│  │ Pairs    +1,000   │  │
│  │ Time     +150     │  │
│  │ Stars    +100     │  │
│  │ ─────────────     │  │
│  │ Total  ✨1,250    │  │
│  └───────────────────┘  │
│                         │
│  LEVEL PROGRESS          │
│  ████████████░░░░  65%   │  ← gold progress bar
│  Lvl 4          Lvl 5   │
│                         │
│  [Replay]  [Next Level→] │  ← ghost + primary glow
└─────────────────────────┘
```

**XP Breakdown panel:** `background: abyss`, `border: 1px solid twilight 20%`, `border-radius: r2`. Each row: `fontBody 10px`, labels in `textMuted`, values in `text` (or `arcane`/`gold` for bonuses). Divider: `twilight 30%` 1px line. Total: `fontDisplay 12px, gold`.

**Star rating formula:**
- ★★★: moves ≤ 1.5× minimum AND ≥50% time remaining
- ★★☆: moves ≤ 2× minimum
- ★☆☆: completed within time limit

---

## 9. Card Size System

```
JSX: function PageCardSizes()  →  lines 934–1071
```

### 9.1 Size Variants

| Size | Grid Span | Pixel Size (at 52px cell, 6px gap) | Frequency | Designation |
|------|-----------|-------------------------------------|-----------|-------------|
| `1×1` | 1 col × 1 row | 52 × 52 | ~70% | Standard |
| `2×1` | 2 cols × 1 row | 110 × 52 | ~15% | Wide |
| `1×2` | 1 col × 2 rows | 52 × 110 | ~10% | Tall |
| `2×2` | 2 cols × 2 rows | 110 × 110 | ~5% | Legendary |

**Pixel size formula:** `width = cellSize × colSpan + gap × (colSpan - 1)`

### 9.2 CSS Grid Placement

```css
.card-slot[data-size="1x1"] { grid-column: span 1; grid-row: span 1; }
.card-slot[data-size="2x1"] { grid-column: span 2; grid-row: span 1; }
.card-slot[data-size="1x2"] { grid-column: span 1; grid-row: span 2; }
.card-slot[data-size="2x2"] { grid-column: span 2; grid-row: span 2; }
```

### 9.3 Visual Treatment by Size

| Size | Border | Content | Label |
|------|--------|---------|-------|
| `1×1` | `twilight 40%` | Single emoji (45% of card size) | None |
| `2×1` | `arcane 30%` | Emoji + creature name below | `fontMono 7px` size label |
| `1×2` | `arcane 30%` | Emoji (larger, ~50% of height) | `fontMono 7px` size label |
| `2×2` | `arcane 40%` with subtle glow | Emoji (48px) + name (`fontDisplay 14px, gold`) | `fontMono 9px "Legendary"` |

### 9.4 Matching Rules

- Pairs MUST be identical size. A 2×2 Dragon matches only another 2×2 Dragon.
- Shuffling happens within size groups to guarantee valid placement.
- 2×2 cards are always "boss" or "legendary" creatures — maximum 2 per level.

---

## 10. Implementation Notes

### 10.1 CSS Variable Export

The `T` token object can be exported as CSS custom properties for use outside React:

```css
:root {
  /* Surfaces */
  --av-void: #030010;
  --av-abyss: #08001a;
  --av-obsidian: #0f0528;
  --av-nightstone: #160a35;
  --av-dusk: #1e1145;
  --av-twilight: #2a1a55;

  /* Arcane Accent */
  --av-arcane: #a78bfa;
  --av-arcane-light: #c4b5fd;
  --av-arcane-dim: #7c5cbf;

  /* Gold */
  --av-gold: #fbbf24;
  --av-gold-light: #fde68a;

  /* Semantic */
  --av-success: #34d399;
  --av-warning: #f59e0b;
  --av-danger: #f87171;
  --av-info: #60a5fa;

  /* Text */
  --av-text: #e2ddf5;
  --av-text-muted: #9b8ec2;
  --av-text-faint: #5b4d80;
  --av-text-ghost: #3d2e60;

  /* Fonts */
  --av-font-display: 'MedievalSharp', serif;
  --av-font-body: 'Crimson Text', 'Georgia', serif;
  --av-font-mono: 'Fira Code', 'Courier New', monospace;

  /* Spacing */
  --av-sp-unit: 4px;

  /* Radii */
  --av-r1: 4px;
  --av-r2: 8px;
  --av-r3: 12px;
  --av-r4: 16px;

  /* Shadows */
  --av-shadow-sm: 0 2px 8px rgba(0,0,0,0.4);
  --av-shadow-md: 0 4px 16px rgba(0,0,0,0.5);
  --av-shadow-lg: 0 8px 32px rgba(0,0,0,0.6);
}
```

### 10.2 Responsive Rules

```
Cell size calculation (from shaped-memory-match.jsx):
  maxW = min(560px, viewport width - 40px)
  maxH = 400px
  cellW = (maxW - (cols - 1) × gap) / cols
  cellH = (maxH - (rows - 1) × gap) / rows
  cellSize = min(cellW, cellH, 72px)

Breakpoints:
  cellSize < 40px → enable horizontal scroll
  cellSize < 32px → reduce gap to 2px
  Screen width < 380px → stack HUD vertically
```

### 10.3 Animation Constants

| Animation | Duration | Easing | Trigger |
|-----------|----------|--------|---------|
| Card flip | 500ms | `cubic-bezier(0.4, 0, 0.2, 1)` | Click |
| Button hover | 200ms | `ease` | Hover |
| Button press | instant | — | `:active` → `scale(0.97)` |
| Progress bar | 500ms | `ease` (width), 1s linear (timer) | State change |
| Glow pulse | — | — | Continuous (CSS shadow only, no animation) |
| Level card hover | 250ms | `ease` | Hover → `translateY(-2px)` |

### 10.4 JSX Structure Index

| Section | Lines | What It Contains |
|---------|-------|------------------|
| Design Tokens (`T`) | 10–60 | All color, font, spacing, shadow tokens |
| Micro-components | 63–110 | Swatch, SectionTitle, TokenRow, SpecBox (kit internals) |
| ArcaneButton | 115–155 | Button with 4 variants, 3 sizes, glow, disabled |
| ArcaneBadge | 157–173 | Pill badge with 4 color variants |
| ArcaneCard | 175–186 | Panel card with glow option |
| ArcaneInput | 188–199 | Text input with icon |
| ArcaneProgress | 201–210 | Progress bar with glow |
| PageStyleGuide | 217–419 | Colors, typography, spacing, effects showcase |
| PageComponents | 425–598 | Interactive component library |
| ScreenFrame | 604–620 | Phone mockup frame wrapper |
| ScreenLevelSelect | 622–683 | Level grid mockup |
| ScreenGameBoard | 685–763 | Active game mockup (Letter A) |
| ScreenResults | 765–840 | Victory/XP breakdown mockup |
| ScreenMainMenu | 842–912 | Title screen mockup |
| PageScreens | 913–928 | All 4 screens arranged together |
| PageCardSizes | 934–1071 | Size variants + grid placement demo |
| Main shell | 1077–1156 | Tab navigation, header, footer |

---

## Appendix: File Map

| File | Purpose | Status |
|------|---------|--------|
| `arcane-ui-kit.jsx` | Living design system — interactive reference | ✅ Delivered |
| `shaped-memory-match.jsx` | Playable game prototype | ✅ Delivered |
| `01_Memory_Match_CTO_Agent_v2.md` | CTO agent with shaped grid architecture | ✅ Delivered |
| `02_Shaped_Grid_System_Design.md` | Technical spec for templates + layout engine | ✅ Delivered |
| **`03_Arcane_UI_Kit_Spec.md`** | **This document** | ✅ Current |

---

*Document owner: Memory Match CTO / UX Agent*
*Source: SynaptixLabs Arcane Vault Design System*
*Living reference: `arcane-ui-kit.jsx` (1,156 lines)*
