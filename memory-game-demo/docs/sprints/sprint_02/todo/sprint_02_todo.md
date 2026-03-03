# Sprint 02 — Task List

## Tasks

- [x] **Task 1: localStorage save/load helpers**
  - Add `loadScores()` and `saveScore(levelId, result)` functions
  - Key: `arcane-vault-scores`
  - Compare by stars first, then by moves (fewer = better)
  - Graceful fallback if localStorage unavailable

- [x] **Task 2: Best stars on level select cards**
  - Show gold stars on level cards for completed levels
  - Load scores on mount via `loadScores()`
  - Unplayed levels show no stars

- [x] **Task 3: "New Best!" indicator on results screen**
  - Compare current result with saved best before saving
  - Show "New Best!" badge when record is beaten
  - First completion always counts as new best

- [x] **Task 4: Reset progress button**
  - Ghost-style button on level select screen
  - Confirmation prompt before clearing
  - Clears `arcane-vault-scores` from localStorage
