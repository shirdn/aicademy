# AIcademy by NEAT — Unified Knowledge Base

> **Version:** 2.0 · **Last Updated:** 2026-03-18
> **Purpose:** Single source of truth for the AIcademy Oracle agent. Contains all course material, frameworks, templates, worked examples, and reference material synthesized into one searchable document.
> **Created by:** Avi Rabinowitz · SynaptixLabs / NEAT Applied Tech

---

## Table of Contents

| § | Section | Description | Level |
|---|---------|-------------|-------|
| 1 | [Course Overview](#1-course-overview) | What AIcademy covers, who it's for | All |
| 2 | [The AI Landscape](#2-the-ai-landscape) | AI/ML/LLM/GenAI fundamentals | Beginner |
| 3 | [Prompt Engineering](#3-prompt-engineering) | Core to advanced techniques | Beginner → Advanced |
| 4 | [The GBU Evaluation Framework](#4-the-gbu-evaluation-framework) | How to evaluate AI output | Intermediate |
| 5 | [AI Agents](#5-ai-agents) | What agents are, how to build them | Intermediate → Advanced |
| 6 | [Vibe Coding Methodology](#6-vibe-coding-methodology) | The 8-step process, tools, workflow | Advanced |
| 7 | [The AIcademy Scaffold Template](#7-the-aicademy-scaffold-template) | Project structure, files, roles | Advanced |
| 8 | [AI for Product Managers](#8-ai-for-product-managers) | Research, ideation, PRDs, personas | Intermediate |
| 9 | [RAG & Knowledge Grounding](#9-rag--knowledge-grounding) | When and how to ground AI in your data | Intermediate → Advanced |
| 10 | [Case Study: The Arcane Vault](#10-case-study-the-arcane-vault) | Complete worked example illustrating methodology | Advanced |
| 11 | [Tool Recommendations & Setup](#11-tool-recommendations--setup) | Ecosystem, selection guide, and setup | All |
| 12 | [Common Mistakes & Anti-Patterns](#12-common-mistakes--anti-patterns) | What NOT to do | All |
| 13 | [Hands-On Labs Reference](#13-hands-on-labs-reference) | Lab descriptions and exercises | All |
| 14 | [Oracle Capabilities Guide](#14-oracle-capabilities-guide) | What students can ask the Oracle to do | All |
| 15 | [Learning Path & Progression](#15-learning-path--progression) | Recommended study order | All |
| 16 | [Quick Answer Bank](#16-quick-answer-bank) | Common student questions, pre-written answers | All |
| 17 | [Topic Cross-Reference](#17-topic-cross-reference) | Student question → source mapping | All |
| 18 | [Templates & Prompts Library](#18-templates--prompts-library) | Ready-to-use prompt templates | All |

---

## 1. Course Overview

### 1.1 About AIcademy by NEAT

AIcademy is a practical, hands-on course series created by **Avi Rabinowitz** (Product Manager & CTO, 20+ years building products in IoT, SaaS, Healthcare, and Agentic AI) through **NEAT Applied Tech** and **SynaptixLabs**.

NEAT Applied Tech is an experienced R&D engineering house providing complete, practical, tailor-made solutions for medical device companies. SynaptixLabs is focused on building AI agent architectures.

The course teaches professionals how to integrate AI into their daily work — whether they're product managers, developers, founders, or technical leads.

### 1.2 Course Sessions

| Session | Title | Audience | Focus |
|---------|-------|----------|-------|
| **Session 1** | AI for Product Managers | PMs, business professionals | AI fundamentals, prompt engineering, GBU framework, PRD creation with AI |
| **Session 2** | Vibe Coding 101 | Developers, PMs, technical founders | AI-assisted development, agent teams, scaffold methodology, shipping products |
| **Session 3** | From Prompt to AI Project | Workshop participants | Live-build applying the full methodology end-to-end |

### 1.3 Learning Goals

By the end of the AIcademy series, students can:

1. Understand the AI/ML/LLM/GenAI landscape and choose the right tools
2. Write effective prompts using zero-shot, few-shot, and chain-of-thought techniques
3. Evaluate AI output critically using the GBU framework
4. Build AI agents with structured prompts (scope + rules + quality gates)
5. Use the vibe coding methodology to ship AI-assisted projects
6. Create PRDs, personas, and user stories with AI assistance
7. Deploy projects using the AIcademy scaffold template

---

## 2. The AI Landscape

*Source: AI for Product Managers, Slides 4-6 · Level: Beginner*

### 2.1 Key Concepts Hierarchy

| Concept | Definition | Relationship |
|---------|-----------|--------------|
| **Artificial Intelligence (AI)** | Broad field of making machines mimic intelligent human behavior | Umbrella term |
| **Machine Learning (ML)** | Subset of AI where systems learn patterns from data | AI ⊃ ML |
| **Deep Learning** | ML using neural networks with many layers | ML ⊃ DL |
| **Large Language Models (LLMs)** | ML models trained on vast text data to understand and generate human-like language | DL ⊃ LLMs |
| **Generative AI (GenAI)** | AI that creates new content (text, images, code, audio, video) based on input prompts | Powered by LLMs and other models |

### 2.2 How LLMs Actually Work (Simplified)

LLMs are **next-token predictors**. Given a sequence of words, they predict the most likely next word, over and over. They don't "think" or "understand" — they produce statistically plausible continuations of text based on patterns learned from training data.

Key technical concepts students should know:

| Concept | What It Means | Why It Matters |
|---------|--------------|----------------|
| **Token** | A chunk of text (roughly ¾ of a word) that the model processes | Prompts + responses have a token limit (context window) |
| **Context window** | The total number of tokens the model can process at once (prompt + response) | Too much input = old context gets dropped or refused |
| **Temperature** | Controls randomness: 0 = deterministic, 1 = creative, >1 = chaotic | Lower for factual tasks, higher for brainstorming |
| **System prompt** | Hidden instructions that set the AI's behavior for the entire conversation | This is how agents are created (Claude Projects, custom GPTs) |
| **Hallucination** | The model confidently generates false information | Always verify critical facts. Use RAG to ground responses. |
| **Fine-tuning** | Training the model further on your specific data | Expensive, usually unnecessary — RAG or good prompting suffices |

### 2.3 Why This Matters Now

- Rapid acceleration in AI capabilities, especially GenAI, in the last 1-2 years
- Moving from niche applications to mainstream tools and product features
- Impact across industries: content creation, software development, customer service, research, design
- This is a fundamental shift, not just another tech trend

### 2.4 The AI Ecosystem for Professionals

| Category | Tools | Use Case |
|----------|-------|----------|
| **LLM Chatbots** | ChatGPT, Claude, Gemini, Perplexity | Core interaction, research, writing, analysis |
| **Image Generation** | Midjourney, DALL-E 3, Stable Diffusion | Visual content creation |
| **Video Generation** | Sora, Runway, Pika Labs | Emerging video content |
| **Audio/Music** | ElevenLabs, Suno AI | Voice cloning, music generation |
| **Coding Assistants** | GitHub Copilot, Claude Code, Codeium, Replit AI | Developer productivity |
| **No-Code/Low-Code AI** | Zapier/Make, MindStudio, Fastbots, Voiceflow | Building AI apps without code |
| **Specialized** | Research tools, meeting summarizers, presentation creators | Task-specific AI |

---

## 3. Prompt Engineering

*Source: AI for Product Managers, Slides 11-17, 19-20 · Level: Beginner → Advanced*

### 3.1 What Is Prompt Engineering?

The practice of designing and refining inputs (prompts) to guide AI models towards desired outputs. It's now a **core PM skill** because it:

- Maximizes value from AI tools
- Enables effective AI use for product tasks (research, ideation, content generation)
- Improves communication with AI systems
- Helps mitigate risks like inaccurate or biased outputs

### 3.2 Core Principles (The 4 Pillars)

| Principle | What It Means | Example |
|-----------|--------------|---------|
| **Clarity & Specificity** | Be unambiguous. State the task and expected output clearly. | Bad: "Tell me about AI products." → Good: "List 5 B2B SaaS products that leverage AI for their core functionality." |
| **Context** | Provide relevant background info the AI needs. | "Based on our previous discussion about onboarding challenges, draft three email subject lines..." |
| **Goal / Objective** | Define what you want: summarizing, explaining, generating ideas, writing code, critiquing? | "Summarize the key benefit for a busy product manager." |
| **Format** | Specify the structure: bulleted list, JSON, table, paragraph, markdown? | "Format the output as a Markdown table with columns: Feature | Competitor A | Competitor B | Our Gap." |

### 3.3 Prompting Techniques

#### Zero-Shot Prompting *(Beginner)*
Asking the AI to perform a task directly without providing prior examples. Relies entirely on the AI's pre-existing knowledge.

**When to use:** Simple, well-defined tasks the AI already knows how to do.

**Example:**
```
Translate the following English text to French: 'Hello, world!'
```

#### Few-Shot Prompting *(Beginner → Intermediate)*
Providing 1-5 examples within the prompt before asking the AI to perform the task on new input. Guides the AI on expected format or style.

**When to use:** Novel tasks, specific formats, consistent output style.

**Example:**
```
Q: What is the capital of France? A: Paris
Q: What is the capital of Japan? A: Tokyo
Q: What is the capital of Canada? A: Ottawa
Q: What is the capital of Australia? A:
```

**Key insight:** Few-shot usually produces better, more consistent results than zero-shot for non-trivial tasks.

#### Chain-of-Thought (CoT) Prompting *(Intermediate)*
Encouraging the AI to "think step-by-step" or break down reasoning before giving the final answer.

**When to use:** Logic, math, complex reasoning, multi-step analysis.

**Example:**
```
A store has 15 apples. They sell 8 in the morning and receive a shipment 
of 12 in the afternoon. How many apples do they have?

Let's think step by step.
```

### 3.4 Advanced Techniques *(Intermediate → Advanced)*

*Source: AI for Product Managers, Slides 19-20*

#### Role-Playing ("Act as...")
Deeply influences tone, style, expertise, and perspective. More powerful than simple persona assignment.

**Example:**
```
Act as a skeptical venture capitalist. Critique the following product pitch 
focusing on market size and scalability: [Pitch Text]
```

#### Step-by-Step Instructions
Break complex tasks into manageable sequential parts. Improves accuracy and completeness.

**Example:**
```
First, identify the key user segments in the following feedback. 
Second, list the top 3 pain points for each segment. 
Third, suggest one feature to address the most common pain point overall: 
[Feedback Text]
```

#### Precise Output Formatting
Get data in exactly the structure you need. Saves reformatting time.

**Example:**
```
Analyze the competitor features listed below. Output your analysis as a 
Markdown table with columns: Feature | Competitor A | Competitor B | Our Product Gap.
```

### 3.5 Multi-LLM Strategies: Creator vs. Inspector *(Advanced)*

*Source: AI for Product Managers, Slide 21*

Use one LLM (or the same LLM in a fresh conversation) to review, critique, or improve output generated by another prompt or LLM.

**The rule:** Never ship a first draft. Always have AI review AI.

**Example Inspector Prompt:**
```
Review the following user story for clarity, completeness, and adherence 
to the INVEST criteria: [User Story Text]
```

### 3.6 Worked Example: The Before/After Pattern

This is the core teaching pattern from the course. Always show the contrast.

**Task:** Summarize a product description for a stakeholder email.

**BEFORE (Bad Prompt):**
```
Summarize this:
Acme Analytics is a platform that uses machine learning to analyze customer 
behavior patterns across web, mobile, and in-store interactions, providing 
real-time dashboards and predictive insights for retail businesses.
```

**Bad Output:** "Acme Analytics is an ML-based analytics platform for retail that provides dashboards and predictions across multiple channels."
→ Generic, no audience awareness, not actionable.

**AFTER (Good Prompt):**
```
Act as a concise technical writer. Summarize the key business benefit of 
the following product for a busy VP of Retail Operations. Provide the 
summary as a single sentence under 25 words, focusing on the ROI 
implication, not the technical features:

Acme Analytics is a platform that uses machine learning to analyze customer 
behavior patterns across web, mobile, and in-store interactions, providing 
real-time dashboards and predictive insights for retail businesses.
```

**Good Output:** "Acme Analytics gives retail leaders a single view of customer behavior everywhere, enabling faster, data-backed merchandising decisions."
→ Right audience, right length, benefit-focused, actionable.

**What changed:** Added role (technical writer), specified audience (VP Retail Ops), defined format (single sentence, <25 words), clarified goal (ROI implication, not features).

---

## 4. The GBU Evaluation Framework

*Source: AI for Product Managers, Slide 22; Vibe Coding 101, Slide 10 · Level: Intermediate*

### 4.1 What Is GBU?

**Good/Bad/Ugly** — a 3-part evaluation framework you run on every AI output before using it. The cardinal rule: **Never blindly trust AI output.**

### 4.2 The Six Evaluation Criteria

| Criterion | Question to Ask | What to Look For |
|-----------|----------------|------------------|
| **Accuracy** | Is the information factually correct? | Verify critical facts independently |
| **Relevance** | Does it directly answer the prompt and meet the goal? | Off-topic content, missed requirements |
| **Completeness** | Is anything missing based on the request? | Gaps, incomplete sections, skipped items |
| **Bias** | Does it exhibit unwanted biases? | Social bias, data bias, perspective imbalance |
| **Tone/Style** | Is it appropriate for the audience and purpose? | Wrong register, too formal/casual |
| **Usability** | Is the output helpful and easy to use? | Formatting, structure, actionability |

### 4.3 GBU in the Vibe Coding Workflow

In the vibe coding process, GBU is applied at the **Review step** (Step 5):

1. **Dev agent** submits code + report (what was built, tests passing, coverage %)
2. **CTO agent** runs GBU review — Good (what works), Bad (what's weak), Ugly (what's broken)
3. **Dev agent** fixes Bad/Ugly items — one round maximum
4. Ship only after GBU passes

### 4.4 GBU Priority Classification

After identifying issues, classify them:

| Priority | Meaning | Action |
|----------|---------|--------|
| **P0** | Critical / Ugly | Must fix before shipping |
| **P1** | Important / Bad | Fix in current sprint |
| **P2** | Minor / Cosmetic | Backlog for later |

### 4.5 Worked GBU Example

**Scenario:** You asked AI to generate 3 user stories for a meeting summarizer tool.

**AI Output:**
```
1. As a project manager, I want to upload meeting recordings so that 
   I can get automated summaries.
2. As a team lead, I want to see action items extracted from meetings 
   so that I can assign tasks efficiently.
3. As a CEO, I want AI to attend meetings on my behalf so that I 
   don't have to be there.
```

**GBU Review:**

| Category | Finding | Priority |
|----------|---------|----------|
| **Good** | Stories 1 & 2 are well-structured, follow format, address real needs | — |
| **Good** | Action items extraction (Story 2) is a high-value feature | — |
| **Bad** | Story 1 missing acceptance criteria | P1 |
| **Bad** | No story covers the "sharing summary with attendees" use case — a gap | P1 |
| **Ugly** | Story 3 is technically infeasible and misunderstands the product scope (AI can't "attend" meetings) | P0 — remove |

**Verdict:** FIX THEN SHIP — remove Story 3, add acceptance criteria, consider a sharing-focused story.

---

## 5. AI Agents

*Source: AI for Product Managers, Slides 23-25; Vibe Coding 101, Slide 6 · Level: Intermediate → Advanced*

### 5.1 What Is an AI Agent?

**An agent is a prompt with scope and rules.** It's not magic — it's a structured instruction that tells the AI who it is, what it can do, and how to behave. The same template works for every project.

### 5.2 Agent Anatomy (The Template)

Every agent prompt contains these sections:

| Section | Purpose | Example |
|---------|---------|---------|
| **Identity** | Who is this agent? | "You are the CTO of Memory Match" |
| **Scope** | What can it do? What does it own? | Architecture, tech decisions, sprint planning, code review |
| **Reading Order** | What docs to read first | PRD → Architecture → Modules → Testing |
| **Owned Files** | What files this agent is responsible for | `01_ARCHITECTURE.md`, `04_TESTING.md` |
| **Quality Gates** | Standards that must be met | TDD, coverage ≥80%, no prod without tests |
| **Rules & Constraints** | Behavioral boundaries | Don't write code (CTO), don't guess (DEV) |
| **Output Format** | How to structure responses | Markdown with files affected, rationale, risks, next steps |

### 5.3 The Agent Team (Standard Roles)

| Role | Tool | Responsibilities |
|------|------|-----------------|
| **CTO** | Claude Projects (Chat) | Architecture, tech decisions, sprint planning, code review, quality gates |
| **DEV** | Claude Code (CLI) | Implementation, features, bug fixes, tests, integration |
| **QA** | Windsurf / VS Code + Playwright | Test planning, test execution, bug reports, regression testing, edge cases |
| **UI/UX** | Claude Chat / Artifacts | Visual design as code, mockups as React components, accessibility |
| **FOUNDER** | Human (you) | Priorities, scope, final decisions, sign-off |

### 5.4 Agent Communication Protocol

Agents don't talk to each other directly. **The PLAN is the communication layer:**

```
FOUNDER (Human) — sets priorities and scope
    │
    ▼
  [CTO]  — plans architecture, creates specs, reviews code
    │
    ├── Creates tasks for DEV (dev_todo)
    ├── Defines quality gates for QA (qa_todo)
    │
    ▼
  [DEV]  — implements features, writes tests
    │
    ├── Submits code + report
    │
    ▼
  [QA]   — verifies quality, reports bugs
    │
    └── Signs off when ready
```

### 5.5 Building a Simple Agent (Demo Pattern)

*Source: AI for Product Managers, Slides 23-24*

Step-by-step agent creation:

1. **Define Role & Goal:** "Act as a meticulous Project Assistant. Your primary goal is to analyze raw meeting notes and extract actionable information."
2. **Specify Input & Output:** "You will receive unstructured text notes. Your output must be Markdown with sections: '## Action Items', '## Key Decisions', '## Main Topics Discussed'."
3. **Add Capabilities & Constraints:** "Under 'Action Items', list tasks with responsible person. If information is ambiguous, state 'Clarification needed'."
4. **Combine** into a single coherent prompt.
5. **Test** with sample data and iterate.

### 5.6 Agent Limitations

*Source: AI for Product Managers, Slide 25*

| Limitation | What It Means | Mitigation |
|-----------|--------------|------------|
| **Hallucinations** | AI inventing facts not in the input | Verify against source data, use RAG, lower temperature |
| **Bias** | AI reflecting training data biases | Mindful prompts, diverse evaluation, apply GBU |
| **Consistency** | Different outputs for the same prompt | Precise formatting requests, lower temperature, iterate |
| **Context window limits** | Long conversations lose earlier context | Summarize periodically, keep prompts focused |
| **Prompt injection** | Malicious input can override instructions | Validate inputs, separate user content from instructions |

---

## 6. Vibe Coding Methodology

*Source: Vibe Coding 101, Slides 1-13 · Level: Advanced*

### 6.1 What Is Vibe Coding?

Vibe coding is **AI-assisted development where AI writes the code and you make the decisions** about architecture, features, and quality. One person with AI agent teams can ship production software.

**Key principles:**
- Process IS the product — CTO plans, Dev builds, QA tests, Designer designs
- Templates = velocity — never start from scratch
- TDD works with AI — write test first, AI implements to pass
- AI reviews AI — Good/Bad/Ugly, never ship a first draft

### 6.2 The 8-Step Process (Idea → Shipped Product)

| Step | Action | Tool | Output |
|------|--------|------|--------|
| **1** | Define CTO Agent | Claude Projects | CTO system prompt + project knowledge uploaded |
| **2** | Sprint 0 — Template → Project | Claude Code (CLI) | Project scaffolded from template |
| **3** | Sprint 0 — Plan (PRD + TODOs) | Claude Chat (CTO) | PRD filled in, sprint tasks defined, dev_todo + qa_todo |
| **4** | Sprint 1 — Build (Dev + QA) | Claude Code + Windsurf | Working features + passing tests |
| **5** | Sprint 1 — Review + Demo | CTO Agent + Browser | GBU review complete, fixes applied, demo works |
| **6** | Sprint 2 — Plan + Build + Ship | All tools | Polish, animation, advanced features |
| **7** | UI/UX Mock + Deploy | UI Agent + Vercel | Visual design as code, deployed to production |
| **8** | Final Demo + Takeaways | Browser + Q&A | Shipped, working product |

### 6.3 Step Details

#### Step 1: Create the CTO Agent
- Create a new Claude Project
- Paste the CTO system prompt (identity, scope, reading order, owned files, quality gates)
- Upload template docs as Project Knowledge
- First query: "What is our project?"
- **Key concept:** An agent isn't magic — it's a PROMPT with SCOPE and RULES

#### Step 2: Sprint 0 — Template → Project
Fork the AIcademy scaffold template and customize:

```
GitHub Template                    →    Your Project
─────────────────                       ───────────────
docs/00_INDEX.md                       docs/00_INDEX.md
docs/0k_PRD.md (template)             docs/0k_PRD.md (project-specific)
docs/01_ARCHITECTURE.md                docs/01_ARCHITECTURE.md
docs/04_TESTING.md                     docs/04_TESTING.md (Playwright)
.windsurf/rules/                       next.config.js + package.json
AGENTS.md (Tier 1-3)                   AGENTS.md (project rules)
backend/modules/_example/              src/components/ + src/lib/
```

**Key:** Every project starts from a TEMPLATE — not from scratch. Consistency is velocity.

#### Step 3: CTO Creates the Spec
The CTO agent produces three deliverables:

| Deliverable | File | Contents |
|------------|------|----------|
| **PRD** | `0k_PRD.md` | Game rules + mechanics, acceptance criteria, definition of done |
| **Requirements** | `sprint_01/` | Technical breakdown, component architecture, API contracts |
| **Team TODOs** | `dev_todo` + `qa_todo` | Dev: code tasks (TDD). QA: test scenarios. Clear acceptance gates. |

#### Step 4: Dev + QA Build in Parallel
Two agents, two tools, same project:

**Dev Team (Claude Code CLI):**
- Component implementation (static reveal first)
- Grid/board layout (props-driven)
- Core logic (match detection via TDD)
- State management (score, game-over)
- Unit tests (Jest + React Testing Library)

**QA Team (Windsurf IDE):**
- Playwright E2E setup
- DOM structure assertions
- User interaction flow tests
- State validation tests
- Full game flow coverage

**Key:** They don't talk to each other — the PLAN is the communication.

#### Step 5: Review + Iterate + Demo
Three-phase review:

1. **Dev Report:** What was built, tests passing, coverage %
2. **CTO Design Review:** Good / Bad / Ugly — architecture, code quality
3. **Fix Iteration:** Dev fixes Bad/Ugly items. One round max.

Then: Run the project in browser. Verify it works. Demo moment.

#### Step 6: Sprint 2 — Polish + Ship
Same process, higher-fidelity features:
- Flip animation (CSS 3D card flip, smooth transitions, glow)
- Timer + scoring (countdown, time-based bonus, urgency)
- Leaderboard (Next.js API Route, SQLite → Turso)
- Responsive + sound (mobile layout, touch-friendly, audio)

#### Step 7: UI/UX Mock + Deploy
- UI/UX Agent generates visual mocks AS React components (not Figma files)
- "Design is code" philosophy
- Deploy to Vercel (free tier, `vercel --prod`, GitHub auto-deploy, PR preview URLs)

#### Step 8: Final Demo + Takeaways
Present the shipped product. Reflect on the process.

### 6.4 The Five Takeaways

1. **One person, four AI agents, two sprints → shipped product**
2. **Process IS the product** — CTO plans, Dev builds, QA tests, Designer designs
3. **Templates = velocity** — never start from scratch
4. **TDD works with AI** — write test first, AI implements to pass
5. **AI reviews AI** — Good/Bad/Ugly, never ship a first draft

### 6.5 How the Case Study Illustrates the Methodology

The Arcane Vault (§10) is the concrete proof that this methodology works. Here's the mapping:

| Methodology Step | How Arcane Vault Applied It |
|-----------------|----------------------------|
| Step 1: CTO Agent | Full CTO prompt with Arcane-specific scope, quality gates, file ownership (see §10) |
| Step 2: Template | Scaffold → customized with game-specific files, components, config |
| Step 3: Spec | PRD defines shaped grids, card sizes, 8 levels, star ratings, XP system |
| Step 4: Build | Dev built Card, ShapedGrid, GameBoard. QA wrote Playwright tests for match logic. |
| Step 5: Review | CTO ran GBU on first sprint delivery. Identified missing edge cases (rapid clicks, last pair). |
| Step 6: Polish | Sprint 2 added CSS 3D flip, timer, Canvas bestiary, responsive layout |
| Step 7: Deploy | Single-file JSX deployed as artifact — could be Vercel for production |
| Step 8: Demo | Live game in browser — click to reveal, match pairs, score, stars |

---

## 7. The AIcademy Scaffold Template

*Source: GitHub template, AGENTS.md, PRD.md, ARCHITECTURE.md, DECISIONS.md · Level: Advanced*

### 7.1 What's In the Template

The scaffold is a GitHub template repository that provides the complete project structure:

```
project-root/
├── CLAUDE.md              ← Project context for Claude Code
├── AGENTS.md              ← Role definitions (CTO/DEV/QA/FOUNDER)
├── docs/
│   ├── 00_INDEX.md        ← Document map
│   ├── 0k_PRD.md          ← Product Requirements Document (template)
│   ├── 01_ARCHITECTURE.md ← Technical architecture (template)
│   ├── 04_TESTING.md      ← Testing strategy
│   └── DECISIONS.md       ← Decision log
├── sprint_01/
│   ├── sprint_01_index.md ← Sprint planning
│   ├── todo/              ← dev_todo + qa_todo
│   ├── reports/           ← Sprint reports
│   └── reviews/           ← Code reviews
├── src/
│   ├── components/        ← React components
│   └── lib/               ← Shared utilities
├── backend/
│   └── modules/           ← Backend modules
├── .windsurf/rules/       ← Windsurf IDE agent rules
└── package.json / next.config.js
```

### 7.2 Key File Purposes

| File | What It Does | Who Fills It In |
|------|-------------|----------------|
| `CLAUDE.md` | Project context for Claude Code — name, tech stack, key paths, commands, current sprint | FOUNDER + CTO |
| `AGENTS.md` | Role definitions with responsibilities, rules, output formats | FOUNDER (once, then reuse) |
| `0k_PRD.md` | Product requirements — problem, users, features, stories, scope, success criteria | FOUNDER + CTO |
| `01_ARCHITECTURE.md` | Tech stack, system diagram, components, data model, APIs, folder structure | CTO |
| `DECISIONS.md` | Decision log with context, options, rationale, consequences | CTO |
| `sprint_XX_index.md` | Sprint scope, exit criteria, risks, artifact links | CTO |

### 7.3 AGENTS.md Role Definitions

**[CTO] — Chief Technology Officer**
- Owns: Architecture, technical decisions, code quality, system design
- Decision framework: Reversible → move fast. Irreversible → FLAG it, present options, let FOUNDER decide
- Output: Files affected, decision rationale, risks/tradeoffs, tests needed, next steps

**[DEV] — Developer**
- Owns: Implementation, features, bug fixes, tests
- Rules: Read before write, follow existing patterns, don't over-engineer, every feature needs a test, if unclear ASK
- Output: What was implemented, files changed, tests added, how to verify

**[QA] — Quality Assurance**
- Owns: Testing, bug discovery, quality verification
- Bug report format: Bug description, steps to reproduce, expected vs actual, severity
- Checklist: Happy path, error cases, edge cases, no regressions, performance acceptable

**[FOUNDER] — Human Operator**
- Owns: Priorities, scope, final decisions, sign-off
- This is YOU — the human decision maker

### 7.4 PRD Template Structure

| Section | Contents |
|---------|----------|
| 1. Overview | Project name, one-line description, problem statement, target users |
| 2. Core Features | 3-5 MVP features with priority (Must Have / Nice to Have) |
| 3. User Stories | "As a [user], I want to [action], so that [benefit]" + acceptance criteria |
| 4. Out of Scope | What you're NOT building (equally important) |
| 5. Success Criteria | How you know when you're done |
| 6. Technical Constraints | Must use/not use, platform requirements |

### 7.5 Decision Log Format

Each decision is documented with: Date, Status (Proposed/Accepted/Deprecated), Decided by, Context (why), Options Considered (with pros/cons), Decision (which option), Rationale (why), Consequences (what changes).

---

## 8. AI for Product Managers

*Source: AI for Product Managers, Slides 27-44 · Level: Intermediate*

### 8.1 AI for Market Research & Ideation

**Tools:** Web-enabled LLMs (Perplexity, ChatGPT with Browsing, Gemini), specialized market intelligence platforms.

**Common Research Tasks:**
- Identifying emerging market trends and technologies
- Summarizing competitor product features, strategies, or recent news
- Analyzing large volumes of customer reviews or feedback
- Generating lists of potential competitors in a niche

**Approach:**
- **Broad Scans:** "What are the latest AI trends in fintech?"
- **Deep Dives:** Specific questions, reference known sources, use focused research tools

### 8.2 AI for Brainstorming & Idea Generation

**Why use AI for brainstorming?**
- Overcome the "blank page" problem
- Explore diverse perspectives quickly
- Combine existing concepts in novel ways
- Generate high volume of ideas for later filtering

**Example Brainstorming Prompts:**
```
"Generate 10 distinct ideas for using AI to improve user onboarding 
for a mobile productivity app."

"Act as the Head of Product for [Competitor Name]. Brainstorm 5 
potential AI-driven features they might launch next year."

"Combine 'personalized learning paths' with 'AI-powered code generation'. 
Suggest 3 innovative product ideas for dev training."

"List 5 unconventional ways AI could reduce customer churn 
for an e-commerce subscription box."
```

### 8.3 AI-Assisted PRD Creation

*Source: AI for Product Managers, Slides 30-33*

**The 7-Step PRD Process with AI:**

1. **Start with a basic prompt** for your PM assistant
2. **Iterate and refine** until performance meets expectations
3. **Build your project assistant** around the solid prompt
4. **Upload unstructured data** (notes, emails, documents)
5. **Generate a PRD from a template** — structured output
6. **Craft the executive summary** — AI synthesizes key insights
7. **Embark on the full PRD journey** — detailed, grounded in data

### 8.4 AI-Assisted Persona Drafting

*Source: AI for Product Managers, Slides 38-39*

**Why Personas?** They help empathize with users, understand needs/goals/motivations/pain points, guide product decisions, and keep the team user-focused.

**Persona Prompt Template:** (See §18.3 for the full template)

### 8.5 AI-Assisted User Stories

*Source: AI for Product Managers, Slides 40-41*

**User Story Format:** "As a [persona/role], I want to [action/feature], so that [user benefit]."

**User Story Prompt Template:** (See §18.4 for the full template)

### 8.6 Key PM Workflow with AI

| PM Task | AI Application | Tool |
|---------|---------------|------|
| Market research | Trend scanning, competitor analysis | Perplexity, ChatGPT with browsing |
| Ideation | Brainstorming, concept combining | Any LLM chat |
| PRD writing | Template filling, section generation | Claude with uploaded docs |
| Persona creation | Draft personas from segment info | Any LLM |
| User stories | Generate stories from persona + concept | Any LLM |
| Requirements | Translate needs into features | Any LLM |
| Presentation | Generate slides, polish wording, create visuals | LLM + image generation |
| Review | GBU framework, Creator vs Inspector | Two LLMs or fresh chats |

---

## 9. RAG & Knowledge Grounding

*Source: AI for Product Managers, Slide 32 · Level: Intermediate → Advanced*

### 9.1 What Is RAG?

RAG (Retrieval-Augmented Generation) is a technique to make LLMs "aware" of specific documents or data sources beyond their general training knowledge.

### 9.2 The Textbook Analogy

Imagine asking an expert a question, but first handing them the specific textbook chapter relevant to your query. They read the chapter, then answer using that specific knowledge — not just their general training.

### 9.3 Why RAG Matters

- Answers based on **your specific** project documents, not just general knowledge
- Reduces hallucinations by anchoring responses to source material
- No expensive fine-tuning needed
- Documents can be updated without retraining

### 9.4 When to Use What

| Approach | When to Use | Cost | Example |
|----------|-------------|------|---------|
| **Good prompting** | AI already knows the topic, you just need a specific format or angle | Free | "Summarize the INVEST criteria for user stories" |
| **RAG** | You have specific documents the AI needs to reference (project docs, internal data) | Low (upload docs) | Claude Projects with uploaded PRD, architecture docs |
| **Fine-tuning** | You need the model to behave differently at a fundamental level (rare) | High ($$$) | Custom medical terminology model |

### 9.5 RAG in Practice — Claude Projects

When you create a Claude Project and upload documents as Project Knowledge, you're creating a RAG system:
1. Documents are uploaded and indexed
2. When you ask a question, relevant document chunks are retrieved
3. Claude answers based on those specific chunks
4. Responses are grounded in your actual project data

**This is exactly how the AIcademy Oracle works** — the course materials are uploaded as Project Knowledge, and the Oracle answers based on them.

### 9.6 RAG in Practice — Perplexity

Perplexity is essentially RAG over the live web:
1. Your question triggers a web search
2. Relevant web pages are retrieved
3. The LLM answers based on those pages
4. Sources are cited

---

## 10. Case Study: The Arcane Vault

*Source: CTO Agent (01_CTO_Agent.md), Arcane UI Kit (03_Arcane_UI_Kit_Spec.md), Vibe Coding 101 · Level: Advanced*

### 10.1 Project Overview

**The Arcane Vault** is a D&D-themed memory card game built as the live demo project for the Vibe Coding 101 session. It demonstrates every principle of the vibe coding methodology.

**Three differentiators:**
1. **Shaped Grids** — Cards arranged in letters, numbers, and symbols (A, 6, ★, +). The shape IS the level.
2. **Variable Card Sizes** — 1×1, 2×1, 1×2, 2×2 within a single level
3. **Unified Arcane Theme** — Deep violet surfaces, runic gold accents, one coherent visual language

### 10.2 Why This Case Study Matters

The Arcane Vault isn't just a game — it's proof that one person with AI agents can ship a complex, polished product in two sprints. Every step of the methodology (§6) is visible in the project artifacts.

### 10.3 Technical Decisions

| ID | Decision | Rationale |
|----|----------|-----------|
| D-01 | Single-file JSX | Demo-friendly, no build step needed |
| D-02 | CSS Grid for shapes | Native spans, responsive layout |
| D-03 | Same-size matching only | Fair gameplay, clean logic |
| D-04 | Templates as JSON | Portable, editor-friendly |
| D-05 | Canvas for bestiary | Blending, blur, glow effects |
| D-06 | Arcane theme only | Strong identity, less code |
| D-07 | Client-side only | MVP speed |
| D-08 | localStorage for persistence | No backend needed |
| D-09 | Shuffle within size groups | Valid placement guaranteed |
| D-10 | ≤24 pairs per level | UX ceiling |

### 10.4 Architecture

**State Machine:**
```
MAIN_MENU → LEVEL_SELECT → PLAYING → RESULTS → LEVEL_SELECT
                              ↕
                           PAUSED
```

**Component Tree:**
```
<ArcaneVault>
  ├── <MainMenu>           Title, card fan, begin/continue/bestiary
  ├── <LevelSelect>        Shape-preview level grid
  ├── <GameBoard>          Active play
  │     ├── <HUD>          Timer, pairs, moves, shape label
  │     ├── <ShapedGrid>   CSS Grid layout engine
  │     │     └── <Card>   Size-aware, 3 states, flip animation
  │     └── <ParticleLayer> Effects (stretch)
  └── <ResultsModal>       Stars, XP breakdown, progression
```

### 10.5 Card Size System

| Size | Grid Span | Frequency | Designation |
|------|-----------|-----------|-------------|
| 1×1 | 1 col × 1 row | ~70% | Standard |
| 2×1 | 2 cols × 1 row | ~15% | Wide |
| 1×2 | 1 col × 2 rows | ~10% | Tall |
| 2×2 | 2 cols × 2 rows | ~5% | Legendary (boss) |

**Rules:** Same-size matching only. Shuffle within size groups. 2×2 reserved for boss. Max 2 legendary per level.

### 10.6 Level Library

| # | Shape | Grid | Pairs | Difficulty | Time |
|---|-------|------|-------|------------|------|
| 1 | 1 | 3×7 | 5 | Easy | 60s |
| 2 | + | 5×5 | 6 | Easy | 90s |
| 3 | T | 7×6 | 8 | Easy | 90s |
| 4 | A | 7×8 | 10 | Medium | 120s |
| 5 | 6 | 6×8 | 12 | Medium | 100s |
| 6 | ◆ | 7×7 | 10 | Medium | 100s |
| 7 | H | 7×8 | 10 | Hard | 110s |
| 8 | ★ | 9×9 | 16 | Legendary | 90s |

**Star rating:** ★ = complete, ★★ = ≤2× minimum moves, ★★★ = ≤1.5× AND ≥50% time remaining.

### 10.7 Design System Highlights (Arcane UI Kit)

**Palette:** Violet-tinted surfaces (`void` #030010 → `twilight` #2a1a55), Arcane accent (#a78bfa), Runic gold (#fbbf24). No gray — every neutral is violet-tinted.

**Typography:** MedievalSharp (display), Crimson Text (body), Fira Code (mono)

**Visual Rules:** Glow is emphasis (max 1-2 per screen). ✦ glyph is visual signature. Gold reserved for XP/rewards/legendary only.

### 10.8 Quality Gates

| Gate | Requirement |
|------|-------------|
| Templates | All pass 5 validation rules |
| Visual QA | Matches Kit at 375 / 768 / 1200px |
| Performance | 60fps flip with 30+ cards |
| Palette | Zero off-token colors |
| Logic | All size combos, edge cases (last pair, rapid clicks) |
| Accessibility | Keyboard nav, WCAG AA contrast |

---

## 11. Tool Recommendations & Setup

*Level: All*

### 11.1 Tool Selection Guide

| Student Level | Recommended Starting Tools |
|--------------|---------------------------|
| **Beginner** | Claude.ai (free tier) or ChatGPT — just start prompting |
| **Intermediate** | Claude.ai Pro + Perplexity for research. Start using Claude Projects for agents. |
| **Advanced** | Claude Code CLI + VS Code/Windsurf + Playwright + Vercel. Full vibe coding stack. |

### 11.2 Course-Recommended Stack

| Purpose | Tool | Notes |
|---------|------|-------|
| **LLM Chat** | Claude (claude.ai) | Primary recommendation. ChatGPT/Gemini as alternatives |
| **Coding Agent** | Claude Code (CLI) | Terminal-based, for vibe coding workflow |
| **IDE** | VS Code or Windsurf | For QA agent and manual inspection |
| **E2E Testing** | Playwright | Configured in the scaffold template |
| **Deployment** | Vercel (free tier) | `vercel --prod`, GitHub auto-deploy, PR preview URLs |
| **Version Control** | GitHub | Template repository hosting |

### 11.3 When to Use Which LLM

| Scenario | Recommendation | Why |
|----------|---------------|-----|
| **General prompting, agents, code** | Claude | Strong at following complex instructions, great for system prompts |
| **Web research with sources** | Perplexity | Built-in web search with citations |
| **Image generation** | ChatGPT (DALL-E) or Midjourney | Native image gen in ChatGPT; Midjourney for quality |
| **Quick fact-checking** | Gemini | Strong at factual queries, integrated with Google |
| **Code completion in IDE** | GitHub Copilot or Claude Code | Real-time suggestions while typing |

### 11.4 Setting Up Claude Code (CLI)

Claude Code is a command-line tool for the vibe coding workflow:

1. **Install:** Requires Node.js. Install via `npm install -g @anthropic-ai/claude-code`
2. **Navigate to your project:** `cd your-project-folder`
3. **Start:** `claude` in terminal
4. **Key feature:** Claude Code reads `CLAUDE.md` automatically for project context
5. **Usage:** Give it tasks from your dev_todo — it reads files, writes code, runs tests

### 11.5 Setting Up a Claude Project (for CTO Agent)

1. Go to claude.ai → Projects → New Project
2. Paste your CTO agent system prompt as the Project Instructions
3. Upload your scaffold docs (PRD, Architecture, Testing) as Project Knowledge
4. Start a conversation: "What is our project?"
5. The agent now has full context of your project

### 11.6 Deployment Details

| Field | Value |
|-------|-------|
| Platform | Vercel (free tier) |
| Command | `vercel --prod` |
| DB (dev) | SQLite (local file) |
| DB (prod) | Turso / Neon (hosted) |
| Domain | `.vercel.app` or custom |
| CI/CD | GitHub → auto-deploy |
| Preview | Every PR gets a URL |

---

## 12. Common Mistakes & Anti-Patterns

*Level: All — Oracle should reference this section when students make these errors*

### 12.1 Prompting Mistakes

| Mistake | What Goes Wrong | Fix |
|---------|----------------|-----|
| **Vague prompts** | "Tell me about AI" → gets a generic essay | Add specificity: who, what, how many, what format |
| **No format specified** | AI picks a random structure | Always specify: "as a table", "in 3 bullet points", "as JSON" |
| **No audience specified** | Wrong tone and depth | Add "for a [role]" — PM, developer, executive, beginner |
| **Cramming everything into one prompt** | Confused, incomplete output | Break into steps: "First..., Then..., Finally..." |
| **Not iterating** | Accepting mediocre first output | Treat AI like a junior employee — give feedback, ask for revision |
| **Copy-pasting output without review** | Hallucinations, bias, gaps ship to production | Always run GBU before using any AI output |

### 12.2 Agent Mistakes

| Mistake | What Goes Wrong | Fix |
|---------|----------------|-----|
| **No scope boundaries** | Agent tries to do everything, does nothing well | Define exactly what the agent owns and does NOT own |
| **No quality gates** | Agent ships broken work | Add explicit standards: TDD, coverage %, review required |
| **Agents talking to each other** | Confusion, drift, compounding errors | Use the PLAN as communication — agents read docs, not each other |
| **Skipping the CTO step** | Dev starts coding without a plan | Always plan before build. CTO creates spec → Dev implements spec. |

### 12.3 Vibe Coding Mistakes

| Mistake | What Goes Wrong | Fix |
|---------|----------------|-----|
| **Starting from scratch** | Reinventing project structure every time | Use the scaffold template. Templates = velocity. |
| **Shipping a first draft** | Bugs, poor architecture, missing edge cases | Always run GBU review. AI reviews AI. One fix round. |
| **No tests** | Can't verify if code works, regressions pile up | TDD — write tests first, AI implements to pass |
| **Ignoring the "Ugly"** | Critical bugs make it to production | P0 items are blockers. Never ship with Ugly findings. |
| **Over-engineering Sprint 1** | Scope creep, never ships | Sprint 1 = static, working, ugly. Sprint 2 = polish. Ship fast. |

### 12.4 PRD Mistakes

| Mistake | What Goes Wrong | Fix |
|---------|----------------|-----|
| **No "Out of Scope" section** | Scope creeps endlessly | Explicitly list what you're NOT building |
| **AI-generated personas without validation** | Fictional personas that don't match reality | Use AI-generated personas as drafts, validate with real user data |
| **User stories without acceptance criteria** | No definition of "done" | Every story needs checkboxes: "Done when..." |
| **Skipping the problem statement** | Building a solution without a clear problem | Start PRD with "Problem:" — one sentence, clear pain point |

---

## 13. Hands-On Labs Reference

*Source: AI for Product Managers, Slides 18, 26, 36, 42 · Level: All*

### 13.1 Lab 1: Basic Prompting Practice

*Source: AI for PMs, Slide 18 · Duration: ~20-25 min*

**Goal:** Practice writing clear, effective prompts for common tasks.

**Tools:** ChatGPT, Claude, or another LLM.

**Example Tasks (Choose 2-3):**
1. Generate 5 creative, professional names for a new AI-powered meeting summarization tool
2. Draft a short, polite email (under 100 words) asking a colleague for feedback on a feature concept
3. Summarize a provided paragraph in exactly 15 words
4. Translate "How can AI improve product management workflows?" into Spanish and German
5. List three potential downsides of relying too heavily on AI for product ideation

**Debrief focus:** Compare zero-shot vs. few-shot results. Notice how specificity changes output quality.

### 13.2 Lab 2: Building & Refining an Agent Prompt

*Source: AI for PMs, Slide 26 · Duration: ~25 min*

**Goal:** Create, test, and refine a prompt for a simple "agent" performing a PM task.

**Tools:** ChatGPT + Claude (two LLMs ideal for comparison).

**Process:**
1. Pick a PM task (meeting note extraction, competitor analysis, feature prioritization)
2. Write an agent prompt using the template: Identity + Scope + Input/Output + Constraints
3. Test with sample data
4. Apply GBU to the output
5. Refine the prompt based on findings
6. Test again — observe improvement

**Debrief focus:** How did the output change between v1 and v2 of your prompt? What did GBU catch?

### 13.3 Lab 3: Brainstorming & Idea Selection (Group)

*Source: AI for PMs, Slide 36 · Duration: ~30 min · Group activity*

**Goal:** Choose a problem space, use AI for idea generation, select one concept.

**Process:**
1. Choose a problem domain as a group
2. Use AI brainstorming prompts to generate 10+ ideas
3. Discuss feasibility, impact, interest
4. Select one core AI product/feature idea
5. Create an initial PRD outline

### 13.4 Lab 4: Concept Presentation Content (Group)

*Source: AI for PMs, Slide 42 · Duration: ~35 min · Group activity*

**Goal:** Apply persona and requirements drafting to your chosen idea. Generate content for a concept pitch.

**Deliverables:**
- 1-2 user personas (AI-generated, group-refined)
- 3-5 user stories with acceptance criteria
- Initial PRD sketch
- 1-2 minute verbal pitch structure

---

## 14. Oracle Capabilities Guide

*Use this section when students ask "What can you do?" or seem unsure how to interact.*

### 14.1 What the AIcademy Oracle Can Do

**Explain any course topic:**
- "Explain RAG to me"
- "What's the difference between zero-shot and few-shot?"
- "How does the GBU framework work?"
- "Walk me through the 8-step vibe coding process"

**Create deliverables:**
- "Create a PDF summary of prompt engineering techniques"
- "Make a cheat sheet for the GBU framework"
- "Build me an interactive HTML page explaining the agent roles"
- "Generate a presentation on vibe coding for my team"

**Help with your project:**
- "Help me write a CTO agent prompt for my app"
- "Help me fill in the PRD template for my project idea"
- "Generate user personas for my product"
- "Write user stories for my feature"
- "Review my PRD using the GBU framework"

**Practice and apply:**
- "Give me a prompting exercise to practice"
- "Show me a before/after prompt example for my use case"
- "Help me brainstorm features for a [domain] product"

### 14.2 How to Get the Best Results from the Oracle

1. **State your goal clearly** — "I want to understand X" vs. "I need to create Y"
2. **Mention your experience level** if you want (or the Oracle will infer it)
3. **Ask for a specific format** — "as a cheat sheet", "with examples", "step by step"
4. **Ask for deliverables** — the Oracle can create PDFs, presentations, and interactive pages
5. **Iterate** — ask follow-ups, request deeper dives, challenge the explanation

---

## 15. Learning Path & Progression

*Recommended study order for different starting points*

### 15.1 Beginner Path (No AI experience)

```
Step 1: AI Landscape (§2)
   ↓  "What is AI/ML/LLM? What tools exist?"
Step 2: Basic Prompting (§3.1-3.3)
   ↓  "How do I talk to AI effectively?"
Step 3: Lab 1 — Practice prompting (§13.1)
   ↓  Hands-on: write 3 good prompts
Step 4: GBU Framework (§4)
   ↓  "How do I know if AI output is good?"
Step 5: Common Mistakes (§12.1)
   ↓  "What should I avoid?"
→ You can now use AI productively for daily tasks.
```

### 15.2 Intermediate Path (Uses AI casually, wants to level up)

```
Step 1: Advanced Prompting (§3.4-3.6)
   ↓  Role-playing, step-by-step, Creator vs Inspector
Step 2: AI Agents (§5)
   ↓  "How do I build a specialized AI assistant?"
Step 3: Lab 2 — Build an agent (§13.2)
   ↓  Hands-on: create and refine an agent prompt
Step 4: AI for PM Workflow (§8)
   ↓  Research, personas, user stories, PRDs
Step 5: RAG & Knowledge Grounding (§9)
   ↓  "How do I make AI use MY data?"
→ You can now build AI agents and use AI for product work.
```

### 15.3 Advanced Path (Technical, wants to ship products with AI)

```
Step 1: Vibe Coding Methodology (§6)
   ↓  The 8-step process
Step 2: Scaffold Template (§7)
   ↓  Project structure, CLAUDE.md, AGENTS.md
Step 3: Tool Setup (§11.4-11.5)
   ↓  Claude Code CLI + Claude Projects
Step 4: Case Study: Arcane Vault (§10)
   ↓  See the methodology in action
Step 5: Anti-Patterns (§12.2-12.3)
   ↓  "What mistakes do people make?"
→ You can now ship AI-assisted products using agent teams.
```

### 15.4 Skill Progression Ladder

| Level | You Can... | Next Step |
|-------|-----------|-----------|
| **L0 — Curious** | Ask AI basic questions | Learn the 4 prompting pillars (§3.2) |
| **L1 — Prompter** | Write clear, specific prompts with format control | Try few-shot and CoT (§3.3) |
| **L2 — Evaluator** | Critically assess AI output using GBU | Build your first agent (§5) |
| **L3 — Agent Builder** | Create scoped agents with rules and quality gates | Learn the vibe coding workflow (§6) |
| **L4 — Vibe Coder** | Ship products with AI agent teams | Customize the scaffold, mentor others |

---

## 16. Quick Answer Bank

Pre-written answers for the most common student questions. The Oracle gives the quick answer FIRST, then offers to go deeper.

---

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
→ RAG = Retrieval-Augmented Generation. Instead of relying on the AI's general knowledge, you give it specific documents to read first, then it answers based on those. Like handing an expert the textbook chapter before asking your question.

**"What is Creator vs Inspector?"**
→ Use one LLM (or a fresh chat) to generate content, then use another to review and critique it. This catches errors, hallucinations, and blind spots. Rule: never ship a first draft.

**"What is chain-of-thought prompting?"**
→ Adding "Let's think step by step" to get the AI to show its reasoning before giving a final answer. Dramatically improves accuracy for logic, math, and complex analysis.

**"How do Dev and QA agents work together?"**
→ They don't talk to each other — the PLAN (sprint todos, acceptance criteria) is their shared communication layer. Dev builds and tests in Claude Code. QA writes E2E tests in Windsurf. Both follow the same spec from the CTO.

**"What does the CTO agent do?"**
→ The CTO agent plans architecture, creates sprint specs, reviews code using GBU, and makes technical decisions. It does NOT write code — it plans, reviews, and decides.

**"How do I write a good PRD with AI?"**
→ Start with a basic PM assistant prompt, iterate until it performs well, upload unstructured data (notes, feedback), then have it generate a PRD from the template with sections for overview, features, user stories, out of scope, and success criteria.

**"What is the AIcademy scaffold?"**
→ A GitHub template repository with the complete project structure — CLAUDE.md, AGENTS.md, PRD template, architecture template, sprint folders, testing setup. Fork it and customize. Templates = velocity.

**"What can you (the Oracle) do for me?"**
→ I can explain any course topic, create PDFs/presentations/cheat sheets, help you plan your project, write agent prompts, generate personas and user stories, review your work with GBU, and practice prompting with you. Just ask.

**"What is a system prompt?"**
→ Hidden instructions that define how an AI behaves for an entire conversation. When you create a Claude Project and paste instructions, that's a system prompt. It's how agents are built.

**"What is temperature in AI?"**
→ A setting that controls randomness. Temperature 0 = deterministic (same input → same output). Temperature 1 = creative. For factual tasks, use low temperature. For brainstorming, go higher.

---

## 17. Topic Cross-Reference

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
| "What is the Arcane Vault?" | Case Study | CTO Agent + UI Kit Spec |
| "What were the hands-on labs?" | Labs Reference | §13 |
| "What common mistakes should I avoid?" | Anti-Patterns | §12 |
| "What should I learn next?" | Learning Path | §15 |

---

## 18. Templates & Prompts Library

### 18.1 CTO Agent Prompt Template

```markdown
You are the **CTO of [PROJECT_NAME]** — [one-line project description].

You are a focused, senior technical lead. You think in systems, components, 
state machines, test coverage, and shippable increments. You do NOT write 
code — you PLAN, REVIEW, and DECIDE.

## Identity
| Field | Value |
|-------|-------|
| Role | CTO |
| Project | [PROJECT_NAME] |
| Tech Stack | [e.g., React 18, Next.js, PostgreSQL] |
| Methodology | Vibe Coding — manage AI agent teams |
| Reports to | FOUNDER (human) |
| Coordinates with | DEV, QA agents |

## Scope
- Architecture and tech decisions
- Sprint planning and task breakdown
- Code review (GBU framework)
- Quality gates enforcement

## Reading Order
PRD → Architecture → Modules → Testing

## Quality Gates
- TDD — tests first, then implementation
- Coverage ≥80%
- No production without passing tests
- GBU review on every sprint delivery

## Communication
- Direct, technical, structured markdown
- Planning: tasks + acceptance criteria
- Review: Good/Bad/Ugly → P0/P1/P2
- Blocked: FLAG + options + recommendation
```

### 18.2 Market Research Prompt Template

```markdown
Act as a senior market analyst specializing in [INDUSTRY].

Research the current landscape for [PRODUCT_CATEGORY]:
1. Identify the top 5 competitors and their key differentiators
2. List 3 emerging trends that could disrupt this space
3. Identify 2-3 underserved user segments
4. Summarize the biggest unmet need in this market

Format as a structured report with headers for each section.
Keep each section to 3-5 bullet points maximum.
```

### 18.3 Persona Generation Prompt Template

```markdown
Act as an experienced User Researcher creating a detailed user persona.

Product concept: [DESCRIPTION]
Target segment: [SEGMENT]
Known characteristics: [DETAILS]

Generate a persona with:
- Name (realistic)
- Role/Job Title
- Demographics (age range, location type)
- Goals (related to problem our product solves)
- Pain Points (frustrations our product addresses)
- Tech Comfort Level
- Narrative Scenario (one paragraph, typical use situation)

Format with clear headings.
```

### 18.4 User Story Generation Prompt Template

```markdown
Act as an experienced Product Manager writing user stories.

Product: [DESCRIPTION]
Persona: [NAME], a [ROLE DESCRIPTION]

Generate [N] distinct user stories using:
"As a [Persona], I want to [action], so that [benefit]."

For each story, include 2-3 acceptance criteria as checkboxes.
Focus on [OPTIONAL: specific aspect].
```

### 18.5 GBU Review Prompt Template

```markdown
Act as a senior technical reviewer. Evaluate the following [CODE/DOCUMENT/OUTPUT] 
using the GBU framework:

## Good (What works well)
- List strengths, correct implementations, good patterns

## Bad (What's missing or weak)
- List gaps, incomplete areas, suboptimal approaches

## Ugly (What's broken or dangerous)
- List bugs, security issues, critical failures

For each Bad and Ugly item, assign priority:
- P0: Must fix before shipping
- P1: Fix in current sprint
- P2: Backlog

End with a clear recommendation: SHIP / FIX THEN SHIP / DO NOT SHIP.
```

### 18.6 Sprint Planning Prompt Template

```markdown
As the CTO, plan Sprint [N] for [PROJECT_NAME].

Context:
- What was completed in Sprint [N-1]: [SUMMARY]
- Current project state: [STATE]
- Sprint goal: [GOAL]

Generate:
1. Sprint scope (3-5 features/tasks)
2. Dev TODO list (with TDD approach)
3. QA TODO list (test scenarios)
4. Acceptance criteria for sprint completion
5. Known risks and mitigations

Format as markdown with clear sections.
```

### 18.7 DEV Agent Prompt Template

```markdown
You are the **DEV agent** for [PROJECT_NAME].

You write clean, working code that meets the requirements from the CTO's spec.

## Rules
1. Read existing code before writing new code
2. Follow patterns already in the codebase
3. Don't over-engineer — solve the current problem
4. If requirements are unclear, ASK before implementing
5. Every feature needs at least one test
6. Use TDD: write the test first, then implement to pass

## Output Format
For every task, report:
- What was implemented
- Files changed
- Tests added
- How to verify it works

## Tech Stack
[SPECIFY YOUR STACK]
```

### 18.8 QA Agent Prompt Template

```markdown
You are the **QA agent** for [PROJECT_NAME].

You verify quality through testing and bug discovery.

## Responsibilities
1. Write Playwright E2E tests for user flows
2. Verify features against acceptance criteria
3. Report bugs with steps to reproduce
4. Check edge cases and error handling
5. Verify no regressions after changes

## Bug Report Format
**Bug:** [Short description]
**Steps to Reproduce:**
1. ...
2. ...
**Expected:** [What should happen]
**Actual:** [What actually happens]
**Severity:** Critical / High / Medium / Low

## Test Checklist (per feature)
- [ ] Happy path works
- [ ] Error cases handled
- [ ] Edge cases covered
- [ ] No regressions
- [ ] Performance acceptable
```

---

## Appendix A: About the Instructor

**Avi Rabinowitz** — Product Manager & CTO
- 20+ years building products
- Domains: IoT, SaaS, Healthcare, Agentic AI
- Currently: Building AI agent architectures at SynaptixLabs
- AI Journey: ChatGPT experimentation (late 2023) → AI co-pilot (2024) → Production AI agents (2025) → AI in everything (2026)

---

## Appendix B: Glossary

| Term | Definition |
|------|-----------|
| **AI** | Artificial Intelligence — broad field of making machines mimic intelligent behavior |
| **ML** | Machine Learning — subset of AI where systems learn from data |
| **LLM** | Large Language Model — ML model trained on text to generate human-like language |
| **GenAI** | Generative AI — AI that creates new content from prompts |
| **RAG** | Retrieval-Augmented Generation — grounding LLM responses in specific documents |
| **GBU** | Good/Bad/Ugly — evaluation framework for AI output |
| **TDD** | Test-Driven Development — write tests first, then implement |
| **PRD** | Product Requirements Document — defines what to build and why |
| **CoT** | Chain-of-Thought — prompting technique for step-by-step reasoning |
| **E2E** | End-to-End testing — testing complete user flows in a real browser |
| **MVP** | Minimum Viable Product — smallest version that delivers value |
| **CI/CD** | Continuous Integration/Continuous Deployment — automated build and deploy pipeline |
| **Vibe Coding** | AI-assisted development where AI writes code and you make decisions |
| **Scaffold** | Template project structure that provides consistency and velocity |
| **Agent** | A prompt with scope and rules that gives AI a specific role |
| **Token** | A chunk of text (~¾ word) that an LLM processes; determines context window limits |
| **Context Window** | Total tokens an LLM can process at once (prompt + response combined) |
| **Temperature** | Controls AI randomness: 0 = deterministic, 1 = creative |
| **System Prompt** | Hidden instructions that define AI behavior for an entire conversation |
| **Hallucination** | When an AI confidently generates false or fabricated information |
| **Fine-tuning** | Further training an LLM on specific data (expensive, usually unnecessary) |
| **Prompt Injection** | Malicious input that attempts to override an AI's instructions |
| **MCP** | Model Context Protocol — standard for connecting AI to external tools and services |
| **IDE** | Integrated Development Environment — code editor with tools (VS Code, Windsurf) |
| **Playwright** | Browser automation framework for E2E testing |

---

## Appendix C: Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-03-18 | Initial unified knowledge base from all course materials |
| 2.0 | 2026-03-18 | Added: difficulty tags per section, worked examples (§3.6, §4.5), anti-patterns (§12), labs reference (§13), Oracle capabilities guide (§14), learning paths (§15), setup guides (§11.4-11.5), tool selection matrix (§11.3), expanded glossary (25 terms), LLM technical concepts (§2.2), case study methodology bridge (§6.5), DEV/QA agent templates (§18.7-18.8), changelog (Appendix C) |

---

*AIcademy by NEAT · Unified Knowledge Base v2.0*
*© 2026 SynaptixLabs / NEAT Applied Tech*
