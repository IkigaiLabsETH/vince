---
tags: [rwa, tokenization, institutional]
agents: [eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- **RWA protocol evaluation** requires analyzing both the on-chain token layer AND the off-chain legal/custody layer—most risk lives off-chain.
- **Legal enforceability** is the foundation: a token is only as good as the legal claim it represents and the jurisdiction that enforces it.
- **Redemption mechanics** determine whether a tokenized asset is truly liquid or just an illiquid wrapper with on-chain transferability.

**Analytical Approach:**
- Evaluate RWA protocols across six dimensions: **legal structure, custody, oracle/NAV, redemption, compliance, and composability**.
- Weight dimensions by use case: institutional allocation prioritizes legal + custody; DeFi integration prioritizes composability + redemption speed.
- Red flags: unregulated jurisdictions with no legal recourse, self-custody of underlying assets, opaque NAV calculations, redemption gates.

**Pattern Recognition:**
- Higher-quality products tend to: use regulated custodians (BNY Mellon, State Street), register with securities regulators (SEC, MAS, SFC), and offer T+0 to T+1 redemption.
- Fee structure reveals competitive pressure: management fees converging to 0.15-0.25%, entry/exit fees going to zero.
- Multi-chain deployment correlates with product maturity and institutional backing.

**Decision Framework:**
- Tier 1 (highest confidence): SEC-registered or equivalent, regulated custodian, audited NAV, instant redemption, multiple chains.
- Tier 2: Reg D/Reg S exemption, reputable custodian, daily NAV, T+1 redemption.
- Tier 3 (exercise caution): Unregulated jurisdiction, self-custody or opaque custody, infrequent NAV updates, gated redemption.

---

## The Six-Dimension RWA Evaluation Framework

### 1. Legal Structure
- **What legal entity holds the underlying asset?** (SPV, fund, trust, SPC)
- **What jurisdiction?** (BVI, Cayman, U.S., Singapore, Bermuda)
- **What regulatory exemption or registration?** (Reg D, Reg S, Form N-1A, MAS, UCITS)
- **What happens in bankruptcy?** Are assets ring-fenced from issuer insolvency?
- Best-in-class: SEC-registered funds (BENJI, WTGXX) or well-regulated SPVs with clear bankruptcy remoteness.

### 2. Custody
- **Who holds the underlying assets?** Name the custodian.
- **Is the custodian regulated and insured?** (BNY Mellon, CACEIS, JPMorgan > unnamed offshore entity)
- **Is there segregation of assets?** Client assets must be separate from issuer assets.
- Red flag: issuer self-custodies or uses an unregulated entity.

### 3. Oracle / NAV Methodology
- **How is NAV calculated?** Mark-to-market, amortized cost, or hybrid?
- **How often is NAV updated?** Real-time, daily, weekly?
- **Who calculates NAV?** Independent fund administrator vs. self-reported?
- **Is there an on-chain oracle?** How does on-chain price reflect off-chain NAV?

### 4. Redemption Mechanics
- **What is the redemption timeline?** Instant, T+0, T+1, T+3, or gated?
- **What is the redemption currency?** USDC, USD wire, other?
- **Are there redemption fees or gates?** Any conditions that limit withdrawal?
- **What is the minimum redemption amount?**
- Best-in-class: instant on-chain redemption to USDC (e.g., OUSG via BUIDL liquidity).

### 5. Compliance / Investor Eligibility
- **Who can hold the token?** KYC required? Whitelisted addresses only?
- **What investor qualification?** Qualified purchaser, accredited, retail?
- **Are transfers restricted?** Can tokens be freely transferred or only to whitelisted addresses?
- **AML/sanctions screening?** Ongoing monitoring or one-time onboarding?

### 6. DeFi Composability
- **How many chains is the token deployed on?**
- **Can the token be used as collateral in lending protocols?**
- **Is the token transferable on secondary markets (DEXs)?**
- **Does the token standard support DeFi integration (ERC-20, rebasing, etc.)?**
- Composability adds value but may conflict with compliance requirements.

---

> **📌 Knowledge Base Note**
> - **Use for:** Systematic evaluation of any RWA product or protocol
> - **Do NOT use for:** Product recommendations—apply the framework to current data from actions/APIs

*Last updated: 2026-02-15*
