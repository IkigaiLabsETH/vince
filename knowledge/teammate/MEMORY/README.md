# MEMORY — Daily Logs (Optional)

VINCE loads the **most recent 3** `*.md` files from this directory every session. Use for daily logs, context notes, or session summaries that persist across conversations.

## Format

Create markdown files with descriptive names. Examples:

- `2026-02-03-gm-followup.md` — Notes from morning briefing
- `2026-02-02-treadfi-status.md` — Airdrop farming status
- `2026-02-01-strikes-logged.md` — Friday strike selections executed

## What to include

- **Decisions made:** "Logged BTC $105K CC, ETH $3.1K put for this week"
- **Context for next session:** "Watching MOLT — LP pool available, waiting for pullback"
- **Constraints or pivots:** "Skipping new memes this week — focused on treadfi"
- **Lifestyle notes:** "Hotel Wed at Biarritz — skip dining suggestions"

## Order

Files are loaded by **modification time** (newest first). The 3 most recently modified files are injected into context.

**Tip:** Keep files small and focused. One topic per file works best.
