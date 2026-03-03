# The Arcane Vault — Claude Code Project Context

> **Stack:** React 18 (CDN) + HTML5 + CSS3 — no build step
> **Purpose:** D&D-themed memory card game with shaped grids and arcane visual identity
>
> This file is auto-loaded by Claude Code CLI when you open this project directory.
> It is the single source of truth for Claude's project awareness.

---

## 1. Project Identity

| Field | Value |
|---|---|
| **Name** | The Arcane Vault — Memory Match |
| **Purpose** | Memory card game with shaped grid levels and D&D theme |
| **Current sprint** | Sprint 02 (Complete) |
| **Dev port** | 8766 |

---

## 2. Key Commands

```bash
# Development
cd frontend/modules/game/src && python -m http.server 8766   # Dev server -> http://localhost:8766
# No build step needed — single HTML file with React via CDN

# E2E Testing (Playwright)
npx playwright test                # Run all E2E tests
npx playwright test --ui           # Interactive UI mode
npx playwright test --debug        # Debug mode
```

> E2E tests auto-start the dev server if `webServer` is configured in `playwright.config.ts`.

---

## 3. Definition of Done

```
A FEATURE IS "DONE" ONLY WHEN:
  1. Code works — game loads in browser without errors
  2. Tests pass — Playwright E2E covers the flow
  3. E2E pass — all game states verified (menu -> play -> results)
  4. No regressions — existing features still work
  5. Arcane theme — zero off-palette colors (every hex traces to UI Kit)
  6. Screenshots — captured for GUI changes (tests/screenshots/)
```

**NEVER mark done based on "it compiles" alone.**

---

## 4. Project Structure

```
memory-game-demo/
├── CLAUDE.md                # This file
├── AGENTS.md                # Role definitions (CTO, DEV, QA)
├── README.md                # Project README
├── .env.example             # Environment variables
├── playwright.config.ts     # Playwright E2E config
│
├── .claude/
│   ├── settings.local.json
│   └── commands/            # /project:cto, /project:dev, etc.
│
├── frontend/
│   ├── AGENTS.md            # Frontend domain rules
│   └── modules/
│       └── game/            # The game module
│           ├── README.md
│           ├── src/
│           │   └── index.html   # THE GAME (single-file React)
│           └── tests/
│
├── backend/                 # Not used (client-side only)
│
├── tests/
│   ├── e2e/                 # Playwright E2E tests
│   └── screenshots/         # GUI screenshots
│
└── docs/
    ├── PRD.md               # Product requirements
    ├── ARCHITECTURE.md      # Technical architecture
    ├── DECISIONS.md         # Decision log
    ├── knowledge/           # Shaped Grid spec, Arcane UI Kit spec
    ├── ui/UI_KIT.md         # Arcane design system
    └── sprints/sprint_01/   # Sprint artifacts
```

---

## 5. Environment Variables

Copy `.env.example` -> `.env`. This game has no API keys (client-side only).

---

## 6. Available Commands

| Command | Purpose |
|---|---|
| `/project:cto` | Activate CTO role — architecture & planning |
| `/project:dev` | Activate DEV role — implementation |
| `/project:qa` | Activate QA role — testing & quality |
| `/project:plan` | Force plan mode before complex work |
| `/project:test` | Run full test suite |
| `/project:e2e` | Run Playwright E2E browser tests |

---

## 7. Role Tags

| Tag | Who |
|---|---|
| `[CTO]` | Architecture, tech decisions, code review |
| `[DEV]` | Implementation, features, bug fixes |
| `[DEV:frontend]` | Frontend / game module implementation |
| `[QA]` | Testing, quality gates, bug discovery |
| `[FOUNDER]` | Human operator — final decision maker |

---

## 8. Testing Strategy

| Level | Location | Tool | When |
|-------|----------|------|------|
| **E2E** | `tests/e2e/` | Playwright | Every UI change |
| **Screenshots** | `tests/screenshots/` | Playwright | Every UI change |

---

## 9. Architecture Non-Negotiables

- **Single-file JSX** — no build tools, no bundler
- **React 18 via CDN** — no npm install for the game itself
- **Arcane theme only** — every hex traces to UI Kit token
- **Client-side only** — no server, no API, no database
- **CSS Grid for layouts** — native spans for shaped grids
- **Gold is earned** — gold tokens ONLY for XP, rewards, legendary content
- **No gray colors** — every neutral must be violet-tinted

---

## 10. What NOT to Do

- Do NOT add build tools (webpack, vite, etc.) — the game is a single HTML file
- Do NOT use gray colors — all neutrals are violet-tinted
- Do NOT use gold decoratively — gold is reserved for XP/rewards
- Do NOT break the shaped grid system — shapes ARE the levels
- Do NOT silently expand scope beyond the current task
- Do NOT mark features done without E2E verification
