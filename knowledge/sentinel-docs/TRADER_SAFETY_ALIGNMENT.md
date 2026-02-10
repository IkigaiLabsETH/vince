# Trader example vs plugin-vince: safety alignment

Brief comparison of **elizaOS/examples/trader** (`@elizaos/plugin-auto-trader`) safety features with **plugin-vince** paper bot. See [ELIZAOS_EXAMPLES_PRIORITIES.md](ELIZAOS_EXAMPLES_PRIORITIES.md) (Priority 1) for full context.

## Three-bullet summary

- **plugin-vince already has:** Stop-loss (fixed and trailing, ATR/ML-based in vincePaperTrading and vincePositionManager), position size limits, max leverage, session-based confidence/size filters, circuit breakers (max daily drawdown, goal-tracker), and risk-per-trade caps. Paper bot uses Hyperliquid perps (no token-age or honeypot in scope for perp-only flow).
- **plugin-vince does not have:** Honeypot detection, RugCheck (or similar) integration, token-age filter, or minimum liquidity/volume gates before opening a position. The trader example uses these for **spot/meme** tokens on Solana; our paper bot is perp-focused, so the gap matters if we ever add spot/meme paper trades or a live path.
- **Recommendation:** For any future live or "live-ready" path, or if we add spot/meme paper trading, add a short safety checklist: (1) RugCheck or equivalent before trading a token, (2) minimum liquidity/volume threshold, (3) token-age filter. Document in sentinel-docs and consider adopting patterns from plugin-auto-trader (see [trader/README.md](https://github.com/elizaOS/examples/blob/main/trader/README.md)); for perp-only paper bot, optional enhancement is a "min volume" or "min OI" gate in the signal aggregator so we avoid illiquid perp markets.
