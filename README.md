# AIcademy — AI Vibe Coding Course

> Learn to build software with AI as your coding partner.

---

## Repository Contents

| Folder | Description |
|--------|-------------|
| **`AIcademy-scaffold/`** | Project template -- copy this to start a new project |
| **`memory-game-demo/`** | Demo project -- The Arcane Vault memory game, built with the scaffold |

---

## Getting Started

### Start a New Project
1. Copy the scaffold:
   ```bash
   cp -r AIcademy-scaffold my-project
   cd my-project
   git init
   ```
2. Follow the setup instructions in `AIcademy-scaffold/README.md`

### See the Demo
1. Open the demo project:
   ```bash
   cd memory-game-demo/frontend/modules/game/src
   python -m http.server 8766
   ```
2. Open http://localhost:8766 in your browser
3. Explore the project structure to see a filled-in scaffold in action

---

## What is Vibe Coding?

**Vibe Coding** is AI-assisted development where:
- **AI writes the code** (Claude Code CLI)
- **You make the decisions** (architecture, features, quality)
- **Structure beats talent** -- roles + docs + gates = reliable output

The scaffold provides 3 AI roles:
- **CTO** -- plans architecture, reviews code
- **DEV** -- implements features, writes tests
- **QA** -- finds bugs, verifies quality

### The Workflow

```
1. PLAN   ->  /project:cto  ->  Design architecture, break into tasks
2. BUILD  ->  /project:dev  ->  Implement features one by one
3. VERIFY ->  /project:qa   ->  Test, find bugs, verify quality
4. REPEAT ->  Next feature
```

---

## License

MIT
