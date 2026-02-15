---
tags: [rwa, tokenization, institutional]
agents: [eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- **RWA tokenization** refers to representing ownership of off-chain assets (Treasuries, credit, real estate, commodities) as on-chain tokens with enforceable claims on the underlying.
- **Market structure** is driven by institutional demand for yield, regulatory clarity, and blockchain infrastructure maturity.
- **Chain selection** reflects trade-offs between institutional trust (Ethereum), cost (Stellar, Solana), and composability (DeFi integrations).

**Analytical Approach:**
- Track total tokenized value across asset classes separately—Treasuries, private credit, real estate, commodities have different dynamics.
- Distinguish between **permissioned** (KYC-gated) and **permissionless** (freely transferable) tokenized products—they serve different markets.
- Evaluate growth by **net new issuance**, not just price appreciation of underlying assets.

**Pattern Recognition:**
- Institutional adoption follows a pattern: Treasuries first (low risk, clear legal structure), then credit, then equities and alternatives.
- Chain dominance shifts as fee structures and institutional tooling evolve; Ethereum dominates by AUM, but multi-chain deployment is standard.

**Decision Framework:**
- When assessing RWA market state: total AUM → growth rate → asset class breakdown → chain distribution → institutional participant quality.

---

## State of RWA Tokenization (February 2026)

The tokenized RWA market has crossed **$15B+ in on-chain value** (excluding stablecoins), up from ~$5B in early 2024. Growth has been driven primarily by tokenized U.S. Treasuries, which represent the largest single category at over **$10B AUM** across 30+ products.

**Key asset classes by size:**
- **Tokenized Treasuries / money markets:** ~$10B+ — dominated by BlackRock BUIDL ($2.18B), Hashnote USYC ($1.62B), Ondo USDY ($1.29B), Franklin Templeton BENJI ($897M), Superstate USTB ($778M), WisdomTree WTGXX ($731M), Ondo OUSG ($717M)
- **Private credit:** ~$3-4B — Centrifuge, Maple, Goldfinch, Credix
- **Real estate:** ~$500M-1B — fragmented across platforms
- **Commodities (tokenized gold, etc.):** ~$1B+

**Key chains:** Ethereum remains dominant for institutional products (BUIDL, OUSG). Stellar hosts Franklin Templeton's BENJI. Solana, Mantle, Arbitrum, and Aptos see growing RWA deployments. Multi-chain is now standard—BUIDL is on 9 chains, USDY on 12.

**Institutional adoption milestones:**
- BlackRock's BUIDL became the largest tokenized fund, crossing $2B in early 2025
- ChinaAMC (CUMIU) brought $544M from Hong Kong institutional capital
- Major banks (JPMorgan, CACEIS, State Street) now serve as custodians or administrators for on-chain funds
- SEC-registered mutual funds (WisdomTree, Fidelity FDIT) are issuing on-chain shares

**What this means:** RWA tokenization has moved from experiment to institutional infrastructure. The question is no longer "will it happen" but "how fast does it scale beyond Treasuries into credit, equities, and alternatives."

---

> **📌 Knowledge Base Note**
> This content provides a **structural overview** of the RWA market.
> - **Use for:** Market context, trend analysis, institutional landscape
> - **Do NOT use for:** Exact current AUM figures (use actions/APIs for live data)

*Last updated: 2026-02-15*
