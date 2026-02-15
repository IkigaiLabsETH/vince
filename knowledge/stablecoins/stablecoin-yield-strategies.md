## Methodology & Framework

**Core Concepts:**
- All stablecoin yield comes from someone paying to borrow, trade, or use those dollars
- Risk/reward spectrum: lending (low) → LP (medium) → leveraged strategies (high)
- "Real yield" vs "token emission yield" — sustainability test
- The yield source determines the risk profile

**Analytical Approach:**
- Always ask: "Who is the borrower and why are they paying this rate?"
- If you can't identify the yield source, you ARE the yield (or it's unsustainable emissions)
- Compare yields to risk-free rate (US T-bills) — excess above that = risk premium you're being paid for something
- Sustainable yield ≈ T-bill rate + modest DeFi premium (1-3%); anything above needs justification

**Pattern Recognition:**
- Yield compression during bear markets (less borrowing demand)
- Yield spikes during bull markets (leveraged longs pay to borrow stables)
- New protocol yields start high (emissions) then decay to sustainable levels
- "Too good to be true" yields (>20% on stables) almost always have hidden risks

**Decision Framework:**
- <5% APY: Likely sustainable, suitable for core holdings (lending, T-bill backed)
- 5-10% APY: Moderate risk, verify yield source (LP fees, basis trade)
- 10-20% APY: Elevated risk, likely involves IL, smart contract risk, or leverage
- >20% APY: Almost certainly unsustainable or extremely high risk — proceed with extreme caution

---

## Where Stablecoin Yield Comes From

### 1. Lending (3-8% APY typical)
**Source:** Borrowers pay interest to borrow your stablecoins (for leverage, shorting, or working capital).
**Platforms:** Aave, Compound, Morpho, Spark, Fluid
**Risk:** Smart contract risk, utilization spikes (can't withdraw), borrower insolvency (mitigated by overcollateralization)
**Assessment:** Most transparent yield source. Rates fluctuate with market demand — high during bull runs, low during bears.

### 2. Liquidity Provision (5-15% APY typical)
**Source:** Trading fees from DEX swaps + potential token emissions
**Platforms:** Curve, Uniswap, Aerodrome, Velodrome
**Key pools:** USDC/USDT, USDC/DAI (stable-stable = low IL), stablecoin/ETH (higher IL risk)
**Risk:** Impermanent loss (minimal for stable-stable pairs), smart contract risk, emission dependency
**Assessment:** Stable-stable LP is one of the best risk-adjusted yields. Volatile pair LP introduces IL that often exceeds fee income.

### 3. RWA-Backed Yield (4-6% APY typical)
**Source:** US Treasury yields passed through to stablecoin holders
**Examples:** MakerDAO's DSR (DAI Savings Rate), Mountain USDM, Ondo USDY, Usual USD0
**Risk:** Regulatory (may be classified as securities), smart contract risk, issuer risk
**Assessment:** Most "natural" yield — you're essentially holding T-bills via DeFi rails. The risk is regulatory classification and whether the protocol faithfully passes through yield.

### 4. Basis Trade / Delta-Neutral (8-25% APY, variable)
**Source:** Funding rate differential between spot and perpetual futures
**Examples:** Ethena USDe (holds stETH + short ETH perps, collects funding)
**Risk:** Negative funding periods (strategy loses money), exchange counterparty risk, smart contract risk, liquidation risk in extreme moves
**Assessment:** Historically positive funding rates make this viable, but NOT risk-free. Extended bear markets with negative funding can erode principal. Ethena has reserves to buffer but they're finite.

### 5. Points/Emission Farming (variable, often >20%)
**Source:** Protocol token emissions or points programs to attract TVL
**Examples:** Various new protocols offering boosted yields
**Risk:** Token dumps, rug pulls, unsustainable tokenomics, opportunity cost
**Assessment:** These are marketing budgets disguised as yield. Farm and dump or avoid — don't mistake them for sustainable income.

## Current Landscape (Early 2025 Context)

**Risk-free rate context:** US T-bills yielding ~4.25-4.5%. Any stablecoin yield below this has negative risk-adjusted returns unless you value DeFi-native properties (permissionless, composable, no KYC).

**Best risk-adjusted options:**
1. **Sky (MakerDAO) DSR:** ~5-8% on DAI/USDS, backed by T-bills + DeFi lending revenue
2. **Morpho/Aave lending:** ~3-7% depending on market conditions, battle-tested
3. **Curve stable-stable LP:** ~3-8% with minimal IL, plus CRV emissions
4. **Ethena sUSDe:** ~10-25% variable, higher risk but innovative delta-neutral model

## Sustainable vs Unsustainable Yield Checklist

**Sustainable indicators:**
- Yield source is identifiable (borrowing demand, trading fees, T-bills)
- Yield fluctuates with market conditions (not artificially fixed)
- Protocol has revenue > emissions (or path to it)
- Yield is in the same asset (not paid in volatile tokens)

**Unsustainable indicators:**
- Fixed high APY regardless of market conditions (Anchor's 20% was the red flag)
- Yield paid primarily in protocol's own token
- "Yield" requires locking for extended periods
- No clear borrower or fee-payer on the other side
- TVL growing faster than revenue

## Portfolio Construction

- **Core (60-70%):** Lending on blue-chip protocols (Aave, Morpho) or DSR
- **Satellite (20-30%):** Curve LP, basis trade strategies (Ethena)
- **Speculative (0-10%):** New protocol farms, points programs
- **Always maintain:** Some liquid stables for opportunities (no yield, but optionality)

---
*Last updated: 2026-02-15*
