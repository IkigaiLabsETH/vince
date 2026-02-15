---
tags: [stablecoins, defi]
agents: [otaku, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- Regulatory arbitrage: issuers choose jurisdictions based on reserve rules, licensing costs, and enforcement posture
- Reserve requirements: 1:1 backing debate (cash only vs. T-bills vs. broader assets), rehypothecation ban
- Yield-bearing stablecoins as unregistered securities — the SEC/CFTC boundary
- MiCA as first comprehensive framework; US bills (GENIUS Act, STABLE Act) as catch-up
- DeFi's regulatory surface area: protocol vs. frontend vs. issuer

**Analytical Approach:**
- Map each jurisdiction's stance on three axes: reserve quality mandates, licensing barriers, yield treatment
- Track bill progression through committees — text changes between drafts reveal lobbying pressure points
- Evaluate impact on stablecoin market cap distribution: regulation-friendly issuers gain share post-clarity
- Distinguish between issuer-level regulation (Circle, Tether) and protocol-level risk (DeFi composability)

**Pattern Recognition:**
- Regulatory announcements cause temporary market cap shifts: USDC grew post-MiCA compliance, Tether delisted from EU exchanges
- "Yield ban" proposals correlate with TradFi lobbying — banks want deposit competition eliminated
- Offshore issuers gain share during hostile US regulatory periods, lose share when clarity emerges
- State-level money transmitter licenses (BitLicense, etc.) create moats for compliant issuers

**Decision Framework:**
- For portfolio positioning: overweight regulated stablecoins when legislation approaches passage
- For DeFi exposure: assess whether yield-bearing stablecoins face reclassification risk in your jurisdiction
- For geographic diversification: hold both MiCA-compliant and offshore stablecoins
- Monitor: committee votes, amendment text on reserve composition, and yield/interest provisions

---

## The US Stablecoin Bill Landscape

Two competing bills have defined the US debate. The **GENIUS Act** (Guiding and Establishing National Innovation for US Stablecoins), led by Senator Hagerty, passed the Senate Banking Committee in early 2025. It establishes a federal licensing framework for "payment stablecoin" issuers, mandates 1:1 reserves in cash, short-term Treasuries, or central bank deposits, and requires monthly reserve attestations. Crucially, it permits state-chartered issuers under $10B to operate under state regulation, creating a dual-track system. The **STABLE Act** in the House takes a similar approach but with stricter provisions around foreign issuer compliance and a two-year moratorium on new algorithmic stablecoins.

Both bills deliberately avoid classifying stablecoins as securities — a major win for the industry. However, neither bill explicitly permits stablecoin issuers to pay yield to holders, which creates a gray zone for interest-bearing designs like Mountain's USDM or Usual's USD0.

The yield question is the real battleground. Banks argue yield-bearing stablecoins are de facto deposit products that should require banking charters. Crypto advocates counter that T-bill-backed tokens are more like money market funds. The resolution will reshape $200B+ in stablecoin market cap.

## MiCA in Europe

The EU's Markets in Crypto-Assets regulation went live for stablecoins in June 2024, making it the first major jurisdiction with comprehensive rules. Key requirements: issuers of "e-money tokens" (stablecoins pegged to a single fiat currency) must obtain an e-money license, hold reserves in EU-regulated bank deposits (at least 30% for significant tokens, 60% for very large ones), and cannot pay interest to holders.

The no-yield rule is MiCA's most contentious provision. It effectively forces stablecoin issuers to capture all reserve yield themselves — a windfall for Circle and compliant issuers, but a restriction that makes EU stablecoins less competitive. Tether's EURT was discontinued rather than comply; USDT faced delistings on EU exchanges like Coinbase Europe, pushing users toward USDC (which obtained MiCA compliance via its French entity).

The result: MiCA created a moat for compliant issuers while fragmenting the global stablecoin market. EU users increasingly use USDC; offshore users stick with USDT.

## What This Means for DeFi

DeFi protocols face a layered problem. Issuer-level regulation (who can mint stablecoins) is being addressed by these bills. But protocol-level questions remain open: Can a lending protocol offer USDC yield without a license? Does a DEX listing a yield-bearing stablecoin become a securities venue?

The pragmatic approach: DeFi frontends are the regulatory chokepoint. Protocols will increasingly geo-fence UIs while keeping smart contracts permissionless. The stablecoins that survive will be the ones that thread the needle — compliant enough for institutional adoption, composable enough for DeFi utility.

Watch for: final passage timeline of GENIUS/STABLE (likely mid-2025 to early 2026), any yield-ban amendments, and whether Tether pursues US licensing or doubles down on offshore dominance.

*Last updated: 2026-02-15*
