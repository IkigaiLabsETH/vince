---
tags: [stablecoins, defi]
agents: [otaku, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Key Concepts:**
- **Reserve quality and composition:** How to think about backing (cash, Treasuries, other assets); redemption mechanics and liquidity; issuer transparency and attestations.
- **Depeg drivers:** Supply/demand shocks, redemption runs, collateral volatility, and regulatory or legal events that can break the peg.
- **Design spectrum:** Fully reserved (e.g. USDC) vs algorithmic or hybrid; each implies different failure modes and regulatory treatment.

**Analytical Approach:**
- For any stablecoin: identify **what backs the peg**, **who can redeem**, and **what could break the peg** (run on redemptions, collateral drop, freeze, or regulatory action).
- Use **reserve reports and attestations** as inputs to a framework (composition, liquidity, concentration), not as one-line answers; numbers in knowledge are illustrative.
- Map **regulatory and legal risk** (e.g. reserve seizure, issuer sanction) as a first-order depeg driver where relevant.

**Pattern Recognition:**
- Historical depegs (e.g. USDC March 2023, UST) illustrate run dynamics, collateral risk, and contagion; use for methodology, not for current peg status.
- Stablecoin flows (mint/burn, cross-chain) are leading indicators for risk-on/risk-off; use defi-metrics and macro content where flow frameworks are discussed.

**Important Notes:**
- Focus on methodology and how to interpret reserve and flow data; not on current reserve or peg levels (use actions/APIs for that).

---

> **📌 Knowledge Base Note**
>
> This content provides **frameworks** for thinking about stablecoin design and risk.
> - **Use for:** Reserve analysis, depeg drivers, design comparison
> - **Do NOT use for:** Current peg, reserve, or flow data (use actions/APIs)

---

## Context

Stablecoins sit at the intersection of payments, DeFi, and regulation. Frameworks here focus on how to reason about reserve quality, peg stability, and depeg scenarios, not on supplying live reserve or flow numbers.

## Main

**Reserve quality:** Assess backing by type (cash, Treasuries, other) and by liquidity and concentration. Understand redemption mechanics—who can redeem, at what delay, and whether there are gates or fees. Use attestations and reports as inputs to this framework; treat specific numbers in knowledge as illustrative.

**Depeg drivers:** Supply/demand imbalance (mass redemptions, mint freeze), collateral value drop (e.g. Treasury selloff), operational or legal events (freeze, sanction, court order). Combine with narrative and flow data (e.g. Tether flows in defi-metrics or macro) for regime assessment.

**Design spectrum:** Fully reserved fiat-backed vs algorithmic or hybrid; each implies different trust assumptions and failure modes. Regulation (e.g. US stablecoin bills, MiCA) may constrain design; use regulation knowledge for policy framework.

**Related content:** Defi-metrics and macro-economy contain essays that reference stablecoins and flows; use for methodology and narrative, not for current metrics.

## Conclusion

Use stablecoin knowledge for reserve and depeg frameworks. For current peg, reserve, or flow data, use actions and APIs.
