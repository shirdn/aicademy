# Product Requirements Document — The Arcane Vault

## 1. Overview

**Project Name:** The Arcane Vault — Memory Match

**One-line description:** D&D-themed memory card game where cards are arranged in recognizable shapes with variable sizes and an arcane visual identity.

**Problem:** Traditional memory games use boring rectangular grids. We want spatial puzzles where the shape IS the level.

**Target Users:** Casual gamers, D&D fans, webinar demo audience.

---

## 2. Core Features

| # | Feature | Description | Priority |
|---|---------|-------------|----------|
| 1 | Shaped grid levels | Cards arranged in letter/number/symbol shapes (8 levels) | Must Have |
| 2 | Card flip + match logic | 3D flip animation, same-symbol matching, interaction guards | Must Have |
| 3 | Timer + scoring | Countdown timer, move counter, 1-3 star rating, XP system | Must Have |
| 4 | Level select | Grid of 8 levels with shape mini-previews and difficulty badges | Must Have |
| 5 | Arcane UI Kit | Deep violet theme, gold XP, MedievalSharp fonts, glow effects | Must Have |

---

## 3. User Stories

### Story 1: Select a Level
> As a player, I want to select a level by its shape, so I know what I'm getting into before I start.

**Acceptance Criteria:**
- [x] All 8 levels visible in a grid
- [x] Each level shows shape mini-preview, name, pair count, time limit, difficulty badge
- [x] Clicking a level starts the game

### Story 2: Match Creatures
> As a player, I want to match creature pairs on a shaped board, so the puzzle feels spatial and memorable.

**Acceptance Criteria:**
- [x] Cards flip with 3D animation (500ms)
- [x] Same symbol = match (cards stay face-up with glow)
- [x] Different symbol = mismatch (shake, flip back after 800ms)
- [x] Interaction guards prevent rapid-click exploits

### Story 3: Earn Stars
> As a player, I want to earn 1-3 stars based on my performance, so I have a reason to replay.

**Acceptance Criteria:**
- [x] 1 star = complete within time limit
- [x] 2 stars = complete with ≤ 2x minimum moves
- [x] 3 stars = complete with ≤ 1.5x minimum moves AND ≥ 50% time remaining

---

## 4. Out of Scope

- Multiplayer
- Backend / leaderboard
- Multiple themes (Arcane only)
- AI opponent
- Sound effects (future sprint)
- Level unlock progression (future sprint)

---

## 5. Success Criteria

- [x] Game loads and plays in any modern browser — no install needed
- [x] All 8 shaped levels render correctly
- [x] Star rating and XP calculation work correctly
- [x] Zero off-palette colors (Arcane UI Kit compliance)
- [x] E2E tests pass

---

## 6. Technical Constraints

- **Must use:** React 18 via CDN (no build step)
- **Must not use:** Any build tools, bundlers, or server-side code
- **Must run on:** Any modern browser, static file server
