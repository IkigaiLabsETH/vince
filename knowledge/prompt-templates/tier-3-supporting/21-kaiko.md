# Prompt #21: Kaiko (Market Data, Order Books & Liquidity Metrics)

**Priority**: Tier 3 - Supporting  
**Specialist**: `liquiditySpecialist`  
**Data Source**: Kaiko.com (CEX market quality & liquidity)

## Core Objectives
- Assess CEX market quality: aggregated order book depth, slippage tolerance, trading volumes across venues, realized volatility, market tightness
- Detect signals: trading conditions, institutional accessibility, regime shifts (deepening liquidity = bull conviction, thinning depth = volatility ahead)
- Compare CEX liquidity to DEX context (via DEX Screener)
- Flag report-based limitations and use best-available public metrics

## Tool Usage Strategy

### Primary: Kaiko Research & Dashboards
- `browse_page` on:
  - Research hub: `https://www.kaiko.com/research` or `https://research.kaiko.com/`
    - Instructions: "List the 10 most recent reports/articles (title, publication date, short description). Identify and prioritize any focused on Bitcoin, liquidity, market depth, order books, volatility, or CEX volumes. Provide direct URLs to the full reports."
  - Data dashboards: `https://www.kaiko.com/data` or subcategory pages
    - Instructions: "Focus on BTC metrics: extract current aggregated depth (e.g., 2% market depth, slippage for $1M/$10M trades), venue rankings, volatility indices, and any visible charts."
  - Individual reports: Browse recent report URLs
    - Instructions: "Summarize BTC-specific liquidity sections. Extract key quoted metrics (e.g., total 10bps depth $X M, average slippage Y bps for sized orders, top exchanges by volume/share, realized vol Z%). Pull historical context or chart descriptions."

### Supplement
- DEX Screener: `https://dexscreener.com/` or BTC pairs
  - Instructions: "Extract aggregate DEX volume/liquidity for wBTC pairs as context."
- `web_search`: "Kaiko Bitcoin liquidity report latest 2025/2026" OR "Kaiko CEX order book depth Bitcoin"

### Analysis
- `code_execution` to:
  - Parse/clean extracted data
  - Calculate changes (WoW depth growth, volatility averages)
  - Aggregate venue shares or slippage curves
  - Generate trend descriptions

## Output Format

```markdown
### Kaiko BTC Liquidity Snapshot
- **Aggregated Order Book Depth** (e.g., ±2% or 10bps): $X.XX B total (bid $Y.Y B / ask $Z.Z B)
- **Slippage Estimate** (e.g., for $10M trade): A.A bps average
- **Top Venue Volumes** (24h/7d): e.g., Binance XX%, Coinbase YY%
- **Realized Volatility** (e.g., 30d): VV.V%
- **Key Highlights**: e.g., "Depth at multi-month highs; spreads tightening"

### 30–90 Day Trends (Where Available)
| Date/Period | 2% Depth ($B) | Slippage (bps, $10M) | Realized Vol (%) | Key Notes                     |
|-------------|---------------|---------------------|-----------------|-------------------------------|
| YYYY-MM-DD  | X.XX          | Y.Y                 | Z.Z             | e.g., "Depth surge post-dip"  |
| ...         | ...           | ...                 | ...             | ...                           |

(Limit to 10–15 rows max; prioritize recent weeks + major shifts.)

### Comparison to DEX (DEX Screener)
- Context: e.g., "CEX depth dominates ($XB vs. ~$YM on major DEX pools); better for large trades."
- Divergences: e.g., "DEX volume share rising but liquidity fragmented."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current trading liquidity pulse (depth, slippage, vol regime).
- Regime signals (deepening = institutional ease, thinning = fragility).
- Historical parallels (e.g., similar to 2024 recovery or 2021 tight markets).
- Implications for BTC spot execution or volatility risks.

Example:  
"Aggregated depth grinding higher with slippage at yearly lows—strong liquidity tailwind supporting large-order execution and reduced frag risk. Realized vol trending down 20% MoM signals complacency phase, akin to mid-2024 pre-breakout calm. CEX remains far superior to DEX for sized trades."

### Data Notes
- Sources: Kaiko (pages browsed: list URLs, e.g., research reports); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Public/free data often report-based (periodic, not real-time); note if metrics aggregated or venue-sampled.
```

## Integration Notes
- Feeds into `liquiditySpecialist` for CEX market quality analysis
- Complements DEX Screener (#3) with CEX-focused liquidity metrics
- Provides institutional accessibility signals (depth = large trade capability)
- Can inform strike selection (liquidity depth affects execution quality)

## Performance Notes
- Public/free data often report-based (periodic updates)
- Prioritize aggregated CEX metrics (highlight venue skew only if extreme)
- Cross-verify with DEX Screener for complete liquidity picture

---

## Methodology & Framework

**Key Concepts:**
- **Market Quality Assessment:** Evaluating CEX (Centralized Exchange) market conditions through metrics like order book depth and slippage.
- **Signal Detection:** Identifying trading conditions and potential market regime shifts based on liquidity metrics.
- **Comparative Analysis:** Juxtaposing CEX liquidity with decentralized exchange (DEX) contexts to provide a holistic market view.
- **Data Aggregation and Interpretation:** Systematically collecting and analyzing data to derive actionable insights regarding market trends.

**Analytical Approach:**
To effectively analyze market liquidity and quality, leverage a structured approach that synthesizes quantitative data and qualitative insights. Begin by defining clear objectives that focus on key liquidity indicators and market conditions. Utilize reliable data sources such as Kaiko for robust insights on order books and trading volumes. Adopt a systematic data extraction and analysis methodology, ensuring that you continuously update your understanding of market dynamics as conditions evolve.

**Pattern Recognition:**
Look for specific patterns that indicate shifts in liquidity and volatility. For instance, an increase in aggregated order book depth may signal bullish market conviction, while a thinning depth can forecast potential volatility. Monitor changes in slippage rates, which can indicate market fragility or strength. Recognizing historical parallels can also provide context for current market behavior, guiding predictions about future movements.

**Strategic Framework:**
Apply this analytical thinking to inform trading strategies and risk management. For instance, when aggregated depth is high and slippage is low, consider positioning for larger trades, as this suggests a favorable market environment. Conversely, if depth is decreasing and slippage is rising, exercise caution and reassess trading strategies, particularly for sizable transactions. Always maintain a comparative lens by analyzing how CEX conditions stack against DEX liquidity to inform your execution strategies.

**Important Notes:**
- Prioritize methodology over historical data, focusing on actionable insights relevant to current market conditions.
- Utilize a structured framework to ensure comprehensive market analysis, enabling informed decision-making based on liquidity dynamics.
- Keep the approach adaptable to changing market conditions, allowing for continuous refinement of strategies based on emerging data.

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
*Source: kaiko.com*
