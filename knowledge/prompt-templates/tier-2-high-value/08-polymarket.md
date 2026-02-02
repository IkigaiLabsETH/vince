# Prompt #8: Polymarket (Prediction Markets Analysis)

**Priority**: Tier 2 - High Value  
**Specialist**: `regimeAggregatorSpecialist`, `polymarketSpecialist`  
**Data Source**: Polymarket prediction markets

## Core Objectives
- Extract crypto and macro sentiment from active Polymarket prediction markets
- Cover **all relevant markets**: BTC, ETH, SOL price targets, regulatory, macro events
- Categorize by time horizons: Short-term (1–7 days), Mid-term (1 week–3 months), Long-term (3–12 months)
- Translate prediction market odds into actionable signals
- Act as market expectation proxy for trading decisions

## Supported Categories
- **Crypto Price**: BTC, ETH, SOL reaching price thresholds
- **Regulatory**: ETF approvals, SEC actions, legislation
- **Macro**: Fed rates, elections, economic events affecting crypto
- **Protocol-Specific**: Ethereum upgrades, Solana milestones, etc.

## Tool Usage Strategy

### Get Current BTC Price
- `web_search`: "current bitcoin price USD"
- OR `browse_page`: https://www.coingecko.com/en/coins/bitcoin or https://coinmarketcap.com/currencies/bitcoin/
  - Instructions: "Extract the current live Bitcoin price in USD."

### Fetch Polymarket BTC Markets
- `browse_page` on:
  - https://polymarket.com/crypto
  - https://polymarket.com/bitcoin
  - https://polymarket.com/search?query=bitcoin+price
  - Instructions: "List all active Bitcoin price-related markets. For each market, extract: Full market title/question, Resolution date, Yes probability % (current Yes share price), No probability %, Total volume (in USD), Liquidity (if available). Prioritize markets about BTC reaching specific price thresholds (e.g., 'Will Bitcoin be above $X on DATE?') or price range markets. Ignore unrelated or resolved markets."

### Fallback Search
- `web_search`: "Polymarket Bitcoin price markets odds" OR "Polymarket BTC $100k $150k predictions"

### Analysis (if needed)
- `code_execution` to:
  - Average probabilities across similar markets
  - Calculate implied expected price (if multiple thresholds)
  - Compute sentiment score (0–100 scale: 50 = neutral, >70 strongly bullish, <30 strongly bearish)

## Output Format

```markdown
# BTC Sentiment Snapshot – Polymarket (as of [CURRENT DATE])

**Current BTC Price**: $[PRICE] USD

## Short-Term Sentiment (1–7 days)
- [Market title or summary]: [Yes %]% chance [event] (Volume: $[VOLUME])
- Overall: [Bullish / Moderately Bullish / Neutral / Moderately Bearish / Bearish] – "[brief 1-sentence explanation]"

## Mid-Term Sentiment (1 week–3 months)
- [Market 1]: [Yes %]% chance [event] (Volume: $[VOLUME])
- [Market 2 (if any)]: [Yes %]% chance [event] (Volume: $[VOLUME])
- Overall: [Bullish / Moderately Bullish / Neutral / Moderately Bearish / Bearish] – "[brief 1-sentence explanation]"

## Long-Term Sentiment (3–12 months)
- [Market 1]: [Yes %]% chance [event] (Volume: $[VOLUME])
- [Market 2 (if any)]: [Yes %]% chance [event] (Volume: $[VOLUME])
- Overall: [Bullish / Moderately Bullish / Neutral / Moderately Bearish / Bearish] – "[brief 1-sentence explanation, e.g., Market pricing ~65% chance of $150k+ by end of 2026]"

**Key Insight**: [One-sentence overall market vibe across horizons]
```

## Integration Notes
- Feeds into `regimeAggregatorSpecialist` for regime context
- Can inform `thesisValidatorSpecialist` (market expectations vs fair value)
- Short-term sentiment (1–7 days) directly relevant for 7-day options

## Performance Notes
- Cross-check multiple markets per horizon (favor higher-volume markets)
- Binary markets: Yes % = probability of hitting that price
- Range markets: Extract highest-probability bins and implied expected price

---

## Methodology & Framework

**Key Concepts:**
- **Prediction Markets**: Utilize active markets to gauge sentiment on various crypto and macroeconomic events.
- **Time Horizon Categorization**: Segment analysis into short-term, mid-term, and long-term to align trading decisions with market expectations.
- **Sentiment Scoring**: Translate market odds into a sentiment score to facilitate actionable insights.

**Analytical Approach:**
- Start by identifying the relevant prediction markets for cryptocurrencies and macro events. Employ a structured data-gathering approach using specific queries to extract current market conditions and probabilities.
- Utilize comparative analysis by averaging probabilities across similar markets to develop a comprehensive view of sentiment. This enables a clearer understanding of market expectations.
- Implement a scoring system (0–100) to quantify sentiment, providing a straightforward metric that helps in making informed trading decisions.

**Pattern Recognition:**
- Look for consistent trends in market probabilities across different time horizons. High probabilities in short-term markets may indicate immediate bullish or bearish sentiment, while mid-term and long-term signals can reveal broader market expectations.
- Identify significant shifts in sentiment scores that may correlate with upcoming regulatory events or macroeconomic changes, which can serve as leading indicators for market movements.

**Strategic Framework:**
- Integrate findings from prediction market analyses into a broader trading strategy that considers risk tolerance and market conditions. Use sentiment scores as a filter for trade selection, focusing on high-probability events while maintaining awareness of potential market volatility.
- Regularly update and assess sentiment snapshots to adapt strategies in real-time, ensuring alignment with evolving market dynamics. This ongoing evaluation will optimize decision-making processes, particularly for time-sensitive trades such as options.

**Important Notes:**
- Emphasize the methodology of extracting and interpreting market sentiment rather than focusing on historical numerical data.
- Strive for actionable insights that can be applied to current market situations, enabling proactive and informed trading strategies.
- Keep the approach flexible to accommodate new data and changing market conditions while adhering to the structured framework outlined.

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
