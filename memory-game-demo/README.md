# The Arcane Vault — Memory Match

> D&D-themed memory card game with shaped grid levels, built with AI vibe coding.

## Play It

```bash
cd frontend/modules/game/src
python -m http.server 8766
# Open http://localhost:8766
```

No build step. No npm install. Just open and play.

## What Is This?

A memory matching game where cards are arranged in **recognizable shapes** — letters, numbers, and symbols. The shape IS the puzzle.

**8 levels:** The Pillar (1), The Cross (+), The Tablet (T), The Arch (A), The Serpent (S), The Diamond, The Gate (H), The Star

**Features:**
- 3D card flip animation (CSS transforms)
- 16 D&D creature symbols
- Star rating (1-3 stars based on performance)
- XP scoring system
- Fully themed with the Arcane UI Kit (deep violet + runic gold)

## Project Structure

This project follows the [AIcademy scaffold](../AIcademy-scaffold/README.md) structure:

```
memory-game-demo/
├── frontend/modules/game/src/index.html   # The game
├── tests/e2e/                              # Playwright tests
├── docs/PRD.md                             # What we're building
├── docs/ARCHITECTURE.md                    # How it's built
├── docs/ui/UI_KIT.md                       # Arcane design system
└── docs/sprints/sprint_01/                 # Sprint artifacts
```

## How It Was Built

This game was built using the **vibe coding** workflow:

1. **CTO planned** the architecture and game mechanics
2. **DEV built** the game in sprint cycles
3. **QA verified** each feature with Playwright E2E tests
4. **All decisions** documented in `docs/DECISIONS.md`

## Tech Stack

| Layer | Choice |
|-------|--------|
| Runtime | React 18 (CDN, no build) |
| Layout | CSS Grid (shaped levels) |
| Styling | Inline styles (token-driven) |
| Fonts | Google Fonts (MedievalSharp, Crimson Text, Fira Code) |
| Testing | Playwright |
