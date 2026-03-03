# Sprint 01 — Report

| Field | Value |
|-------|-------|
| **Sprint** | 01 |
| **Status** | Complete |
| **Tasks completed** | 18 / 18 |

---

## What Was Delivered

- **The Arcane Vault** — a fully playable D&D-themed memory card game
- 8 shaped grid levels with increasing difficulty (Easy -> Legendary)
- 3D card flip animation with match/mismatch feedback
- Star rating system (1-3 stars based on speed + accuracy)
- XP scoring with itemized breakdown
- Complete Arcane UI Kit implementation (zero off-palette colors)
- Full state machine: Menu -> Level Select -> Game -> Results
- Playwright E2E test coverage

## Key Metrics

| Metric | Value |
|--------|-------|
| Total lines of code | ~925 |
| Files created | 1 (index.html) |
| Levels shipped | 8 |
| Creature symbols | 16 |
| Components built | 10 (ArcaneButton, Card, HUD, TimerBar, StarRating, etc.) |
| Off-palette colors | 0 |
| Build tools required | 0 |

## Bugs Found (and Fixed)

- Card z-fighting on rapid clicks — fixed with interaction guards
- Timer counting past zero — fixed with `Math.max(0, ...)` clamp
- Mismatch animation preserving 3D rotation — fixed with `rotateY(180deg)` in shake keyframes

## Key Decisions Made

1. Single-file architecture (no build step)
2. CSS Grid for shaped layouts
3. Pattern string encoding for level templates
4. Arcane theme with no-gray policy

## Lessons Learned

- Single-file React via CDN works surprisingly well for games
- Design tokens as a JS object (`T`) makes theme enforcement trivial
- Pattern strings (`#..#/####`) are the most readable way to author shaped levels
- Interaction guards are essential — without them, rapid clicks break the game state
