# Sprint 01 — Task List

## Tasks

| # | Task | Owner | Status | Acceptance Criteria |
|---|------|-------|--------|---------------------|
| 1 | Set up single-file HTML with React 18 CDN | DEV | [x] | Page loads, React renders, no build step |
| 2 | Implement Design Tokens (T object) | DEV | [x] | All Arcane colors, fonts, spacing, shadows defined |
| 3 | Create 16 D&D creature symbol pool | DEV | [x] | 16 emoji creatures with id, emoji, name |
| 4 | Build template system (makeTemplate, validateTemplate) | DEV | [x] | Pattern strings parsed into slot arrays, validation catches errors |
| 5 | Create 8 shaped level templates | DEV | [x] | All 8 levels render correct shapes, all pass validation |
| 6 | Build Card component with 3D flip | DEV | [x] | 500ms flip, backface hidden, no z-fighting |
| 7 | Implement match logic + interaction guards | DEV | [x] | Match stays, mismatch flips back, max 2 flipped, dealing lock |
| 8 | Build HUD (timer, pairs, moves) | DEV | [x] | Timer counts down, stats update live, color transitions |
| 9 | Build TimerBar component | DEV | [x] | Visual bar, color: arcane > warning > danger |
| 10 | Implement star rating calculation | DEV | [x] | 1-3 stars per formula, displayed on results |
| 11 | Implement XP calculation + breakdown | DEV | [x] | Base + time bonus + star bonus, itemized display |
| 12 | Build MainMenu screen | DEV | [x] | Title, card fan animation, "Enter the Vault" button |
| 13 | Build LevelSelect screen | DEV | [x] | 8 levels, shape mini-previews, difficulty badges, hover effects |
| 14 | Build ResultsModal screen | DEV | [x] | Stars, stats, XP breakdown, replay/menu/levels buttons |
| 15 | Build state machine (menu/levelSelect/playing/results) | DEV | [x] | Clean transitions, back navigation, replay works |
| 16 | Apply full Arcane theme | DEV | [x] | Zero off-palette colors, violet-tinted neutrals, gold earned-only |
| 17 | Write Playwright E2E tests | QA | [x] | Game load, navigation, card flip, match/mismatch, results |
| 18 | Capture screenshots | QA | [x] | Main menu, game board, card flipped, match, results, timeout |

## Notes

- All 18 tasks completed in a single sprint
- Game is ~925 lines in a single HTML file
- All 8 levels pass `validateTemplate()` at initialization
