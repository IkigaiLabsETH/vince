---
tags: [general]
agents: [eliza]
---
# Prompt #14: Artemis (Liquidity Flows & Cross-Chain Activity)

**Priority**: Tier 3 - Supporting  
**Specialist**: `defiFlowsSpecialist` (BTC bridge flows extension)  
**Data Source**: Artemis Terminal (artemis.xyz)

## Core Objectives
- Fetch BTC/wBTC bridge and chain flow metrics: recent bridge volumes (inflows/outflows), net flows, ecosystem rankings
- Detect liquidity regime signals: sustained net outflows to EVM/L2s, spikes in bridge activity, net return to native Bitcoin chain
- Compare to broader DEX trading activity (via DEX Screener)
- Assess structural shifts in BTC liquidity distribution

## Tool Usage Strategy

### Primary: Artemis Terminal
- `browse_page` on:
  - Main flows dashboard: `https://app.artemis.xyz/flows`
    - Instructions: "Focus on Bitcoin (BTC/wBTC). Extract current/recent bridge inflows, outflows, net flows (in USD), time period covered, ecosystem ranking, and any historical chart data points (date + inflow/outflow/net values) for the longest visible period (up to 90+ days). Sample ~10-15 evenly spaced points if chart is present."
  - Asset-specific view: Search for BTC or wBTC pages
    - Instructions: "Summarize BTC/wBTC cross-chain flows, bridge volumes, and top destination/source chains."

### DEX Comparison
- `browse_page` on: `https://dexscreener.com/` or specific wBTC pairs (e.g., Uniswap wBTC/USDC)
  - Instructions: "Extract 24h/7d trading volume for top wBTC pairs and total DEX volume context."

### Fallback
- `web_search`: "Artemis Terminal BTC wBTC bridge flows historical"
- DefiLlama bridges: `https://defillama.com/bridges`
  - Instructions: "Extract BTC/wBTC-specific bridge volumes and chains."

### Analysis
- `code_execution` to:
  - Parse/clean extracted data
  - Calculate net flows, weekly/monthly aggregates, percentage changes
  - Generate trend descriptions

## Output Format

```markdown
### BTC Liquidity Flows Snapshot
- **Recent Bridge Activity** (period: e.g., past 30d/90d): Inflows $X.XX B | Outflows $Y.YY B | **Net**: +/− $Z.ZZ B
- **Top Flow Directions**: e.g., "Primary inflow from Ethereum → Bitcoin; outflow to Base/Arbitrum"
- **Ecosystem Ranking**: BTC ranks #N among chains by bridge volume
- **24h/7d Bridge Volume** (if available): $A.AA B total

### 30–90 Day Trends
| Period/Date | Inflows ($M) | Outflows ($M) | Net ($M) | Key Notes                          |
|-------------|--------------|---------------|----------|------------------------------------|
| YYYY-MM-DD  | XXX          | XXX           | +/−XXX   | e.g., "Net outflow spike to L2s"   |
| ...         | ...          | ...           | ...      | ...                                |

(Limit to 8–15 rows max; prioritize recent weeks + turning points. Use weekly/monthly buckets if daily data dense.)

### Comparison to DEX Activity
- Bridge flows vs. DEX trading: "Bridge volumes modest (~$XM over 90d) compared to daily wBTC DEX volumes (often $YM+ across major pairs)."
- Implications: e.g., "Most BTC liquidity remains in trading pools rather than structural cross-chain rotation."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current liquidity pulse (native vs. wrapped BTC usage).
- Regime signals (accumulation on Bitcoin chain, L2 migration, etc.).
- Historical parallels if relevant (e.g., similar to 2023–2024 L2 growth phase).
- Potential implications for BTC price resilience or alt season flows.

Example:  
"Modest net inflows back to native Bitcoin chain over past 90 days with balanced bridging—suggesting no aggressive rotation away from BTC liquidity. Bridge volumes remain small relative to daily DEX trading in wBTC pairs, indicating most activity is speculative rather than structural exodus."

### Data Notes
- Sources: Artemis Terminal (pages browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Note if data is aggregated only (no short-term granularity), niche, or unavailable—and provide best alternative.
```

## Integration Notes
- Feeds into `defiFlowsSpecialist` for BTC bridge flows analysis
- Complements DefiLlama (#2) with cross-chain liquidity focus
- Provides liquidity distribution signals (native vs wrapped BTC)
- Can inform strike selection (liquidity rotation affects volatility)

## Performance Notes
- Data may be niche/limited (Artemis focuses on cross-chain flows)
- Prioritize BTC/wBTC-specific flows (note if ecosystem-level only)
- If Artemis data too limited, clearly state and pivot to reliable alternatives (e.g., DefiLlama bridges)

---

## Methodology & Framework

**Key Concepts:**
1. **Liquidity Regime Signals**: Understanding the flow dynamics of BTC/wBTC through bridging activity and net flows to identify market sentiment.
2. **Cross-Chain Activity Analysis**: Evaluating how assets move between chains to gauge ecosystem health and user behavior.
3. **Comparative DEX Activity**: Analyzing decentralized exchange (DEX) trading volumes alongside bridge flows to determine liquidity distribution.
4. **Ecosystem Ranking Metrics**: Assessing the position of BTC in the broader crypto ecosystem based on bridge volume and flow metrics.
5. **Temporal Trend Analysis**: Analyzing historical data over varying time periods to identify changes in liquidity patterns and market trends.

**Analytical Approach:**
- Begin by collecting real-time and historical data from reliable sources like the Artemis Terminal. Focus on quantitative metrics such as inflows, outflows, and net flows. Use this data to create a comprehensive picture of liquidity dynamics.
- Employ comparative analysis with DEX trading volumes to contextualize bridge activity within the broader market. This includes examining how liquidity is utilized between centralized and decentralized platforms.
- Look for anomalies or spikes in data, such as sudden increases in inflows or shifts to L2 solutions, as these can indicate important market transitions or investor sentiment changes.

**Pattern Recognition:**
- Monitor for sustained net outflows or inflows to identify shifts in investor behavior, particularly towards Layer 2 solutions or back to the native Bitcoin chain, which may suggest broader market trends.
- Look for correlations between bridge activity and DEX trading volume. For instance, a decline in bridge volumes relative to DEX activity may imply that liquidity is being retained within trading pools rather than being used for cross-chain transactions.
- Recognize historical patterns that align with current data trends to forecast potential market movements, such as the accumulation of Bitcoin during periods of low liquidity in the past.

**Strategic Framework:**
- Utilize the insights derived from liquidity flows and DEX activity to inform trading strategies and investment decisions. For example, if net inflows to Bitcoin are observed alongside high DEX trading volumes, it might indicate a bullish sentiment and potential price appreciation.
- Implement a feedback loop where ongoing data analysis informs market positioning. Regularly revisit the metrics and adjust strategies based on emerging trends and signals.
- Leverage this methodology to evaluate new projects and protocols that enhance cross-chain functionality, as these may offer competitive advantages in liquidity management and market positioning.

**Important Notes:**
- The focus should remain on the methodologies and frameworks applicable to current market analysis rather than specific historical data points or figures.
- Ensure to maintain a flexible approach that adapts to new data and insights, allowing for timely responses to market changes.

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
*Source: artemis.xyz*
