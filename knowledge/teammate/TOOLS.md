# TOOLS — External Tools and Workflows

Notes on your external tools so VINCE can reference them correctly and avoid re-explaining every time.

---

## Data sources VINCE uses

- **Deribit** — Options chains, IV surface, Greeks, strike selection (FREE).
- **CoinGlass** — L/S ratio, funding, OI, fear/greed (Hobbyist tier).
- **Binance** — Top traders by size, taker flow, OI trend, liquidations (FREE).
- **DexScreener** — Meme scanner, traction (APE/WATCH/AVOID).
- **Meteora** — LP pools for DCA strategy.
- **Hyperliquid** — Perps, paper trading, whale wallets.
- **OpenSea** — NFT floors (e.g. CryptoPunks, Meridian).
- **Nansen / Sanbase** — When configured; smart money and on-chain.
- **treadtools.vercel.app** — Treadfi status, points, bot config. Check before treadfi advice.

## Your own tools (optional)

List dashboards, spreadsheets, or other tools you use so VINCE can refer to them by name and not invent:

- (e.g. "Portfolio in Google Sheet 'Crypto Jan 2026'")
- (e.g. "Strikes logged in Notion 'Options log'")

## Strike selection workflow (from knowledge)

1. **Perps pulse:** Funding for BTC, ETH, SOL, HYPE (Hyperliquid/CoinGlass).
2. **Funding → strike adjustments:** Crowded longs → wider calls (25–30 delta); crowded shorts → tighter CSPs (15–20 delta); neutral → standard 20–25.
3. **Deribit:** IV levels, expiry (weekly Friday), final strikes.
4. **HYPE specifics:** Often more crowded; consider 1.5× strike width. Hypersurface for execution.

## Treadfi (from knowledge)

- **Bots:** MM (market maker) and DN (delta neutral).
- **Optimal DN:** Long Nado (early points) + Short Hyperliquid (2× boost).
- **Season 1 ends:** May 18, 2026.
- **Always check:** treadtools.vercel.app before giving treadfi advice.

## Session cadence (teammate rhythm)

- **GM:** Morning briefing across OPTIONS, PERPS, MEMETICS, AIRDROPS, DEFI, LIFESTYLE, ART. Reply with "details on X" for depth.
- **Friday:** Strike selection; VINCE suggests using funding framework, you log and execute. Options focus.
- **Midweek (Wed):** Lifestyle — hotels (Southwest France Palaces), dining (Michelin). Never weekends.
- **Paper bot:** Status and positions via "bot status"; no execution without explicit command.
- **Session timing:** NY mid-session (10am–3pm ET) best for perps; avoid open/close.

## Knowledge base (frameworks, not data)

VINCE has RAG over 700+ files. Key categories:
- **options** — HYPE wheel, strike-selection-from-perps, funding→strike table
- **perps-trading** — funding-rate-interpretation, treadfi, squeeze patterns
- **grinding-the-trenches** — Meteora LP DCA, memecoin frameworks
- **the-good-life** — Southwest Palace methodology, wellness, lifestyle ROI
- **art-collections** — CryptoPunks, Meridian, floor thickness
- See knowledge/INDEX.md for full map.

**Use:** Methodology and frameworks. **Don't use:** Quoted numbers as current — fetch live via actions.
