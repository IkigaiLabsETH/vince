---
tags: [general]
agents: [eliza]
---
# Prompt #31: Deribit (Options/Futures OI, Funding Rates & Derivatives Metrics)

**Priority**: Tier 1 - MVP Critical  
**Specialist**: `derivativesSpecialist`  
**Data Source**: Deribit insights/reports and statistics pages

**Note**: This is a variant/complement to `29-deribit.md`. The original (#29) focuses on detailed 7-day options chain extraction for strike selection, while this (#31) focuses on aggregate options/perps metrics, funding rates, DVOL, and broader derivatives sentiment. Both are valuable and complement each other.

## Core Objectives
- Assess options sentiment, skew, gamma exposure, leverage in perps/futures, funding dynamics
- Detect signals: volatility regimes, directional bias (elevated put/call ratio, call dominance, sustained positive funding, DVOL spikes)
- Compare to aggregate derivatives data (Coinglass), noting Deribit's dominance (~70-90% of BTC options market share)
- Flag options-specific flows vs. perpetuals for nuanced sentiment read

## Tool Usage Strategy

### Primary: Deribit Insights & Statistics
- `browse_page` on:
  - Insights hub: `https://insights.deribit.com/`
    - Instructions: "List the 5-10 most recent articles/reports (title, date, URL). Prioritize weekly analytics, monthly recaps, or derivatives reports mentioning BTC options/perps OI, funding, volumes, or DVOL."
  - Individual reports: Browse recent report URLs
    - Instructions: "Extract BTC-specific metrics quoted: options OI (total/calls/puts/by expiry), put/call ratios, top strikes, funding rates, perp/futures OI, volumes, DVOL levels, and any historical context or charts described."
  - Metrics/statistics pages:
    - `https://www.deribit.com/statistics/BTC/metrics/options`
      - Instructions: "Describe current options dashboard: extract total OI, calls vs. puts (in BTC and USD), put/call ratio, OI by expiry, top strikes (calls/puts), skew if shown, and any chart summaries."
    - `https://www.deribit.com/statistics/BTC/metrics/futures`
      - Instructions: "Extract perpetual/futures OI, current funding rate (8h), volumes, and historical funding if charted."
    - DVOL: `https://www.deribit.com/statistics/BTC/volatility-index` or `https://dvol.deribit.com/`
      - Instructions: "Extract current DVOL value, recent changes, and historical chart points if visible."

### Supplement
- Coinglass Deribit-specific: `https://www.coinglass.com/options/Deribit` or `https://www.coinglass.com/pro/futures/Deribit`
- `web_search`: "Deribit BTC options open interest latest" or "Deribit weekly derivatives report 2025/2026"

### Analysis
- `code_execution` to:
  - Parse extracted tables/text
  - Calculate put/call ratios, skew metrics, averages/changes
  - Aggregate OI by expiry or sentiment buckets

## Output Format

```markdown
### Deribit BTC Derivatives Snapshot
- **Options Open Interest**: Total X BTC (~$Y.YY B) | Calls: A.A BTC | Puts: B.B BTC | **Put/Call Ratio**: C.CC (bullish if <1.0)
- **Top Strikes/Expiries** (by OI): e.g., "$100k calls (Dec expiry) dominant; $80k puts hedged"
- **Perp/Futures OI**: Z.Z BTC (~$W.W B) (24h Δ: +/− V.V%)
- **Current Funding Rate** (8h perp): +/− U.UU%
- **24h Options Volume**: Calls $P.P B | Puts $Q.Q B
- **DVOL Index**: R.R% (vs. historical avg)

### 30–90 Day Trends (Where Available)
| Date/Period | Options OI (BTC) | Put/Call Ratio | Funding Rate (%) | DVOL (%) | Key Notes                  |
|-------------|------------------|----------------|------------------|----------|----------------------------|
| YYYY-MM-DD  | XXX              | Y.YY           | +/− Z.ZZ         | A.A      | e.g., "Call OI surge"      |
| ...         | ...              | ...            | ...              | ...      | ...                        |

(Limit to 10–15 rows max; use weekly from reports or sampled chart points.)

### Comparison to Aggregate (Coinglass)
- Deribit share: "Options OI represents ~XX% of total market (Coinglass aggregate)."
- Divergences: e.g., "Deribit shows stronger call skew vs. aggregate neutral."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current options/perps sentiment pulse (bullish skew, hedging pressure).
- Risk signals (gamma squeezes, funding overheating, vol regime shift).
- Historical parallels (e.g., similar to pre-2021 top or 2024 accumulation).
- Implications for spot BTC or broader leverage flush.

Example:  
"Call-heavy OI build with PCR <0.6 and upside strikes dominating—strong bullish conviction in options flows, contrasting milder perp funding. DVOL grinding lower suggests complacency; similar to mid-2024 setups before vol expansions. Watch downside put walls for support levels."

### Data Notes
- Sources: Deribit (insights.deribit.com reports + statistics pages browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Free/public data may lack deep historical granularity or require chart sampling; note if metrics pages interactive only.
```

## Integration Notes
- Complements `29-deribit.md` (detailed chain) with aggregate metrics focus
- Feeds into `derivativesSpecialist` for options sentiment and perp funding context
- Provides DVOL index and put/call ratios for market-wide sentiment
- Can be merged with #13 Coinglass, #30 Skew into "Derivatives Pulse" agent (per Grok suggestion)

## Performance Notes
- Use alongside `29-deribit.md` for comprehensive Deribit coverage
- Prioritize Deribit-specific options metrics (market leader)
- Options-specific flows vs. perpetuals provide nuanced sentiment read

---

## Methodology & Framework

**Key Concepts:**
- **Market Sentiment Analysis**: Understanding options sentiment, skew, gamma exposure, and funding dynamics as indicators of market behavior.
- **Volatility Regimes**: Identifying shifts in volatility that signal changes in market sentiment or potential trading opportunities.
- **Derivatives Metrics**: Utilizing open interest, funding rates, and volume metrics to gauge market activity and sentiment.
- **Comparative Analysis**: Benchmarking Deribit’s metrics against aggregate market data to assess relative strength and potential divergences.

**Analytical Approach:**
- Adopt a comprehensive data collection strategy by utilizing multiple sources such as Deribit insights, Coinglass, and relevant market reports. Prioritize the extraction of aggregate derivatives metrics to form a holistic view of market conditions.
- Implement quantitative analyses, including calculating put/call ratios and skew metrics to identify bullish or bearish trends. Use historical data to contextualize current metrics and detect changes over time.

**Pattern Recognition:**
- Look for key signals such as elevated put/call ratios indicating bearish sentiment, call dominance suggesting bullish outlooks, and sustained positive funding rates that may point to upward price momentum.
- Monitor DVOL spikes as indicators of increasing market uncertainty or volatility, which often precede significant price movements.

**Strategic Framework:**
- Develop a structured reporting template that encapsulates key metrics and trends succinctly, facilitating quick decision-making. This template should highlight critical indicators like options open interest, funding rates, and DVOL changes, allowing traders to assess market sentiment efficiently.
- Regularly compare Deribit-specific data with aggregate market statistics to identify divergences and opportunities, leveraging Deribit’s market share to inform trading strategies and risk management decisions.

**Important Notes:**
- Emphasize methodology over specific historical figures to maintain relevance in current market conditions.
- Focus on actionable insights derived from data analysis, allowing for adaptive strategies in dynamic trading environments.
- Keep the framework flexible to incorporate new metrics or signals as market conditions evolve.

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


*Template Version: 1.0 (Variant)*  
*Last Tested: 2026-01-XX*  
*Source: insights.deribit.com, deribit.com*  
*Note: Complements 29-deribit.md - use #29 for chain details, #31 for aggregate metrics*
