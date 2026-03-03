# Game Module — The Arcane Vault

## Purpose

The core memory matching game. Single HTML file containing all game logic, components, and styling.

## Structure

```
game/
├── README.md           # This file
├── src/
│   └── index.html      # The complete game (React 18 via CDN)
└── tests/
    ├── unit/
    └── integration/
```

## How to Run

```bash
cd src
python -m http.server 8766
# Open http://localhost:8766
```

## Component Tree

```
<ArcaneVault>             # Root — state machine controller
  ├── <MainMenu>          # Title screen, "Enter the Vault" button
  ├── <LevelSelect>       # 8 shaped levels with mini-previews
  ├── <GameBoard>         # Active gameplay
  │   ├── <HUD>           # Timer, pairs, moves
  │   ├── <TimerBar>      # Visual countdown
  │   └── <Card> x N      # 3D flip cards on CSS Grid
  └── <ResultsModal>      # Stars, XP breakdown, replay options
```

## Key Functions

| Function | Purpose |
|----------|---------|
| `makeTemplate()` | Parse pattern strings into level slot arrays |
| `validateTemplate()` | Verify even pairs, no overlap, in bounds |
| `buildCards()` | Assign symbols to slots, shuffle within size groups |
| `calculateStars()` | 1-3 stars based on moves + time |
| `calculateXP()` | Base + time bonus + star bonus |

## Game States

`menu` -> `levelSelect` -> `playing` -> `results`
