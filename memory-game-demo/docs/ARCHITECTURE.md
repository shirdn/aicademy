# Technical Architecture — The Arcane Vault

## 1. Tech Stack

| Layer | Technology | Why |
|-------|-----------|-----|
| **Frontend** | React 18 (CDN) | Single-file, no build step, demo-friendly |
| **Layout** | CSS Grid | Native spans for shaped grids |
| **Styling** | Inline styles (token-driven) | Single-file constraint, tokens as JS object |
| **Fonts** | Google Fonts CDN | MedievalSharp, Crimson Text, Fira Code |
| **Animation** | CSS 3D Transforms | Card flip, glow pulses, shake effects |
| **Backend** | None | Client-side only |
| **Database** | None | No persistence (future: localStorage) |
| **Testing** | Playwright | E2E browser tests |

---

## 2. System Architecture

```
Browser
  |
  v
index.html (single file)
  |
  +-- React 18 (CDN) -----> Components
  |                           |-- MainMenu
  |                           |-- LevelSelect
  |                           |-- GameBoard
  |                           |     |-- HUD
  |                           |     |-- TimerBar
  |                           |     +-- Card (x N)
  |                           +-- ResultsModal
  |
  +-- Design Tokens (T) ---> All styles
  |
  +-- Level Templates -----> 8 shaped grids
  |
  +-- Symbol Pool ----------> 16 D&D creatures
```

---

## 3. Key Components

### Component: ArcaneVault (Root)
- **Purpose:** State machine controller — manages game phase transitions
- **Location:** `frontend/modules/game/src/index.html`
- **States:** `menu` -> `levelSelect` -> `playing` -> `results`

### Component: GameBoard
- **Purpose:** Active gameplay — renders shaped grid, handles card clicks
- **Depends on:** HUD, TimerBar, Card, level templates

### Component: Card
- **Purpose:** Individual card with 3D flip animation
- **Props:** card data, cellSize, isFlipped, isMatched, isMismatched, onClick

---

## 4. Data Model

```
Design Tokens (T)
  - surfaces: void, abyss, obsidian, nightstone, dusk, twilight
  - accents: arcane, arcaneLight, arcaneDim, gold, goldLight
  - semantic: success, warning, danger, info
  - text: text, textMuted, textFaint, textGhost

Level Template
  - id: string
  - name: string (e.g., "The Pillar")
  - shape: string (e.g., "1")
  - difficulty: easy | medium | hard | legendary
  - grid: { cols, rows }
  - slots: Array<{ col, row, size }>
  - timeLimit: number (seconds)

Card Instance
  - id: number (slot index)
  - col, row: grid position
  - size: "1x1"
  - pairId: string (symbol ID)
  - symbol: { id, emoji, name }
```

---

## 5. Key Algorithms

| Algorithm | Purpose |
|-----------|---------|
| `makeTemplate()` | Parse pattern strings (`#` = card, `.` = empty) into slot arrays |
| `validateTemplate()` | Verify even pairs, no overlap, in bounds |
| `buildCards()` | Assign symbols to slots, Fisher-Yates shuffle within size groups |
| `calculateStars()` | 1-3 stars: move ratio + time ratio thresholds |
| `calculateXP()` | baseXP (pairs x 100) + timeBonus + starBonus |

---

## 6. Key Decisions

See `docs/DECISIONS.md` for the full log.
