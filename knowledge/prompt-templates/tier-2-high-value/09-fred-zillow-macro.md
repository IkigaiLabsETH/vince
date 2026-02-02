# Prompt #9: Zillow/FRED (Macro Overlays - Real Estate in BTC)

**Priority**: Tier 2 - High Value  
**Specialist**: `macroOverlaysSpecialist`  
**Data Source**: FRED (Federal Reserve Economic Data), Zillow, Census Bureau, tradingeconomics.com

## Core Objectives
- Track Bitcoin's purchasing power against US real estate (median home prices)
- Calculate how many BTC it takes to buy a median US home
- Analyze 5-year trend (decreasing = BTC purchasing power increasing)
- Provide macro regime signal for strike selection

## Tool Usage Strategy

- `web_search` OR `browse_page` on:
  - FRED: https://fred.stlouisfed.org/ (search for home price indices)
  - Zillow Research: https://www.zillow.com/research/
  - Census Bureau, tradingeconomics.com, macrotrends.net
  - OR sources that directly visualize "[asset description] in Bitcoin" ratio
- Instructions: "Find current median US home price (in USD) and current BTC price (in USD). If available, find historical trends or existing charts/articles showing 'median home price in Bitcoin' or 'how many BTC to buy a home' over the past 5 years. Prioritize sources that directly provide or visualize the ratio (home price ÷ BTC price) to avoid manual calculation. Focus on national-level data (not regional)."

## Output Format

```markdown
# Bitcoin Purchasing Power vs US Real Estate – [Current Date]

**Current Value**
As of [latest date], a median US home costs roughly X BTC.

**5-Year Trend**
In [start period, e.g., January 2021], it took around Y BTC; today it's down to X BTC, a decrease of Z%.

**Insight**
This [upward/downward] trend indicates BTC has [increased/decreased] its purchasing power against US real estate, meaning [fewer/more] bitcoins are needed to buy a median home compared to 5 years ago.

**Explanatory Notes**
[1-2 brief notes on impact of BTC price appreciation vs home price growth, or market cycle influences]
```

## Integration Notes
- Feeds into `macroOverlaysSpecialist` for macro context
- Provides regime signal (BTC outperforming real assets = risk-on, underperforming = risk-off)
- Can inform strike selection (macro risk levels)

## Performance Notes
- Focus on national-level data (not regional)
- Prioritize sources with direct ratio visualization (avoid manual calculation)
- Keep response factual, sourced, easy to read (no tables, JSON, charts)

---

## Methodology & Framework

**Key Concepts:**
- **Bitcoin Purchasing Power Analysis**: Understanding how Bitcoin’s value changes in relation to real estate prices, specifically median home prices.
- **Macro Regime Signals**: Identifying market conditions (risk-on vs. risk-off) through the performance of Bitcoin relative to traditional assets like real estate.
- **Data Source Utilization**: Leveraging reliable economic data sources (FRED, Zillow, Census Bureau) for accurate market assessments.

**Analytical Approach:**
- Adopt a comparative analysis framework that assesses Bitcoin’s purchasing power over time against the median home price in the U.S. This involves calculating the ratio of home prices to Bitcoin prices, which allows for a clear understanding of how many bitcoins are required to purchase a median home. The five-year trend analysis can further inform the direction of Bitcoin's purchasing power, indicating whether it is increasing or decreasing.

**Pattern Recognition:**
- Look for trends in the ratio of median home prices to Bitcoin prices. A decreasing ratio signifies that Bitcoin is gaining purchasing power, while an increasing ratio indicates a decline. Identify the macroeconomic conditions that might affect these trends, including interest rates, inflation, and broader economic cycles.

**Strategic Framework:**
- Utilize the insights derived from the purchasing power analysis to inform investment strategies. For instance, if Bitcoin shows signs of outperforming real estate, it may signal a risk-on environment, suggesting a favorable time to enter the Bitcoin market. Conversely, if Bitcoin is underperforming, it may indicate a risk-off scenario, prompting a reevaluation of investments.

**Important Notes:**
- Ensure to focus on the methodology rather than specific numerical values or dates. 
- Extract and apply the "how to think" approach to current market conditions, remaining agile in response to the macroeconomic environment.
- Keep the analysis actionable, leveraging data insights to guide strategic decision-making in real time.

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
