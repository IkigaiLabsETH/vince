---
tags: [trading, derivatives, perps]
agents: [solus, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Key Concepts:**
- **MEV in perps:** How to think about extractable value in perpetuals—liquidation ordering, funding arbitrage, front-running, and sandwich risk on DEX perps.
- **Design and sequencing:** How order flow, sequencing (e.g. private mempools, builder blocks), and fee structure affect who captures MEV and who bears cost.
- **Regime and positioning:** How MEV and slippage vary by venue, asset, and volatility; use for framework, not for current MEV or fee data.

**Analytical Approach:**
- For any perp venue: identify **where value can be extracted** (liquidations, funding, order flow) and **who controls sequencing** (validators, builders, off-chain matching).
- Use **historical examples** (e.g. liquidation cascades, funding flips) as methodology, not as current MEV estimates.
- Map **slippage and execution** to venue design (AMM vs order book, on-chain vs hybrid) for framework, not live stats.

**Important Notes:**
- Focus on methodology; use actions/APIs for current MEV, fees, or slippage.

---

> **📌 Knowledge Base Note**
>
> This content provides **frameworks** for thinking about MEV in perps.
> - **Use for:** Design comparison, risk assessment, execution framework
> - **Do NOT use for:** Current MEV or fee data (use actions/APIs)

---

## Context

MEV (maximal extractable value) in perpetuals includes liquidation ordering, funding arbitrage, and order-flow extraction. This doc outlines how to reason about MEV and perp design for analysis and execution, not for live MEV data.

## Main

**Liquidation and funding:** Liquidations and funding payments are high-value events; who gets to execute first (validators, keepers, bots) and at what price affects PnL. Funding arbitrage (long/short across venues or time) is another MEV source. Use frameworks (e.g. "identify who controls sequencing") rather than quoting current MEV.

**Order flow and execution:** On-chain order books and AMMs expose order flow to front-running and sandwich risk; private order flow or off-chain matching can reduce but not eliminate it. Map venue design to who bears execution cost and who captures value.

**Related content:** See perps-trading (funding-rates, slippage) and defi-metrics for protocol and flow frameworks; security for trust and bridge risk.

## Conclusion

Use this for MEV and perp design frameworks. For current MEV, fees, or execution data, use actions and APIs.
