---
tags: [general]
agents: [eliza]
last_reviewed: 2026-02-15
---
# Prompt #29: Bitfinex (Exchange Volumes & Lending Rates)

**Priority**: Tier 3 - Supporting  
**Specialist**: `derivativesSpecialist`, `liquiditySpecialist`  
**Data Source**: Bitfinex.com (exchange-specific metrics)

**Note**: This is different from `29-deribit.md`. This focuses on Bitfinex exchange metrics, while Deribit focuses on options chain data.

## Core Objectives
- Fetch Bitcoin-specific metrics from Bitfinex: spot/derivatives volumes, margin lending rates, leverage buildup, market stats
- Gauge exchange-specific volumes, funding/lending demand, leverage buildup, institutional sentiment signals
- Compare to broader derivatives/exchange data (Coinglass aggregate)
- Highlight lending market as proxy for leverage conviction (high rates = shorts paying longs or bullish margin demand)

## Tool Usage Strategy

### Primary: Bitfinex Official Pages
- `browse_page` on:
  - Stats/dashboard: `https://www.bitfinex.com/stats`
    - Instructions: "Extract current BTC trading volumes (spot + derivatives, 24h/7d/30d), any volume charts, lending/funding rates, and historical summaries if visible."
  - Lending/funding: `https://www.bitfinex.com/funding` or `https://trading.bitfinex.com/funding`
    - Instructions: "Focus on BTC/USD or BTC margin pairs. Extract current flash return rates (FRR), average lend/borrow rates (APR), offered/supplied amounts, and any rate charts over past month/year."
  - Market pulse/reports: `https://pulse.bitfinex.com/` or `https://www.bitfinex.com/posts/`
    - Instructions: "List recent posts/reports mentioning BTC volumes, lending rates, long/short positions, or market stats. Provide URLs and summarize key BTC metrics quoted."
  - Derivatives/positions: `https://trading.bitfinex.com/`
    - Instructions: "Extract BTC perp/futures OI, long/short ratios, volumes if shown publicly."

### Supplement
- Coinglass Bitfinex-specific: `https://www.coinglass.com/exchange/Bitfinex`
- `web_search`: "Bitfinex BTC lending rates latest" OR "Bitfinex Bitcoin volume report 2025/2026"

### Analysis
- `code_execution` to:
  - Parse/clean extracted tables or text data
  - Calculate averages (7d/30d lending rate), changes, ratios
  - Aggregate trends and detect spikes/anomalies

## Output Format

```markdown
### Bitfinex BTC Metrics Snapshot
- **Trading Volume** (24h): $X.XX B (spot + derivatives) | 7d: $Y.YY B | 30d: $Z.ZZ B
- **Margin Lending Rate** (BTC, current FRR/APR): A.AA% (lend) / B.BB% (borrow)
- **Margin Long/Short Positions** (if available): Longs $C.C B | Shorts $D.D B | **Ratio**: E.E : 1
- **Open Interest** (perps/futures, if available): $F.F B
- **Key Highlights**: e.g., "Lending demand elevated; volumes up X% WoW"

### 30–90 Day Trends (Where Available)
| Date/Period | Volume ($B, 24h avg) | Lending Rate (%) | Long/Short Ratio | Key Notes                     |
|-------------|----------------------|------------------|------------------|-------------------------------|
| YYYY-MM-DD  | X.XX                 | Y.YY             | Z.Z : 1          | e.g., "Rate spike + volume surge" |
| ...         | ...                  | ...              | ...              | ...                           |

(Limit to 10–15 rows max; prioritize recent weeks + major turning points. Use weekly averages if daily dense.)

### Comparison to Aggregate (Coinglass)
- Context: e.g., "Bitfinex volumes represent ~XX% of total spot market; lending rates higher than perp funding on aggregate."
- Divergences: e.g., "Stronger long skew on Bitfinex margin vs. neutral perp ratios elsewhere."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current exchange pulse (volume momentum, lending demand).
- Regime signals (leverage buildup, institutional accumulation, or caution).
- Historical parallels (e.g., similar to 2021 margin peaks or 2023 recovery phases).
- Implications for BTC spot resilience or broader market flows.

Example:  
"Elevated lending rates (~0.08% APR) with rising volumes suggest strong borrow demand and bullish margin leverage—classic institutional conviction signal on Bitfinex. Long/short ratio tilting long amid volume recovery, echoing early 2022 post-bear phases. Watch for rate spikes as potential overheating precursor."

### Data Notes
- Sources: Bitfinex (pages browsed: list URLs, e.g., stats, funding, pulse); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Note if data is partial (e.g., lending rates aggregated, no granular OI), paywalled, or requires login—and confirm with alternatives.
```

## Integration Notes
- Feeds into `derivativesSpecialist` for exchange-specific leverage data
- Complements `liquiditySpecialist` with Bitfinex volume context
- Provides margin lending as leverage proxy (high rates = bullish demand)
- Can be merged with derivatives-heavy prompts (#13, #23, #29 Deribit) per Grok suggestion

## Performance Notes
- Prioritize BTC/USD or core BTC pairs (note if metrics multi-asset aggregated)
- Lending rates as key leverage proxy (high rates = bullish demand)
- If primary pages lack depth, clearly state and rely on supplements

---

## Methodology & Framework

**Key Concepts:**
- **Exchange-Specific Metrics**: Understanding metrics unique to Bitfinex, such as spot and derivatives trading volumes, margin lending rates, and leverage buildup.
- **Market Sentiment Analysis**: Evaluating institutional sentiment signals through lending rates and trading volumes to gauge market confidence.
- **Comparative Analysis**: Assessing Bitfinex metrics against broader market data to contextualize findings and identify divergences.
- **Trend Aggregation**: Analyzing historical trends over different time frames (e.g., 7-day, 30-day) to identify significant shifts in market behavior.

**Analytical Approach:**
- Adopt a data-driven mindset, focusing on quantitative metrics to derive insights rather than relying on qualitative assessments. Utilize structured extraction from primary and supplementary sources to build a comprehensive view of trading activity and lending dynamics on Bitfinex. Prioritize the identification of anomalies and trends in the data that signal shifts in market behavior, such as spikes in trading volumes or lending rates.

**Pattern Recognition:**
- Look for signs of increased lending demand, indicated by rising lending rates or significant trades in long/short positions. Monitor correlations between high trading volumes and lending rates to identify bullish or bearish market sentiment. Recognize historical patterns, such as those that preceded major price movements, to better anticipate future market shifts.

**Strategic Framework:**
- Implement a systematic approach to data collection and analysis, where information is categorized into trading volumes, lending rates, and market sentiment. Compare the extracted metrics with aggregate data from platforms like Coinglass to gauge relative performance. Use the insights gathered to inform trading strategies, positioning for potential market movements based on institutional accumulation or caution signals. Continuously update the analytical framework as new data becomes available, ensuring agile responses to market changes.

**Important Notes:**
- Ensure that the focus remains on the methodologies and frameworks for analysis rather than specific historical data points. The goal is to create an actionable model that can be adapted to evolving market conditions, promoting a proactive rather than reactive stance in trading strategies. Keep the analysis concise and relevant to the current market landscape.

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
*Source: bitfinex.com*
