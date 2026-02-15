---
tags: [general]
agents: [eliza]
last_reviewed: 2026-02-15
---
# Prompt #18: CoinMetrics (Network Data & Economic Indicators)

**Priority**: Tier 3 - Supporting  
**Specialist**: `onChainHealthSpecialist`  
**Data Source**: CoinMetrics community/free data

## Core Objectives
- Assess Bitcoin network fundamentals: active addresses, adjusted transaction volume, fees, hash rate, NVT ratio, realized cap
- Detect economic signals: NVT compression (undervaluation), active address surges (adoption), fee market maturity, hash rate resilience
- Compare to historical cycle analogs (2020-2021 bull NVT drop, 2022 bear lows, post-halving issuance shifts)
- Highlight implications for BTC's fundamental valuation and network strength

## Tool Usage Strategy

### Primary: CoinMetrics Community Data
- `browse_page` on:
  - Data downloads/charts hub: `https://coinmetrics.io/community-network-data/` or `https://coinmetrics.io/data-downloads/`
    - Instructions: "List available free BTC assets/metrics (e.g., active addresses, adjusted transfer value, hash rate, NVT, fees). Provide direct CSV/chart URLs if visible."
  - Specific chart pages: `https://charts.coinmetrics.io/network-data/bitcoin/active-addresses/`, `/adjusted-transfer-value/`, `/hash-rate/`, `/nvt-ratio/`, etc.
    - Instructions: "Extract current metric value, recent changes, and historical chart data points (date + value) for the longest visible period (up to 5+ years). Sample ~15-20 evenly spaced points (monthly/quarterly for long-term, weekly recent)."

### Supplement
- Glassnode free charts: `https://studio.glassnode.com/metrics`
- CryptoQuant free: `https://cryptoquant.com/asset/btc/chart`
- `web_search`: "CoinMetrics Bitcoin active addresses historical CSV free" or "CoinMetrics State of the Network latest BTC metrics"

### Analysis
- `code_execution` to:
  - Parse/clean extracted tabular/text data points
  - Calculate trends (YoY/MoM growth in active addresses, NVT changes, averages)
  - Detect anomalies (e.g., NVT below historical median)
  - Generate text descriptions of patterns

## Output Format

```markdown
### CoinMetrics BTC Metrics Snapshot
- **Active Addresses** (24h/daily avg): X.XX M
- **Adjusted Transaction Volume** (24h USD): ~$Y.YY B
- **Hash Rate**: Z.ZZ EH/s
- **NVT Ratio**: A.AA (or NV Ratio if used)
- **Total Fees** (24h): ~$B.BB M
- **Realized Cap**: ~$C.CC B

### 1–5 Year Trends (Sampled)
| Date       | Active Addresses (M) | Adj Tx Volume ($B) | Hash Rate (EH/s) | NVT Ratio | Key Notes                     |
|------------|---------------------|--------------------|------------------|-----------|-------------------------------|
| YYYY-MM-DD | X.XX                | Y.YY               | Z.ZZ             | A.AA      | e.g., "NVT compression"       |
| ...        | ...                 | ...                | ...              | ...       | ...                           |

(Limit to 12–20 rows max; monthly/quarterly for long-term view, prioritize cycle phases + recent.)

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current network/economic pulse (activity, valuation, security).
- Regime signals (NVT drop = undervalued, address growth = adoption).
- Historical parallels (e.g., similar to 2020 accumulation or 2021 peak activity).
- Implications for BTC fundamental pricing or cycle stage.

Example:  
"Adjusted volume and active addresses stabilizing at elevated levels with NVT grinding lower—classic undervaluation signal amid maturing network, echoing 2020 post-halving setup. Hash rate at ATHs supports strong security despite issuance reduction. Points to robust fundamentals supporting spot resilience."

### Data Notes
- Sources: CoinMetrics (pages/charts browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Free/community data may be chart-based (sampled approximate) or weekly—note lags or gaps; cross-verified where possible.
```

## Integration Notes
- Feeds into `onChainHealthSpecialist` for network health metrics
- Provides reference-grade on-chain data (adjusted volumes, NVT)
- Complements CryptoQuant (#4) and Glassnode (#5) with different focus (network fundamentals vs flows)
- Can inform strike selection (network health = fundamental support)

## Performance Notes
- Prioritize reference-grade metrics (adjusted volumes, NVT)
- Always double-check extracted numbers for accuracy (cross-metric consistency)
- Free/community data may be chart-based (sampled approximate)
- If primary charts/reports limited, clearly state and pivot to reliable free alternatives

---

## Methodology & Framework

**Key Concepts:**
- **Network Fundamentals:** Understanding key metrics like active addresses, transaction volume, and hash rate as indicators of network health and activity.
- **Economic Signals:** Recognizing economic indicators such as NVT ratio and fee market dynamics to assess the valuation of Bitcoin.
- **Historical Comparison:** Utilizing historical data to identify cycles and patterns that may inform future market behavior.
- **Data Visualization and Extraction:** Employing various tools and sources to gather, visualize, and analyze network data for actionable insights.

**Analytical Approach:**
- **Metric Evaluation:** Systematically assess Bitcoin's network metrics by extracting both current and historical data from reliable sources, focusing on trends over time to understand shifts in network activity and valuation.
- **Trend Analysis:** Calculate changes in key metrics (e.g., year-over-year growth, anomalies) to identify significant trends that could indicate market sentiment or shifts in investor behavior.
- **Contextual Interpretation:** Develop insights based on the combined analysis of metrics, economic signals, and historical patterns, allowing for a more nuanced understanding of the current market state.

**Pattern Recognition:**
- **Valuation Indicators:** Look for signals like NVT compression (indicating undervaluation) and surges in active addresses (signifying increased adoption) to assess market sentiment.
- **Cycle Phases:** Identify similarities in current data patterns to historical cycles (like those from 2020-2021) to predict potential future movements and cycle stages.
- **Market Resilience:** Monitor hash rate and fee trends to gauge the network's robustness and security, which can impact investor confidence and market pricing.

**Strategic Framework:**
- **Data-Driven Decision Making:** Leverage real-time and historical data analysis to inform trading strategies and investment decisions, focusing on critical metrics that reflect network health.
- **Scenario Planning:** Utilize historical analogs to develop various market scenarios, preparing for potential outcomes based on observed data patterns and economic indicators.
- **Continuous Monitoring:** Regularly review key metrics and economic signals to stay informed about shifts in the market landscape, allowing for timely adjustments to strategies based on evolving data.

**Important Notes:**
- This methodology emphasizes systematic data analysis and interpretation rather than focusing on specific numerical outcomes. 
- The aim is to cultivate a mindset that prioritizes understanding market dynamics through quantitative metrics and historical context, making it applicable and actionable in real-time situations.

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
*Source: coinmetrics.io*
