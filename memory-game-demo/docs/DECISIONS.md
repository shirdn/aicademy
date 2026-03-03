# Decision Log — The Arcane Vault

## Decision: Single-File Architecture

**Date:** 2026-02-24
**Status:** Accepted
**Decided by:** CTO

**Context:**
The game needs to be easily shareable and runnable without any setup.

**Options Considered:**
1. Multi-file React project with build tools (webpack/vite)
2. Single HTML file with React via CDN
3. Vanilla JS without React

**Decision:** Single HTML file with React 18 via CDN.

**Rationale:** No build step means anyone can open the file and play. React via CDN gives us component architecture without npm install. Perfect for a demo artifact.

**Consequences:** All code lives in one file (~900 lines). Inline styles instead of CSS modules. No code splitting.

---

## Decision: CSS Grid for Shaped Layouts

**Date:** 2026-02-24
**Status:** Accepted
**Decided by:** CTO

**Context:**
Cards need to be arranged in recognizable shapes (letters, numbers, symbols) with empty cells as negative space.

**Options Considered:**
1. Absolute positioning with calculated coordinates
2. CSS Grid with `grid-column`/`grid-row` placement
3. Flexbox with spacer elements

**Decision:** CSS Grid with explicit cell placement.

**Rationale:** CSS Grid natively supports sparse layouts. Each card gets `grid-column: col + 1` and `grid-row: row + 1`. Empty cells are simply not rendered. Multi-cell cards use `span 2`.

---

## Decision: Arcane Theme (No Gray)

**Date:** 2026-02-24
**Status:** Accepted
**Decided by:** CTO + CPO

**Context:**
The game needs a strong visual identity for the webinar demo.

**Decision:** Deep violet abyss theme. Every neutral is violet-tinted. Gold reserved for XP/rewards only.

**Rationale:** "No gray" forces intentional color choices. Violet-tinted neutrals create atmospheric depth. Gold as earned-only makes rewards feel special.

---

## Decision: Pattern String Encoding for Levels

**Date:** 2026-02-24
**Status:** Accepted
**Decided by:** CTO

**Context:**
Level templates need to be easy to author and read.

**Decision:** String patterns where `#` = card slot, `.` = empty, `/` = row separator.

**Rationale:** Human-readable at a glance. Easy to visualize the shape in code. Parsed by `makeTemplate()` into slot arrays at initialization.
