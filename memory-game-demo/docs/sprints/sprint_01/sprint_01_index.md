# Sprint 01 — Core Engine + Shaped Grids + Arcane Theme

| Field | Value |
|-------|-------|
| **Sprint** | 01 |
| **Goal** | Ship a playable game with 8 shaped levels, full Arcane theme, and scoring |
| **Status** | Complete |
| **Start** | 2026-02-24 |
| **End** | 2026-02-24 |

---

## Scope

### In Scope
1. Self-contained HTML game file (React 18 CDN, no build step)
2. 8 shaped grid levels (1, +, T, A, S, Diamond, H, Star)
3. Card flip animation (CSS 3D, 500ms)
4. Match logic with all interaction guards
5. Timer countdown + move counter
6. Star rating (1-3 stars) + XP calculation
7. Main Menu -> Level Select -> Game Board -> Results state machine
8. Full Arcane UI Kit visual treatment (tokens, fonts, glow)

### Out of Scope (deferred)
- Variable card sizes 2x1, 1x2, 2x2 (designed, not yet in game)
- Canvas bestiary creatures
- Level unlock progression (localStorage)
- Keyboard navigation
- Sound effects / particles

---

## Exit Criteria

- [x] Game loads in browser without build step
- [x] Cards flip with 3D animation
- [x] Match logic works (match stays, mismatch flips back)
- [x] Timer counts down, game ends on timeout
- [x] Stars calculated correctly per formula
- [x] XP breakdown shown on results screen
- [x] All 8 shaped levels render correctly
- [x] Full Arcane theme applied (zero off-palette colors)
- [x] Replay and level selection work
- [x] E2E tests pass

---

## Risks

| Risk | Impact | Mitigation |
|------|--------|------------|
| Single file grows too large | Hard to maintain | Keep <1000 lines, extract if needed |
| Shaped grids break on mobile | Bad UX | Responsive cell sizing with min 48px |
| Timer too strict/lenient | Frustrating gameplay | Tuned per-level based on pair count |

---

## Artifacts

- Tasks: `todo/sprint_01_todo.md`
- Report: `reports/sprint_01_report.md`
