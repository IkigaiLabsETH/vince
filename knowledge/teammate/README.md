# Teammate Context — Loaded Every Session (ElizaOS)

VINCE reads these files whenever state is composed (every response). It doesn’t “learn” like a human; it **loads context like software**. The more specific your files, the less you explain every time.

**Stop prompting. Start feeding your agent data it can use to guide decisions.**

## ElizaOS alignment

- **Identity** (who VINCE is) is defined by the **Character** in `src/agents/vince.ts` (name, bio, system, style). The teammate provider does not load IDENTITY.md so the Character remains the single source of truth.
- **USER, SOUL, TOOLS, MEMORY** are loaded by the **teammate context provider** only (not in RAG), so they are injected every turn without duplication.

## Skeleton (pre-installed)

| File | Purpose |
|------|--------|
| **IDENTITY.md** | Optional reference only; agent identity = Character in code |
| **USER.md** | Who you are — name, timezone, preferences, what VINCE should anticipate (loaded every session) |
| **SOUL.md** | Tone, boundaries, teammate behaviors, knowledge vs live data (loaded every session) |
| **TOOLS.md** | Data sources, your tools, session cadence, knowledge base context (loaded every session) |
| **MEMORY/** | Daily logs you or VINCE write (optional; last 3 loaded by mtime) |

## Teammate vs Chatbot

The provider injects a preamble that frames this as **teammate mode** — the agent should anticipate, remember USER context, match rhythm (GM, Friday, midweek), and distinguish knowledge (frameworks) from live data (actions). See SOUL.md for full guidelines.

**Fine-tuned from knowledge/:** USER, TOOLS, and MEMORY example pull context from options (strike-selection, HYPE wheel), perps-trading (treadfi, funding), the-good-life (Palaces, wellness, lifestyle), and grinding-the-trenches. Edit to match your setup.

## Optional (add as you go)

- **Brand voice profile** — How you write (style, length, tone)
- **Email / comms style** — Sign-offs, formatting, tone
- **Exec admin playbook** — Calendar rules, travel preferences, scheduling logic
- **Key contacts** — Who they are, how you know them, context for replies
- **Skills / workflows** — Repeating workflows (research, thumbnails, content)

## How it works

The **teammate context provider** (plugin-vince) reads USER.md, SOUL.md, TOOLS.md, and the most recent 3 MEMORY/*.md (excluding README.md) whenever state is composed. That content is injected into the agent’s context so:

1. You don’t re-explain who you are or how you work.
2. VINCE stays within tone and boundaries (SOUL).
3. Tool and contact context is always available.
4. Recent session context (MEMORY) persists across conversations.

Edit the markdown files; changes are used on the next message (provider reads from disk each time; no restart needed).
