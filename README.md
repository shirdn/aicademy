# AIcademy — AI Vibe Coding Hackathon Template

> Build software with AI as your coding partner.
> This template gives your team a structured starting point for the hackathon.

---

## What is Vibe Coding?

**Vibe Coding** is a development approach where AI does most of the coding, while humans make the decisions.

Instead of writing every line yourself, you:
1. **Describe** what you want to build
2. **Guide** the AI with clear roles and instructions
3. **Review** what it produces
4. **Iterate** until it's right

The key insight: **structure beats talent**. A well-organized prompt system with clear roles produces better code than unstructured back-and-forth with AI.

---

## Quick Start (5 minutes)

### Prerequisites
- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed
- An Anthropic API key (`ANTHROPIC_API_KEY`)
- Git

### Setup

```bash
# 1. Clone this template
git clone https://github.com/shirdn/aicademy.git my-project
cd my-project

# 2. Set up your environment
cp .env.example .env
# Edit .env and add your ANTHROPIC_API_KEY

# 3. Fill in your project details
# Open CLAUDE.md and replace all {{PLACEHOLDERS}} with your project info

# 4. Launch Claude Code
claude

# 5. Activate CTO mode to plan your architecture
/project:cto
```

---

## How This Template Works

### The 3 Files That Matter

| File | What It Does |
|---|---|
| **`CLAUDE.md`** | Tells Claude about YOUR project — stack, commands, structure. Auto-loaded on every conversation. |
| **`AGENTS.md`** | Defines 3 roles Claude can adopt: CTO, DEV, QA. Each has clear responsibilities. |
| **`docs/PRD.md`** | Your product requirements. What are you building and why? |

### The 3 Roles

| Role | Slash Command | When to Use |
|---|---|---|
| **CTO** | `/project:cto` | Planning architecture, making tech decisions, code review |
| **DEV** | `/project:dev` | Writing code, implementing features, fixing bugs |
| **QA** | `/project:qa` | Testing, finding bugs, verifying quality |

### The Workflow

```
1. PLAN    →  /project:cto   →  Design the system, break into tasks
2. BUILD   →  /project:dev   →  Implement features one by one
3. VERIFY  →  /project:qa    →  Test, find bugs, verify quality
4. REPEAT  →  Back to step 1 for the next feature
```

---

## Project Structure

```
my-project/
├── CLAUDE.md              # Project context (EDIT THIS FIRST)
├── AGENTS.md              # Role definitions (CTO, DEV, QA)
├── README.md              # This file
├── .env.example           # Environment variables template
│
├── .claude/
│   ├── settings.local.json    # Tool permissions for Claude
│   └── commands/
│       ├── cto.md             # /project:cto — CTO role prompt
│       ├── dev.md             # /project:dev — DEV role prompt
│       ├── qa.md              # /project:qa — QA role prompt
│       ├── plan.md            # /project:plan — Force planning mode
│       └── test.md            # /project:test — Run tests
│
├── docs/
│   ├── PRD.md                 # Product requirements (FILL THIS IN)
│   ├── ARCHITECTURE.md        # Technical architecture
│   └── DECISIONS.md           # Decision log
│
└── src/                       # Your source code goes here
    └── .gitkeep
```

---

## Step-by-Step Guide

### Step 1: Define Your Project (10 min)

Open `CLAUDE.md` and replace all `{{PLACEHOLDERS}}`:
- `{{PROJECT_NAME}}` → Your project name
- `{{PROJECT_DESCRIPTION}}` → One-line description
- `{{TECH_STACK}}` → e.g., "Next.js + TypeScript + Tailwind"
- `{{DEV_COMMAND}}` → e.g., `npm run dev`
- `{{DEV_PORT}}` → e.g., `3000`

### Step 2: Write Your PRD (15 min)

Open `docs/PRD.md` and fill in:
- What are you building?
- Who is it for?
- What are the core features? (keep it to 3-5)
- What does "done" look like?

### Step 3: Plan with CTO (15 min)

```bash
claude
/project:cto
```

Tell Claude:
> "Read the PRD and design the architecture. Break it into tasks for Sprint 1."

Claude will:
- Propose a technical architecture
- Create a task list
- Identify risks and decisions needed

Review the plan. Ask questions. Approve or adjust.

### Step 4: Build with DEV (the main work)

```bash
/project:dev
```

Work through the task list one feature at a time:
> "Implement task 1: [description from the plan]"

Claude will write the code. You review it, test it, iterate.

### Step 5: Verify with QA

```bash
/project:qa
```

Tell Claude:
> "Test the features we just built. Check for bugs and edge cases."

Claude will:
- Run existing tests
- Write new test scenarios
- Report any bugs found

---

## Tips for the Hackathon

### Do
- **Fill in CLAUDE.md first** — it's the foundation of everything
- **Write a clear PRD** — the better your requirements, the better the code
- **Use roles** — CTO for planning, DEV for coding, QA for testing
- **Review code** — don't blindly accept everything Claude writes
- **Commit often** — small, frequent commits are better than one big one
- **Document decisions** — use `docs/DECISIONS.md` for "why did we do X?"

### Don't
- Don't skip the PRD — "just start coding" leads to chaos
- Don't try to build everything at once — pick 1-2 core features
- Don't ignore errors — fix them before moving on
- Don't forget to test — "it works on my machine" isn't enough

### Team Workflow

If you're working as a team:
1. **One person** sets up the repo and fills in `CLAUDE.md` + `docs/PRD.md`
2. **Divide features** — each person works on a separate feature branch
3. **Use the roles** — one person can focus on CTO/planning while others DEV
4. **Merge often** — don't let branches diverge too far
5. **QA together** — test each other's features before merging

---

## Available Slash Commands

| Command | What It Does |
|---|---|
| `/project:cto` | Switch Claude to CTO mode (architecture, planning, review) |
| `/project:dev` | Switch Claude to DEV mode (implementation, coding) |
| `/project:qa` | Switch Claude to QA mode (testing, bug finding) |
| `/project:plan` | Force Claude to plan before coding (prevents rushing) |
| `/project:test` | Run the project's test suite |

---

## Claude API Integration

This template includes Claude API scaffolding. To use Claude in your app:

```bash
# Install the SDK (choose your stack)
npm install @anthropic-ai/sdk    # Node.js
pip install anthropic             # Python
```

```python
# Python example
import anthropic

client = anthropic.Anthropic()  # uses ANTHROPIC_API_KEY from .env

message = client.messages.create(
    model="claude-sonnet-4-20250514",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Hello, Claude!"}]
)
print(message.content[0].text)
```

```javascript
// Node.js example
import Anthropic from "@anthropic-ai/sdk";

const client = new Anthropic(); // uses ANTHROPIC_API_KEY from .env

const message = await client.messages.create({
  model: "claude-sonnet-4-20250514",
  max_tokens: 1024,
  messages: [{ role: "user", content: "Hello, Claude!" }],
});
console.log(message.content[0].text);
```

---

## Resources

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Anthropic API Reference](https://docs.anthropic.com/en/api)
- [Claude Code Slash Commands](https://docs.anthropic.com/en/docs/claude-code/slash-commands)

---

## License

MIT — use this template freely for your hackathon projects.
