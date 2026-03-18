# AIcademy Oracle — AI Knowledge Companion

> **Your team's AI-powered learning companion for the AIcademy by NEAT course series.**
> Covers: AI Fundamentals, Prompt Engineering, Vibe Coding, AI Product Management, and Agent Architecture.

---

## What Is This?

The **AIcademy Oracle** is a pre-configured AI assistant that knows the entire AIcademy course library. It can:

- **Explain** any course topic with examples and source references
- **Create** deliverables — PDFs, presentations, cheat sheets, interactive pages
- **Guide** you through projects using the scaffold methodology
- **Help** you write PRDs, personas, user stories, and agent prompts

It runs inside **Claude Projects**, **Google Gemini Gems**, or **ChatGPT Projects** — whichever your team uses.

---

## Repo Structure

```
instructor-agent/
├── README.md                           ← You are here (setup instructions)
├── SYSTEM_PROMPT.md                    ← The Oracle's system prompt (paste into your AI platform)
├── NEWS_AND_UPDATES.md                 ← Active announcements (update anytime)
├── knowledge/                          ← Upload ALL files in this folder as project knowledge
│   ├── AICADEMY_UNIFIED_KNOWLEDGE_BASE.md   ← Core knowledge base (all course content)
│   └── COURSE_KNOWLEDGE_INDEX.md            ← Topic cross-reference index
├── examples/                           ← Real project examples from the course
│   ├── 01_CTO_Agent.md                      ← Complete CTO agent prompt (The Arcane Vault)
│   └── 03_Arcane_UI_Kit_Spec.md             ← Design system spec example
└── course-materials/                   ← Original slide decks (add your PDFs here)
    └── .gitkeep
```

---

## Quick Setup (Pick Your Platform)

### Option A: Claude Projects (Recommended)

Claude Projects give you the best experience — system prompts + uploaded knowledge + persistent context.

**Time:** ~5 minutes

| Step | Action |
|------|--------|
| **1** | Go to [claude.ai](https://claude.ai) → **Projects** → **New Project** |
| **2** | **Name:** `AIcademy Oracle` |
| **3** | **Project Instructions:** Open `SYSTEM_PROMPT.md` from this repo. Copy the entire contents. Paste into the "Project Instructions" field. |
| **4** | **Project Knowledge:** Click "Add content" → Upload **all files** from the `knowledge/` folder: `AICADEMY_UNIFIED_KNOWLEDGE_BASE.md` and `COURSE_KNOWLEDGE_INDEX.md` |
| **5** | **(Optional) Add examples:** Also upload the files from `examples/` — these give the Oracle real project context to reference |
| **6** | **(Optional) Add course PDFs:** If you have the original slide decks (`AI_for_Product_Managers.pdf`, `Webinar2_Vibe_Coding_101_1.pdf`), upload those too for maximum coverage |
| **7** | **Add news:** Upload `NEWS_AND_UPDATES.md` as project knowledge |
| **8** | **Test it:** Start a new conversation in the project. Say "Hi" — the Oracle should greet you, surface any active news, and offer structured options. |

**Sharing with your team:**
- Claude Projects can be shared with team members on Claude Team/Enterprise plans
- On Claude Pro: each team member creates their own project using the same files

---

### Option B: Google Gemini Gems

Gemini Gems let you create custom AI assistants with instructions and uploaded files.

**Time:** ~5 minutes

| Step | Action |
|------|--------|
| **1** | Go to [gemini.google.com](https://gemini.google.com) → **Gem manager** → **New Gem** |
| **2** | **Name:** `AIcademy Oracle` |
| **3** | **Instructions:** Open `SYSTEM_PROMPT.md`. Copy everything. Paste into the Gem's instructions field. |
| **4** | **Uploaded files:** Upload the files from `knowledge/` folder. Gemini Gems support file uploads for grounding. |
| **5** | **(Optional)** Upload `examples/` files and course PDFs if available. |
| **6** | Upload `NEWS_AND_UPDATES.md` |
| **7** | **Save** the Gem. |
| **8** | **Test:** Open the Gem and say "Hi". |

**Platform notes:**
- Gemini Gems have a shorter system prompt limit than Claude. If the full `SYSTEM_PROMPT.md` is too long, use the **condensed version** below (§ Condensed Prompt).
- File upload support varies by Gemini plan (Advanced recommended).
- Gems can be shared via link with your Google Workspace.

---

### Option C: ChatGPT Projects

ChatGPT Projects (available on Plus/Team/Enterprise) support custom instructions and file uploads.

**Time:** ~5 minutes

| Step | Action |
|------|--------|
| **1** | Go to [chatgpt.com](https://chatgpt.com) → **Projects** (left sidebar) → **New Project** |
| **2** | **Name:** `AIcademy Oracle` |
| **3** | **Instructions:** Open `SYSTEM_PROMPT.md`. Copy everything. Paste into the project's "Instructions" field. |
| **4** | **Files:** Click "Add files" → Upload all files from `knowledge/` folder |
| **5** | **(Optional)** Upload `examples/` files and course PDFs |
| **6** | Upload `NEWS_AND_UPDATES.md` |
| **7** | **Test:** Start a chat in the project and say "Hi". |

**Platform notes:**
- ChatGPT Projects have an instruction length limit. If the prompt is too long, use the **condensed version** (§ Condensed Prompt).
- Files are indexed automatically and available to all chats in the project.
- Projects can be shared with team members on Team/Enterprise plans.

---

## Condensed System Prompt (For Gemini & ChatGPT)

If your platform has a shorter prompt limit, use this condensed version instead of the full `SYSTEM_PROMPT.md`:

```
You are the AIcademy Oracle — the knowledge companion for the AIcademy by NEAT 
course series on AI, Prompt Engineering, Vibe Coding, and AI Product Management.

Created by: Avi Rabinowitz, SynaptixLabs / NEAT Applied Tech

ROLE: Answer, explain, create, and guide. You are an Oracle, not a teacher 
or examiner. You don't quiz or test — you illuminate.

PERSONALITY: Authoritative, warm, direct, practical-first. You KNOW the 
course material. Explain with clarity and examples.

BEHAVIORS:
1. At conversation start, check NEWS_AND_UPDATES.md silently. Surface [ACTIVE] 
   items. Ignore [EXPIRED]. Mention [PINNED] when relevant.
2. After every answer, offer: create a deliverable (PDF/slides/cheat sheet), 
   go deeper, explore related topic, or apply to their project.
3. Detect student skill level from vocabulary and adapt:
   - Beginner → analogies, no jargon, step-by-step
   - Intermediate → practical focus, tool names, specific slides
   - Advanced → technical depth, architecture patterns, skip basics
4. Reference specific sessions and slides from the knowledge base.
5. If something isn't in the knowledge base, say so. Offer general 
   knowledge clearly labeled as supplementary.

HEBREW: If student writes in Hebrew, respond in Hebrew. Keep technical 
terms in English (LLM, prompt, agent, RAG, TDD, etc.). Code stays in English.

KNOWLEDGE: All course content is in AICADEMY_UNIFIED_KNOWLEDGE_BASE.md. 
Consult it for accuracy. Cross-reference with COURSE_KNOWLEDGE_INDEX.md.
```

---

## How Updates Work

The Oracle stays current through two mechanisms:

### 1. News & Announcements (`NEWS_AND_UPDATES.md`)

Edit this file to push announcements to all students:

```markdown
### [ACTIVE] New Workshop Announced
**date: 2026-06-30**
The next AIcademy workshop on "Building AI Agents with MCP" is scheduled 
for June 15. Registration is open.
```

**Tags:**
| Tag | Behavior |
|-----|----------|
| `[ACTIVE]` | Oracle surfaces this to students at conversation start |
| `[EXPIRED]` | Oracle ignores completely |
| `[PINNED]` | Oracle mentions only when relevant to student's topic |

**Date field:** Items with `date: YYYY-MM-DD` in the past are auto-treated as expired.

**To update:** Edit the file and re-upload to your project. New conversations will see the change immediately.

### 2. New Knowledge Files (`.md` files)

To add new course content:

1. Create a new `.md` file with the content (e.g., `Session_4_MCP_Servers.md`)
2. Upload it to your project's knowledge/files
3. (Optional) Update `COURSE_KNOWLEDGE_INDEX.md` with new topic cross-references
4. The Oracle will automatically reference the new content in answers

---

## Verifying Your Setup

After setup, test with these prompts:

| Test | Expected Behavior |
|------|-------------------|
| "Hi" | Warm greeting + active news + structured options |
| "What is vibe coding?" | Direct answer + source reference (Vibe Coding 101) + offer to go deeper |
| "Explain the GBU framework" | 3-part explanation + 6 criteria + worked example + offer to create cheat sheet |
| "Help me write a CTO agent prompt" | Asks about your project, then generates from template |
| "What can you do?" | Lists capabilities: explain, create, guide, practice |
| "מה זה prompt engineering?" | Responds in Hebrew, keeps technical terms in English |

If any test fails, check that:
1. The system prompt was pasted completely
2. All knowledge files were uploaded
3. You're in the correct project/gem (not a general chat)

---

## Troubleshooting

| Problem | Cause | Fix |
|---------|-------|-----|
| Oracle gives generic answers without course references | Knowledge files not uploaded | Re-upload all files from `knowledge/` |
| Oracle doesn't mention news | `NEWS_AND_UPDATES.md` not uploaded or all items expired | Check file is uploaded and has `[ACTIVE]` items with future dates |
| System prompt too long for Gemini/ChatGPT | Platform instruction limit | Use the condensed prompt (§ Condensed Prompt) |
| Oracle responds in English to Hebrew | System prompt missing Hebrew rules | Ensure full SYSTEM_PROMPT.md was pasted (Section 9) |
| Oracle quizzes or tests the student | System prompt incomplete | Re-paste — the "Oracle, not examiner" rule is in Section 0 |

---

## Platform Comparison

| Feature | Claude Projects | Gemini Gems | ChatGPT Projects |
|---------|----------------|-------------|-----------------|
| System prompt length | Very long (recommended) | Shorter limit | Medium limit |
| File upload | Yes (many formats) | Yes (varies by plan) | Yes (many formats) |
| PDF upload | Yes | Yes (Advanced plan) | Yes |
| Team sharing | Team/Enterprise plans | Google Workspace | Team/Enterprise plans |
| Artifact creation | Yes (code, HTML, React) | Limited | Yes (code, canvas) |
| Best for | Full Oracle experience | Teams on Google Workspace | Teams on ChatGPT |

**Recommendation:** Use Claude Projects if you have the option. The full system prompt + all knowledge files + artifact creation makes it the most complete experience.

---

## Contributing

To add new course sessions or update content:

1. Fork this repo
2. Add/edit files in `knowledge/` or `examples/`
3. Update `NEWS_AND_UPDATES.md` for announcements
4. Submit a PR with a description of what changed
5. After merge, re-upload changed files to your AI platform

---

## Resources

| Resource | Link |
|----------|------|
| AIcademy Scaffold Template | [github.com/AIcademy-by-NEAT](https://github.com/AIcademy-by-NEAT) |
| Claude Projects | [claude.ai](https://claude.ai) |
| Gemini Gems | [gemini.google.com](https://gemini.google.com) |
| ChatGPT Projects | [chatgpt.com](https://chatgpt.com) |

---

*AIcademy by NEAT · Oracle Setup Guide v2.0*
*© 2026 SynaptixLabs / NEAT Applied Tech*
