# The Arcane Vault — Memory Match

> D&D-themed memory card game with shaped grid levels.
> Built with AI vibe coding using the [AIcademy scaffold](../AIcademy-scaffold/README.md).

---

## Quick Start

```powershell
# Windows (PowerShell):
.\start.ps1
```

```bash
# Mac / Linux:
./start.sh
```

```bash
# Or manually (any OS):
cd frontend/modules/game/src
python -m http.server 8766
# Open http://localhost:8766
```

No build step. No npm install. Just open and play.

---

## How to Play

### 1. Main Menu
The game opens to the **Arcane Vault** title screen with a fan of floating creature cards. Click **"Enter the Vault"** to begin.

### 2. Choose Your Quest (Level Select)
Pick from 8 shaped levels, each with increasing difficulty:

| # | Level | Shape | Pairs | Time | Difficulty |
|---|-------|-------|-------|------|------------|
| 1 | The Pillar | `1` | 5 | 60s | Easy |
| 2 | The Cross | `+` | 6 | 90s | Easy |
| 3 | The Tablet | `T` | 8 | 80s | Easy |
| 4 | The Arch | `A` | 10 | 120s | Medium |
| 5 | The Serpent | `S` | 12 | 100s | Medium |
| 6 | The Diamond | `diamond` | 10 | 100s | Medium |
| 7 | The Gate | `H` | 10 | 110s | Hard |
| 8 | The Star | `star` | 16 | 90s | Legendary |

Each level card shows a **mini-preview** of the shape, pair count, time limit, and difficulty badge.

### 3. Gameplay
- **Click a card** to flip it and reveal the creature underneath
- **Click a second card** to try for a match
- **Match** (same creature) = both cards stay face-up with a glow effect
- **Mismatch** = cards shake and flip back after a moment
- Match all pairs before the **timer** runs out

### 4. Scoring
- **Stars** (1-3) based on speed and accuracy:
  - 1 star = complete within the time limit
  - 2 stars = complete with few mistakes (moves <= 2x pair count)
  - 3 stars = near-perfect play (moves <= 1.5x pairs AND >= 50% time remaining)
- **XP** = base (pairs x 100) + time bonus + star bonus
- Full XP breakdown shown on the results screen

### 5. After the Round
- **Play Again** = retry the same level for better stars
- **Level Select** = pick a different level
- **Main Menu** = back to the start

---

## The 16 Creatures

| | | | |
|---|---|---|---|
| Dragon | Sword | Shield | Potion |
| Scroll | Skull | Crown | Gem |
| Flame | Moon | Eye | Lightning |
| Star | Key | Serpent | Castle |

---

## Game Architecture

```
index.html (single file, ~925 lines)
|
+-- Design Tokens (T)        Colors, fonts, spacing, shadows
+-- Symbol Pool               16 D&D creatures
+-- Level Templates            8 shaped grids (pattern strings)
|
+-- Components
|   +-- ArcaneButton          Themed button (primary/gold/ghost/danger)
|   +-- Card                  3D flip card (back face / front face / matched glow)
|   +-- HUD                   Timer, pairs found, move counter
|   +-- TimerBar              Visual countdown bar with color transitions
|   +-- StarRating            1-3 star display
|   +-- ShapeMiniPreview      Dot-grid level preview
|   +-- Divider               Ornamental section separator
|
+-- Screens
|   +-- MainMenu              Title, card fan, "Enter the Vault"
|   +-- LevelSelect           8 level cards with shape previews
|   +-- GameBoard             Active gameplay (HUD + shaped grid + cards)
|   +-- ResultsModal          Stars, stats, XP breakdown, replay
|
+-- State Machine
    menu -> levelSelect -> playing -> results
```

### Key Algorithms

| Function | What It Does |
|----------|-------------|
| `makeTemplate(pattern)` | Parses `#..#/####` pattern strings into grid slot arrays |
| `validateTemplate(t)` | Checks even pairs, no overlap, in bounds, 3-24 pair range |
| `buildCards(slots)` | Assigns creature symbols to slots, Fisher-Yates shuffle |
| `calculateStars(moves, pairs, elapsed, timeLimit)` | 1-3 stars based on move ratio + time ratio |
| `calculateXP(pairs, elapsed, timeLimit, stars)` | Base + time bonus + star bonus |

### The Shaped Grid System

Levels are defined as **pattern strings** where `#` = card slot and `.` = empty space:

```
The Cross (+):        The Arch (A):
  .##.                  ..###..
  .##.                  .#...#.
  ####                  #.....#
  ####                  #.....#
  .##.                  #######
  .##.                  #.....#
                        #.....#
```

Empty cells create the **negative space** that forms the shape. The shape IS the level.

---

## Visual Identity — Arcane UI Kit

| Element | Token | Value |
|---------|-------|-------|
| Background | `void` | `#030010` (deepest violet-black) |
| Card fill | `nightstone` | `#160a35` |
| Primary accent | `arcane` | `#a78bfa` (purple) |
| Rewards ONLY | `gold` | `#fbbf24` |
| Match glow | `success` | `#34d399` |
| Timer warning | `danger` | `#f87171` |
| Headings | MedievalSharp | Fantasy display font |
| Body text | Crimson Text | Elegant serif |
| Stats/data | Fira Code | Monospace |

**Rules:** No gray anywhere (all neutrals are violet-tinted). Gold is earned, never decorative.

Full design system: `docs/ui/UI_KIT.md`

---

## Project Structure

```
memory-game-demo/
├── start.ps1                          # Start game (Windows PowerShell)
├── start.sh                           # Start game (Mac / Linux)
├── CLAUDE.md                          # Project context for Claude Code
├── AGENTS.md                          # 3 roles: CTO, DEV, QA
├── playwright.config.ts               # E2E test config (auto-starts server)
│
├── frontend/
│   ├── AGENTS.md                      # Frontend domain rules
│   └── modules/game/
│       ├── README.md                  # Component tree, key functions
│       ├── src/
│       │   └── index.html             # THE GAME (single-file React)
│       └── tests/                     # Unit + integration test dirs
│
├── backend/                           # Not used (client-side only game)
│
├── tests/
│   ├── e2e/game.spec.ts              # Playwright E2E tests (8 tests)
│   └── screenshots/                   # Captured by E2E tests
│
├── docs/
│   ├── PRD.md                         # Product requirements
│   ├── ARCHITECTURE.md                # Technical architecture
│   ├── DECISIONS.md                   # 4 key decisions documented
│   ├── ui/UI_KIT.md                   # Arcane design system tokens
│   ├── knowledge/
│   │   └── Shaped_Grid_System.md      # Level template spec
│   └── sprints/
│       └── sprint_01/                 # Complete sprint artifacts
│           ├── sprint_01_index.md     # Goals, scope, exit criteria
│           ├── todo/sprint_01_todo.md # 18 tasks, all complete
│           └── reports/sprint_01_report.md
│
└── .claude/
    ├── settings.local.json            # Tool permissions
    └── commands/                      # Slash commands (cto, dev, qa, etc.)
```

---

## Running E2E Tests

```bash
# Install Playwright (one time)
npm init -y
npm install -D @playwright/test
npx playwright install chromium

# Run tests (auto-starts the dev server)
npx playwright test

# Interactive mode
npx playwright test --ui
```

---

## Tech Stack

| Layer | Technology | Why |
|-------|-----------|-----|
| Runtime | React 18 (CDN) | Single file, no build step |
| Layout | CSS Grid | Native spans for shaped grids |
| Animation | CSS 3D Transforms | Card flip, glow, shake |
| Styling | Inline (token-driven) | Single-file, theme-enforced |
| Fonts | Google Fonts CDN | MedievalSharp, Crimson Text, Fira Code |
| Testing | Playwright | Browser E2E tests |
| Server | Python http.server | Zero-install static serving |

---

## How It Was Built (Vibe Coding)

```
1. CTO planned    ->  PRD, architecture, shaped grid system design
2. DEV built      ->  18 tasks in Sprint 01 (all complete)
3. QA verified    ->  8 Playwright E2E tests + screenshots
4. Decisions logged in docs/DECISIONS.md
```

All artifacts live in `docs/sprints/sprint_01/` — the sprint index, task list, and report.
