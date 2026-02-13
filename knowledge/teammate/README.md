# Teammate Context — Loaded Every Session (ElizaOS)

VINCE reads these files whenever state is composed (every response). It doesn’t “learn” like a human; it **loads context like software**. The more specific your files, the less you explain every time.

**Stop prompting. Start feeding your agent data it can use to guide decisions.**

**VINCE project:** Unified data-intelligence agent (options, perps, memes, lifestyle, art) with a self-improving paper trading bot. Primary command = **ALOHA** (daily vibe + PERPS + OPTIONS + should we trade). Teammate files tune the agent that runs `@elizaos/plugin-vince` — so SOUL/USER/TOOLS/MEMORY are in project context (ALOHA, bot, treadfi, knowledge dirs, Eliza vs VINCE).

## ElizaOS alignment

- **Identity** (who VINCE is) is defined by the **Character** in `src/agents/vince.ts` (name, bio, system, style). The teammate provider does not load IDENTITY.md so the Character remains the single source of truth.
- **USER, SOUL, TOOLS, MEMORY** are loaded by the **teammate context provider** only (not in RAG), so they are injected every turn without duplication.

## Skeleton (pre-installed)

| File | Purpose |
|------|--------|
| **IDENTITY.md** | Optional reference only; agent identity = Character in code |
| **USER.md** | Who you are — name, timezone, preferences, key people, priorities, what's holding you back. Depth = relevance. Goes stale fastest; 5 min evening updates help. (loaded every session) |
| **SOUL.md** | How the agent thinks and communicates: tone, push-back, negative constraints, operational boundaries (external content, confirmation, ambiguity). (loaded every session) |
| **TOOLS.md** | Data sources, your tools, session cadence, knowledge base context (loaded every session) |
| **AGENTS.md** | Optional. Operating rules, autonomy, what needs approval, boundaries (OpenClaw parity; loaded when present) |
| **HEARTBEAT.md** | Optional. Goals, review rhythm, active projects (OpenClaw parity; loaded when present) |
| **MEMORY/** | **LONG-TERM.md** (curated persistent context, loaded every session) + daily logs (last 2 by mtime). See MEMORY/README.md. |

**Alignment:** SOUL defines how the agent communicates; USER defines the context; MEMORY defines what persists. The three need to align. This pattern (markdown on disk) is the same control surface used by serious agent systems (custom GPTs, Claude projects, Cursor rules). Getting good at these files is a transferable skill.

## Teammate vs Chatbot

The provider injects a preamble that frames this as **teammate mode** — the agent should anticipate, remember USER context, match rhythm (ALOHA/GM morning, Friday strikes, Wed lifestyle), and distinguish knowledge (frameworks) from live data (actions). See SOUL.md for full guidelines, including push-back on requests and operational boundaries (external content, confirmation).

**Fine-tuned from knowledge/:** USER, TOOLS, and MEMORY example pull context from options (strike-selection, HYPE wheel), perps-trading (treadfi, funding), the-good-life (Palaces, wellness, lifestyle), and grinding-the-trenches. Edit to match your setup.

## Knowledge alignment

Teammate context (USER, SOUL, TOOLS, MEMORY) is **injected every turn**; the **knowledge base** is queried by category via RAG (options, perps-trading, the-good-life, etc.). Both follow the same principle:

- **Knowledge = methodologies and frameworks** — how to think, not current numbers. See **[knowledge/KNOWLEDGE-USAGE-GUIDELINES.md](../KNOWLEDGE-USAGE-GUIDELINES.md)**.
- **Actions/APIs = current data** — prices, funding, OI, order flow. VINCE fetches live; don't quote knowledge numbers as current.
- **Usage notes** (from each knowledge category README): Focus on methodologies and frameworks; numbers in knowledge may be outdated; use actions for current data.

Where to look: **knowledge/README.md** (directory map), **knowledge/options/README.md**, **perps-trading/**, **the-good-life/**, **grinding-the-trenches/** (Key Files, Frameworks & Methodologies, Related Categories). SOUL and TOOLS reference these; USER can list which categories matter for this human.

## Optional (add as you go)

- **Brand voice profile** — How you write (style, length, tone)
- **Email / comms style** — Sign-offs, formatting, tone
- **Exec admin playbook** — Calendar rules, travel preferences, scheduling logic
- **Key contacts** — Who they are, how you know them, context for replies
- **Skills / workflows** — Repeating workflows (research, thumbnails, content)

## How it works

The **teammate context provider** (plugin-vince) reads USER.md, SOUL.md, TOOLS.md, then MEMORY/LONG-TERM.md (if present) and the 2 most recent daily log *.md files in MEMORY/ whenever state is composed. That content is injected into the agent’s context so:

1. You don’t re-explain who you are or how you work.
2. VINCE stays within tone and boundaries (SOUL).
3. Tool and contact context is always available.
4. Recent session context (MEMORY) persists across conversations.

Edit the markdown files; changes are used on the next message (provider reads from disk each time; no restart needed).
