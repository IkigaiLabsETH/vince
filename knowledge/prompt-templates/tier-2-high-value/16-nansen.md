---
tags: [general]
agents: [eliza]
---
# Prompt #16: Nansen (Smart Money Flows & Wallet Activity)

**Priority**: Tier 2 - High Value  
**Specialist**: `institutionalSpecialist`  
**Data Source**: Nansen.ai (public research and dashboards)

## Core Objectives
- Track Bitcoin smart money movements: labeled entity flows (smart money wallets, funds, institutions, whales, miners)
- Analyze exchange deposits/withdrawals, net inflows/outflows, holder distribution (direct BTC or wBTC on Ethereum)
- Detect signals: institutional/whale conviction, accumulation/distribution, regime shifts
- Compare to historical cycle analogs (2021 whale games, 2023 bottom accumulation, post-ETF institutional ramps)

## Tool Usage Strategy

### Primary: Nansen Research & Dashboards
- `browse_page` on:
  - Research hub: `https://www.nansen.ai/research`
    - Instructions: "List the 10 most recent reports/articles (title, publication date, short description). Identify and prioritize any focused on Bitcoin, smart money, on-chain flows, whale activity, exchange movements, or market regimes. Provide direct URLs to the full reports."
  - Individual reports: Browse relevant report URLs
    - Instructions: "Summarize Bitcoin-specific sections (direct BTC or wBTC). Extract key quoted metrics (e.g., smart money net flow +X K BTC last week, whale deposits $Y B, top entity moves, holder concentration). Pull historical context or chart descriptions."
  - Public dashboards: `https://app.nansen.ai/` or BTC/wBTC pages
    - Instructions: "Extract free/public metrics: smart money inflows/outflows, exchange flows, labeled wallet activity, holder distribution if visible without login."

### Supplement
- CryptoQuant free charts: `https://cryptoquant.com/asset/btc`
- Glassnode free on-chain data or Arkham public entity tracking
- `web_search`: "Nansen Bitcoin smart money report latest 2025/2026" OR "Nansen BTC whale flows"

### Analysis
- `code_execution` to:
  - Parse/clean extracted transaction/flow lists
  - Calculate net flows, weekly aggregates, outlier detection
  - Generate trend descriptions

## Output Format

```markdown
### Nansen BTC Smart Money Snapshot
- **Smart Money Net Flow** (7d/30d): +/− X,XXX BTC (~$Y.YY B)
- **Whale Activity** (e.g., >1k BTC moves, 24h): Z transactions ($A.AA B volume)
- **Exchange Net Flows** (24h/7d): +/− B,BBB BTC (positive = net deposits)
- **Top Labeled Moves**: e.g., "Funds +C.CK BTC; Miners -D.DK BTC"
- **Holder Concentration** (wBTC if relevant): Top 10: EE.EE%

### 30–90 Day Trends (Where Available)
| Date/Period | Smart Money Net (BTC) | Exchange Net (BTC) | Whale Tx Volume ($B) | Key Notes                          |
|-------------|-----------------------|--------------------|----------------------|------------------------------------|
| YYYY-MM-DD  | +/− X,XXX             | +/− Y,YYY          | Z.ZZ                 | e.g., "Smart money inflow spike"   |
| ...         | ...                   | ...                | ...                  | ...                                |

(Limit to 10–15 rows max; prioritize recent weeks + major entity moves.)

### Cross-Verification (Alternatives)
- Alignment: e.g., "Flows consistent with CryptoQuant exchange data."
- Supplements if primary limited (e.g., paywalled deep labels).

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current smart money pulse (accumulation vs. distribution).
- Regime signals (net outflows = conviction, whale deposits = caution).
- Historical parallels (e.g., similar to 2023 institutional stacking).
- Implications for BTC spot pressure or cycle phase.

Example:  
"Smart money wallets showing consistent net inflows (+20K BTC over 30d) with reduced exchange deposits—strong accumulation signal from labeled institutions/whales. Whale transaction volume subdued, contrasting 2021 distribution peaks. Supports bullish conviction amid spot consolidation."

### Data Notes
- Sources: Nansen (pages browsed: list URLs, e.g., research reports); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Free/public access often limited to reports/surface metrics—deep wallet labels typically pro-only; wBTC/Ethereum data may proxy direct BTC; confirmed with alternatives where needed.
```

## Integration Notes
- Primary input for `institutionalSpecialist` (smart money tracking)
- Can be combined with Dune (#6) for "Smart Money + Custom Queries" agent (per Grok suggestion)
- Provides institutional conviction signals (net inflows = bullish, deposits = caution)
- Can inform strike selection (smart money positioning affects price pressure)

## Performance Notes
- Free/public access often limited to reports/surface metrics (deep labels pro-only)
- Prioritize labeled/smart money flows (treat unlabeled large moves cautiously)
- Net exchange outflows as bullish signal (self-custody shift)
- If Nansen public data sparse, clearly state and rely heavily on verified report summaries/alternatives

---

## Methodology & Framework

**Key Concepts:**
- **Smart Money Identification**: Distinguishing between different types of wallets (e.g., institutions, whales) to understand market sentiment.
- **On-Chain Analysis**: Utilizing blockchain data to track asset movements and flow dynamics.
- **Regime Shifts**: Recognizing changes in market behavior, particularly around accumulation and distribution phases.
- **Historical Contextualization**: Comparing current data trends to historical patterns to derive insights about market cycles.

**Analytical Approach:**
- Adopt a systematic approach to monitoring Bitcoin’s smart money flows, focusing on labeled wallet activities that represent institutional behavior. Analyze transaction patterns to assess net inflows and outflows, which serve as indicators of market sentiment. Utilize tools like Nansen.ai to gather real-time data and support claims with historical analogs, allowing for a comprehensive view of market dynamics.

**Pattern Recognition:**
- Look for significant deviations in wallet activities, such as increased whale transactions or unusual exchange net flows. Identify accumulation signals indicated by consistent net inflows and decreased exchange deposits, contrasted with distribution signals demonstrated through large outflows or spikes in exchange deposits. Recognizing these patterns can inform predictions about market trends and potential price movements.

**Strategic Framework:**
- Develop a framework for ongoing analysis that includes real-time tracking of smart money movements, combined with historical comparisons to establish a narrative around current market conditions. Maintain vigilance for regime shifts by correlating smart money behavior with external market factors (e.g., macroeconomic signals or regulatory changes). Regularly update insights and forecasts based on the evolving data landscape, ensuring adaptability to changing market conditions.

**Important Notes:**
- Emphasize a data-driven approach, leveraging advanced analytics and tools to derive actionable insights.
- Focus on understanding the underlying behaviors of market participants rather than just tracking historical data.
- Maintain a forward-looking perspective, utilizing pattern recognition to anticipate shifts in market sentiment and potential investment opportunities.

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
*Source: nansen.ai*
