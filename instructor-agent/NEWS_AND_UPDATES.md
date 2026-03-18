# AIcademy — News & Updates

> **Read by the AIcademy Oracle at the start of every conversation.**
> Edit this file to push announcements to all students automatically.
>
> **Tags:** `[ACTIVE]` = show to students | `[EXPIRED]` = ignore | `[PINNED]` = mention when relevant
> **Dates:** Add `date: YYYY-MM-DD` — items past their date are auto-treated as expired.

---

## Active Announcements

### [ACTIVE] Workshop 1 Kicked Off — March 17, 2026
**date: 2026-04-30**
The first "From Prompt to A(I) Project" workshop is live! Led by Avi Rabinowitz with Yifat Regular (NEAT R&D Program Manager) coordinating. The workshop is interactive — teams build real projects using Vibe Coding + AI Agents, with a project competition at the end.

**What happened in Session 1:**
- Teams formed (groups of 2-3 recommended to simulate real AI-human collaboration)
- Project ideas pitched by participants — see pinned list below
- GitHub org is live and repos are being created
- Process walkthrough: CTO Agent → Scaffold → Sprint 0 → Build → Review → Ship
- Tools: Claude + Claude Code primary; Gemini, ChatGPT, Windsurf, Cursor, GitHub Copilot all welcome
- Pro/paid subscriptions strongly recommended — free tiers limit model quality and usage

### [ACTIVE] Workshop Project Ideas (Session 1 Pitches)
**date: 2026-04-30**
Projects pitched by participants — teams may join any of these or propose new ones:
- **SchoolHub** (Avi's demo) — Central school portal. Student enters PIN → sees schedule → joins Zoom/Teams. AI auto-detects meeting links, sends WhatsApp reminders 5 min before class, alerts on repeated absences.
- **Medical Records Manager** — Collects and manages personal medical info. Appointment reminders, test result tracking, queue management. AI-powered organization.
- **Social Media Post Manager** — Manages and maintains a business social media profile. Content scheduling, analytics, multi-platform posting.
- **AI Music Creator** — User defines a topic → AI writes lyrics → Suno composes music → AI generates sheet music → Musicians can practice and record. Full creation pipeline.

### [ACTIVE] GitHub Org + Template Ready
**date: 2026-12-31**
The AIcademy GitHub organization and scaffold template are live:
- **Organization:** https://github.com/AIcademy-by-NEAT
- **Scaffold template:** https://github.com/AIcademy-by-NEAT/AIcademy-scaffold — fork this to start your project
- **Demo project:** https://github.com/AIcademy-by-NEAT/memory-game-demo — reference implementation
- Projects should be Public + Open Source in the NEAT org (recommended, not mandatory)
- Students need Git installed: https://git-scm.com/install/

### [ACTIVE] Meet the Oracle — Your AI Knowledge Companion
**date: 2026-12-31**
The AIcademy Oracle can explain any course topic, create PDFs, presentations, cheat sheets, and interactive HTML pages from course material — on demand. Just ask. Try: "Explain the 8-step vibe coding process" or "Create a cheat sheet for prompt engineering."

---

## Pinned Resources

### [PINNED] Course Tool Recommendations
- **LLM Chat:** Claude (claude.ai) — primary. ChatGPT, Gemini, Perplexity as alternatives
- **Coding Agent:** Claude Code CLI — primary for vibe coding. Alternatives: Windsurf, Cursor, GitHub Copilot, Antigravity
- **IDE:** VS Code or Windsurf — for QA agent and manual inspection
- **E2E Testing:** Playwright — configured in the scaffold template
- **Deployment:** Vercel (free tier) — for shipping web projects
- **Subscription:** Pro/paid strongly recommended. Free tiers limit model quality + usage and will frustrate you with weaker results
- **Note on Antigravity:** May not support Israeli phone numbers for signup — use Claude or alternatives if blocked

### [PINNED] The AIcademy Process (8 Steps)
1. Define CTO Agent → Claude Projects
2. Sprint 0 — Template → Project → Claude Code
3. Sprint 0 — Plan (PRD + TODOs) → CTO Agent
4. Sprint 1 — Build (Dev + QA) → Claude Code + IDE
5. Sprint 1 — Review + Demo → CTO Agent + Browser
6. Sprint 2 — Plan + Build + Ship → All tools
7. UI/UX Mock + Deploy → UI Agent + Vercel
8. Final Demo + Takeaways → Browser + Q&A

### [PINNED] Key Frameworks from the Course
- **GBU (Good/Bad/Ugly):** Evaluate any AI output before using it. Check Accuracy, Relevance, Completeness, Bias, Tone, Usability.
- **Creator vs Inspector:** Use one LLM to generate, another (or fresh chat) to review. Never ship a first draft.
- **Agent = Prompt + Scope + Rules:** An agent isn't magic — it's a structured prompt with clear boundaries.

### [PINNED] Workshop Format & Expectations
- **Teams of 2-3** recommended (simulates real AI-human collaboration)
- **Interactive process:** Instructor guidance → your build time → present your progress
- **Project competition** at the final session — each team demos what they shipped
- **Process IS the product:** CTO plans → Dev builds (TDD) → QA tests → CTO reviews → Ship
- **Templates = velocity:** Always start from the AIcademy scaffold, never from scratch
- **Repos in NEAT org (recommended):** Public + open source at https://github.com/AIcademy-by-NEAT

---

## Expired

### [EXPIRED] Welcome to AIcademy (generic — replaced by Workshop 1 announcement)

### [EXPIRED] Example: Early Bird Registration

---

## How to Edit This File

**For instructors/admins:**
1. Open this file in the Claude Project's knowledge base
2. Add new items under "Active Announcements" with `[ACTIVE]` tag and `date:` field
3. Move old items to "Expired" and change tag to `[EXPIRED]`
4. Items tagged `[PINNED]` are shown when contextually relevant (no expiry)
5. Save — all new student conversations see the update immediately
