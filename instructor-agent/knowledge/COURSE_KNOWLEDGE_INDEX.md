# AIcademy — Course Knowledge Index

> **Source-of-truth for the AIcademy Oracle.** When students ask about a topic, consult this file first.
> Do NOT rely on memorized course content — always cross-reference here.

---

## Course Materials (Uploaded as Project Knowledge)

### 1. AI for Product Managers (Full Day Workshop)
- **File:** `AI_for_Product_Managers.pdf`
- **Audience:** Product managers learning to integrate AI into their workflow
- **Topics:** AI/ML/LLM/GenAI concepts, AI ecosystem & PM toolkit, prompt engineering fundamentals (zero-shot, few-shot, chain-of-thought), advanced prompting (role-playing, step-by-step, formatting), multi-LLM strategies (Creator vs Inspector), GBU evaluation framework, building simple agents, AI for market research & ideation, RAG concept, AI-assisted PRD creation (personas, user stories, requirements), hands-on labs

### 2. Vibe Coding 101 — How to Vibe Code Your Products (Webinar)
- **File:** `Webinar2_Vibe_Coding_101_1.pdf`
- **Audience:** Developers, PMs, and technical founders learning AI-assisted development
- **Topics:** What is vibe coding (AI writes code, you decide), the 8-step process (Idea → Shipped Project), CTO Agent pattern (prompt + scope + rules + quality gates), Sprint 0 template methodology, Sprint 1 Dev+QA parallel work, GBU review loop, Sprint 2 polish + ship, UI/UX as code, deployment via Vercel

### 3. From Prompt to A(I) Project Workshop
- **File:** `From_Prompt_to_A_I__Project_Workshop.pdf`
- **Audience:** Hands-on workshop participants building a project live
- **Topics:** Same 8-step methodology applied in real-time, Memory Match game as live-build example, agent team coordination

### 4. AIcademy Scaffold Template
- **Source:** https://github.com/AIcademy-by-NEAT
- **Contents:** CLAUDE.md (project context), AGENTS.md (CTO/DEV/QA roles, tiered), docs/PRD.md template, architecture + decisions templates, backend/frontend module structure, Playwright E2E setup, sprint folder structure

---

## Topic Cross-Reference (Student Question → Source)

| Student Asks About... | Source | Location |
|----------------------|--------|----------|
| "What is AI / ML / LLM?" | AI for PMs | Slides 4-5 |
| "What tools should I use?" | AI for PMs | Slide 6 |
| "How do I write good prompts?" | AI for PMs | Slides 11-17 |
| "What is zero-shot / few-shot?" | AI for PMs | Slides 14-15 |
| "What is chain-of-thought?" | AI for PMs | Slide 16 |
| "Show me good vs bad prompts" | AI for PMs | Slide 17 |
| "What is GBU?" | AI for PMs | Slide 22 |
| "How do I build an agent?" | AI for PMs | Slides 23-25 |
| "What is RAG?" | AI for PMs | Slide 32 |
| "How do I write a PRD with AI?" | AI for PMs | Slides 30-41 |
| "How do I create personas with AI?" | AI for PMs | Slides 38-39 |
| "How do I write user stories with AI?" | AI for PMs | Slides 40-41 |
| "What is vibe coding?" | Vibe Coding 101 | Slides 1, 4 |
| "What's the 8-step process?" | Vibe Coding 101 | Slide 5 |
| "How do I create a CTO agent?" | Vibe Coding 101 | Slide 6 |
| "How does the scaffold work?" | Vibe Coding 101 | Slide 7 |
| "How do Dev and QA work together?" | Vibe Coding 101 | Slide 9 |
| "How does AI code review work?" | Vibe Coding 101 | Slide 10 |
| "How do I deploy my project?" | Vibe Coding 101 | Slide 12 |
| "What is CLAUDE.md / AGENTS.md?" | Scaffold Template | GitHub repo |
| "How do I start a new project?" | Scaffold Template | README.md |
| "What is Creator vs Inspector?" | AI for PMs | Slide 21 |
| "How do I use AI for brainstorming?" | AI for PMs | Slide 29 |

---

## Quick Answer Bank (Common Student Questions)

When a student asks one of these, give the quick answer FIRST, then offer to go deeper.

**"What is vibe coding in one sentence?"**
→ Vibe coding is AI-assisted development where AI writes the code and you make the decisions about architecture, features, and quality.

**"What is the GBU framework?"**
→ Good/Bad/Ugly — a 3-part evaluation you run on every AI output before using it. Good = what works, Bad = what's missing or weak, Ugly = what's broken or dangerous. Never ship without running GBU.

**"What's the difference between zero-shot and few-shot?"**
→ Zero-shot = ask the AI to do something with no examples. Few-shot = give 1-5 examples first so the AI understands the pattern you want. Few-shot usually produces better, more consistent results.

**"What is an AI agent?"**
→ An agent is a prompt with scope and rules. It's not magic — it's a structured instruction that tells the AI who it is, what it can do, and how to behave. Same template works for every project.

**"How do I start my project?"**
→ Fork the AIcademy scaffold from GitHub, fill in CLAUDE.md with your project details, write your PRD, then activate the CTO agent to plan Sprint 1. The 8-step process guides you from there.

**"What is RAG?"**
→ RAG = Retrieval-Augmented Generation. Instead of relying on the AI's general knowledge, you give it specific documents to read first, then it answers based on those documents. Like handing an expert the textbook chapter before asking your question.
