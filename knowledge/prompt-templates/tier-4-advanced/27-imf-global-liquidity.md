---
tags: [general]
agents: [eliza]
---
# Prompt #27: IMF/Global Liquidity Indicators (Macro Context)

**Priority**: Tier 4 - Advanced  
**Specialist**: `macroOverlaysSpecialist`  
**Data Source**: IMF data portals, FRED (fallback)

## Core Objectives
- Fetch global liquidity proxies: aggregated M2 money supply, central bank balance sheets, credit growth, financial conditions indices
- Provide macro context for Bitcoin price cycles, risk appetite, regime shifts (liquidity expansions = tailwinds, tightenings = headwinds)
- Calculate correlations between liquidity proxy and BTC price
- Compare to historical analogs (2020-2021 liquidity flood, 2022 tightening bear, post-2008 QE era)

## Tool Usage Strategy

### Primary: IMF Data Portals
- `browse_page` on:
  - IMF Data hub: `https://www.imf.org/en/Data`
    - Instructions: "Navigate to International Financial Statistics (IFS) or other relevant datasets. Extract global or major-economy aggregates for M2, broad money, credit growth, or financial conditions indices. Pull latest values and historical series (monthly/quarterly) for past 5 years."
  - Specific datasets: `https://data.imf.org/` or WEO
    - Instructions: "Search for liquidity-related indicators (M2, central bank assets, credit to private sector). Extract tables/charts for major economies and sample ~15-20 date/value pairs."

### Supplement: FRED
- FRED global liquidity series: `https://fred.stlouisfed.org/`
  - Instructions: "Search specific series like 'M2 for United States/Euro Area/China/Japan' or aggregated proxies. Extract historical data tables or sample chart points (monthly/quarterly) for past 5 years."
- Central bank sites if needed
- `web_search`: "IMF global M2 aggregate historical data" OR "global liquidity index 2025/2026"

### BTC Price Data (Correlation)
- CoinGecko or Yahoo Finance: Extract monthly/quarterly BTC closing prices aligned to liquidity dates

### Analysis
- `code_execution` to:
  - Parse/clean extracted series
  - Aggregate major-economy M2 into global proxy if needed
  - Align dates with BTC prices
  - Compute YoY growth, rolling correlations (Pearson coeff)

## Output Format

```markdown
### Global Liquidity Snapshot
- **Aggregated M2 Proxy** (major economies): ~$X.XX T (YoY growth: +/− Y.YY%)
- **Central Bank Assets** (sum Fed/ECB/PBOC/BOJ): ~$Z.ZZ T (QoQ Δ: +/− A.A%)
- **Credit Growth** (global/private sector): +/− B.BB% YoY
- **Financial Conditions Index** (if available): Tight/Loose (value: C.C)

### 3–5 Year Trends
| Date       | Global M2 Proxy ($T) | YoY Growth (%) | BTC Price ($) | Key Notes                     |
|------------|----------------------|----------------|---------------|-------------------------------|
| YYYY-MM    | X.XX                 | +/− Y.YY       | Z,ZZZ         | e.g., "Liquidity peak pre-2022 tighten" |
| ...        | ...                  | ...            | ...           | ...                           |

(Limit to 12–20 rows max; monthly recent, quarterly earlier; align dates across series.)

### Correlation Analysis
- Full period correlation (liquidity growth vs. BTC returns): ~R.R (e.g., 0.75 strong positive)
- Recent 12m: ~S.S
- Notes: e.g., "Highest correlation during 2020–2021 expansion; decoupling in 2022 tightening."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current global liquidity pulse (expansion/contraction phase).
- Macro signals for risk assets/BTC (tailwinds, headwinds).
- Historical parallels.
- Implications for BTC as liquidity barometer or cycle driver.

Example:  
"Global M2 growth re-accelerating to +7% YoY with central bank assets stabilizing—classic reflation tailwind similar to late-2020 setup. Correlation with BTC returns remains elevated (~0.8 over 3 years), supporting liquidity-driven upside thesis. Watch for sustained credit impulse as confirmation of broader risk-on regime."

### Data Notes
- Sources: IMF (pages browsed: list URLs); FRED/supplements if used (list series/URLs)
- Timestamp: As of [current date/time UTC]
- Limitations: Note if proxies are aggregated/estimated, data lags (e.g., quarterly), or sources partial—and confirm cross-verification.
```

## Integration Notes
- Feeds into `macroOverlaysSpecialist` for global liquidity context
- Provides macro regime signals (liquidity expansions/contractions)
- Complements FRED/Zillow (#9) with broader global perspective
- Lower priority (Tier 4) - advanced macro context

## Performance Notes
- Prioritize broad money/liquidity aggregates (use best-available proxy if exact global M2 unavailable)
- Correlations simple and descriptive (focus on directional relationship, not causation)
- Data may be lagged (quarterly reports)

---

## Methodology & Framework

**Key Concepts:**
- **Global Liquidity Proxies**: Understanding the role of aggregated M2 money supply, central bank assets, credit growth, and financial conditions indices in macroeconomic analysis.
- **Correlation Analysis**: Utilizing statistical methods to assess the relationship between liquidity indicators and Bitcoin price movements.
- **Historical Context**: Comparing current liquidity conditions with past economic regimes to identify patterns and trends.
- **Liquidity Cycle Dynamics**: Recognizing how liquidity expansions (tailwinds) and contractions (headwinds) influence risk appetite and asset prices.

**Analytical Approach:**
- Begin by systematically gathering data on global liquidity indicators from credible sources such as IMF and FRED. Focus on monthly and quarterly time frames for comprehensive insights.
- Employ correlation techniques, specifically Pearson coefficients, to quantify the relationship between liquidity measures and Bitcoin prices, thereby establishing a data-driven narrative around market movements.
- Contextualize findings within broader economic cycles, emphasizing the contrast between liquidity expansions and contractions to better understand their implications for Bitcoin and risk assets.

**Pattern Recognition:**
- Look for recurring trends between liquidity measures and Bitcoin price responses during different economic regimes (e.g., post-2008 QE, 2020-2021 liquidity flood). 
- Identify signal patterns indicating potential turning points in risk appetite based on the direction and magnitude of liquidity changes.
- Monitor correlations that shift over time, as they can reflect evolving market dynamics, particularly during regime shifts.

**Strategic Framework:**
- Apply this framework to assess current market conditions by analyzing recent liquidity trends and their potential impact on Bitcoin and other risk assets. 
- Use insights from correlation analyses to anticipate market movements, developing a proactive strategy that aligns with liquidity cycles.
- Regularly update the framework with new data and refine your understanding of macroeconomic indicators to maintain relevance in a rapidly changing financial landscape.

**Important Notes:**
- The focus should remain on methodological rigor and analytical clarity rather than specific numerical outcomes or historical dates.
- Extract actionable insights that can be applied to current market evaluations and investment strategies, ensuring adaptability to ongoing economic developments.
- Keep the approach concise and focused to facilitate ease of application in real-time analysis.

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
*Source: imf.org, fred.stlouisfed.org*
