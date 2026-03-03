# Sprint 02 — "Remember Your Best"

> **Goal:** Add localStorage persistence so players can track progress across sessions.

---

## Sprint Goal

Players should see their best performance on each level and know when they've beaten their record. Progress persists across browser sessions.

---

## Scope

### In Scope
- [x] Save best scores (stars, moves, time) to localStorage
- [x] Show earned stars on level select cards
- [x] "New Best!" badge on results screen when record is beaten
- [x] Reset progress button with confirmation

### Out of Scope
- Level unlock gating (all levels stay open)
- Leaderboard / backend persistence
- Sound effects
- Keyboard navigation

---

## Tasks

| # | Task | Status |
|---|------|--------|
| 1 | localStorage save/load helpers | Done |
| 2 | Best stars on level select cards | Done |
| 3 | "New Best!" indicator on results | Done |
| 4 | Reset progress button | Done |

---

## Exit Criteria

- [x] Play a level → close browser → reopen → stars persist on level select
- [x] Beat a previous score → "New Best!" appears
- [x] Reset progress → all stars cleared
- [x] All existing E2E tests still pass
- [x] No console errors

---

## Risks

| Risk | Mitigation |
|------|-----------|
| localStorage disabled in some browsers | Graceful fallback — game works without persistence |
| Data corruption | JSON parse wrapped in try/catch |
