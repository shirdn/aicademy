# {{PROJECT_NAME}} — Claude Code Project Context

> **Stack:** {{TECH_STACK}}
> **Purpose:** {{PROJECT_DESCRIPTION}}
>
> This file is auto-loaded by Claude Code CLI when you open this project directory.
> It is the single source of truth for Claude's project awareness.

---

## 1. Project Identity

| Field | Value |
|---|---|
| **Name** | {{PROJECT_NAME}} |
| **Purpose** | {{PROJECT_DESCRIPTION}} |
| **Current sprint** | Sprint 01 |
| **Dev port** | {{DEV_PORT}} |

---

## 2. Key Commands

```bash
# Replace these with your actual commands
{{DEV_COMMAND}}                    # Start dev server
{{BUILD_COMMAND}}                  # Production build
{{TEST_COMMAND}}                   # Run tests
{{LINT_COMMAND}}                   # Lint / type check
```

---

## 3. Definition of Done

```
A FEATURE IS "DONE" ONLY WHEN:
  1. Code works — dev server runs without errors
  2. Tests pass — unit tests cover the new logic
  3. No regressions — existing features still work
  4. Reviewed — teammate or CTO has seen the code
```

**NEVER mark done based on "it compiles" alone.**

---

## 4. Project Structure

```
{{PROJECT_NAME}}/
├── CLAUDE.md          # This file — project context for Claude
├── AGENTS.md          # Role definitions (CTO, DEV, QA)
├── README.md          # Project README
├── .env.example       # Environment variables template
├── .claude/
│   ├── settings.local.json
│   └── commands/      # Slash commands (/project:cto, /project:dev, etc.)
├── docs/
│   ├── PRD.md         # Product requirements
│   ├── ARCHITECTURE.md # Technical architecture
│   └── DECISIONS.md   # Decision log
└── src/               # Your source code goes here
```

---

## 5. Environment Variables

Copy `.env.example` → `.env`. Required:

```
ANTHROPIC_API_KEY=sk-ant-...      # Claude API key
```

---

## 6. Available Commands

| Command | Purpose |
|---|---|
| `/project:cto` | Activate CTO role — architecture & planning |
| `/project:dev` | Activate DEV role — implementation |
| `/project:qa` | Activate QA role — testing & quality |
| `/project:plan` | Force plan mode before complex work |
| `/project:test` | Run full test suite |

---

## 7. Role Tags

| Tag | Who |
|---|---|
| `[CTO]` | Architecture, tech decisions, code review |
| `[DEV]` | Implementation, features, bug fixes |
| `[QA]` | Testing, quality gates, bug discovery |
| `[FOUNDER]` | Human operator — final decision maker |

---

## 8. What NOT to Do

- Do NOT silently expand scope beyond the current task
- Do NOT add dependencies without discussing with the team
- Do NOT mark features done without actually testing them
- Do NOT skip writing tests for new logic
- Do NOT hardcode secrets or credentials
