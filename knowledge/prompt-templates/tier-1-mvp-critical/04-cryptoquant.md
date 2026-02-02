# Prompt #4: CryptoQuant (On-Chain Data & Flows)

**Priority**: Tier 1 - MVP Critical  
**Specialist**: `onChainHealthSpecialist`  
**Data Source**: CryptoQuant (free/public charts, dashboards, X posts)

## Core Objectives
- Pull latest publicly visible on-chain metrics for **BTC, ETH, and stablecoins**
- Extract Exchange Reserves, Exchange Netflow, MVRV Ratio, Fund Flow Ratio
- Detect whale activity, on-chain demand signals, accumulation/distribution
- Compare cross-asset flows (BTC vs ETH, stablecoin movements)
- Deliver clean daily snapshot with sourced numbers and trends

## Supported Assets
- **Primary**: BTC, ETH
- **Stablecoins**: USDT, USDC (exchange flows)
- **On Request**: Other assets tracked by CryptoQuant

## Tool Usage Strategy

### Primary: CryptoQuant Free Dashboards
- `browse_page` on `https://cryptoquant.com/asset/btc/overview`
  - Instructions: "Extract all visible current numerical values and recent trends for Bitcoin metrics from free/public sections only (e.g., exchange reserves, netflow total, MVRV ratio, price if shown). Include latest data point, percentage changes (24h/7d/30d), and any text labels. Ignore premium/pro sections, login prompts, or paywalled charts. If no numbers visible, state 'no extractable free data'."

### Secondary: CryptoQuant X Posts
- `x_keyword_search`: "BTC OR Bitcoin OR quicktake from:cryptoquant_com OR from:ki_young_ju since:[current_year]-01-01"
- `x_keyword_search`: "(whale OR demand OR MVRV OR flow OR reserve OR netflow) from:cryptoquant_com OR from:ki_young_ju since:[current_year]-01-01"
- For chart images → `view_image` to extract visible numbers/trends

### Fallback
- `web_search`: "CryptoQuant Bitcoin [metric] latest [month] [year]"

## Output Format

```markdown
## CryptoQuant On-Chain Snapshot — [Current Date]

### Multi-Asset Overview
| Asset | Exchange Reserves | 24h Netflow | MVRV | Whale Signal |
|-------|-------------------|-------------|------|--------------|
| BTC   | X.XX M BTC        | +/- X.XX K  | X.XX | Accum/Dist   |
| ETH   | X.XX M ETH        | +/- X.XX K  | X.XX | Accum/Dist   |

### BTC On-Chain Metrics
- **Exchange Reserves**: [value] BTC ([change, e.g., +X% 24h or -X BTC 30d])
- **Exchange Netflow**: [value] BTC ([net outflow/inflow, recent trend])
- **MVRV Ratio**: [value] ([interpretation, e.g., cooling momentum])
- **Whale Activity**: [description/trend, e.g., accumulation detected]
- **On-Chain Demand**: [description/trend, e.g., strengthening/weakening]

### ETH On-Chain Metrics
- **Exchange Reserves**: [value] ETH ([change])
- **Exchange Netflow**: [value] ETH ([trend])
- **Staking Flows**: [if available, net staking/unstaking]

### Stablecoin Flows
- **USDT Exchange Reserves**: [value] ([trend = buy/sell pressure indicator])
- **USDC Exchange Reserves**: [value] ([trend])
- **Net Stablecoin Movement**: [interpretation - capital entering/leaving]

### Cross-Asset Signals
- **BTC vs ETH Flow Divergence**: [observation if flows differ]
- **Stablecoin Dry Powder**: [high reserves = buy pressure potential]
- **Risk-On/Risk-Off Signal**: [interpretation based on combined flows]

### Flows & Signals Summary
[2-3 sentences synthesizing the on-chain picture: accumulation phase? distribution? whale behavior? stablecoin positioning?]

### Sources & Notes
- Primary: [List browsed URLs]
- X Posts: [Key post summaries from @cryptoquant_com, @ki_young_ju]
- Limitations: [Note free tier restrictions]
```

## Query-Specific Guidance

### "What are whales doing?"
Focus on whale cohort metrics, large transaction flows

### "Is BTC being accumulated or distributed?"
Exchange reserves + netflow + MVRV interpretation

### "What do stablecoin flows tell us?"
Stablecoin exchange reserves as buy/sell pressure proxy

### "Compare BTC and ETH on-chain health"
Side-by-side metrics for both assets

## Integration Notes
- Feeds directly into `onChainHealthSpecialist` for bias scoring
- Used by `regimeAggregatorSpecialist` for strike selection context
- Exchange reserves/netflow are key signals for short-term price pressure

## Performance Notes
- Free tier limitations require X post monitoring for fresh insights
- Focus on extractable numbers only (avoid hallucinated values)
- Cross-verify with Glassnode when possible

---

## Methodology & Framework

**Key Concepts:**
- **On-Chain Metrics**: The use of blockchain data to analyze the behavior of assets (BTC, ETH, stablecoins) in real-time.
- **Whale Activity Detection**: Identifying large transactions and their implications on market trends.
- **Cross-Asset Analysis**: Comparing metrics across different cryptocurrencies to gauge relative strength and trends.
- **Exchange Dynamics**: Understanding flow metrics such as exchange reserves and netflows to assess market sentiment.
- **Stablecoin Indicators**: Using stablecoin flows as a proxy for potential buy/sell pressures in the market.

**Analytical Approach:**
- Adopt a systematic method for gathering and interpreting on-chain data from publicly available sources. Emphasize extracting actionable insights from visible metrics while ignoring inaccessible data. Use a structured framework to evaluate and compare different assets on their respective on-chain indicators, focusing on trends and changes over specified time frames (24h, 7d, 30d).

**Pattern Recognition:**
- Look for significant shifts in exchange reserves and netflows as indicators of accumulation or distribution. Monitor whale movements, particularly large transactions, as they can signal market sentiment changes. Pay attention to stablecoin reserves as they can indicate potential liquidity and buying power in the market. Note divergences in asset flows, particularly between BTC and ETH, to identify trends or potential reversals.

**Strategic Framework:**
- Implement a routine to gather on-chain data daily, synthesizing it into a clear snapshot. Use the structured output format to communicate findings effectively, ensuring that the analysis is aligned with the core objectives. Maintain a focus on interpreting the implications of the data collected to inform trading strategies and investment decisions. Leverage insights from whale activity and stablecoin movements to assess market conditions and adjust strategies accordingly.

**Important Notes:**
- Emphasize methodology over specific metrics to maintain relevance over time. Ensure that the approach remains adaptable to current market conditions by regularly reviewing and updating the data collection and analysis processes. Keep the focus on actionable insights that can inform decision-making in real-time market scenarios.

---

> **📌 Knowledge Base Note**
> 
> This essay contains **historical examples and illustrative data** from when it was written.
> - **Numbers, prices, and metrics are OUTDATED** - they illustrate concepts, not current conditions
> - **Focus: Methodology and frameworks** - learn HOW TO THINK about topics, not what the numbers were
> - **Use for:** Analytical approaches, pattern recognition, strategic thinking
> - **Do NOT use for:** Current prices, up-to-date metrics, real-time data
> 
> **What this provides:** Thinking frameworks, methodologies, analytical approaches
> **What this does NOT provide:** Current market data (use actions/APIs instead)


*Template Version: 1.0*  
*Last Tested: 2026-01-XX*
