# Prompt #12: TOTAL2/TOTAL3 (Altcoin Market Caps & BTC Dominance)

**Priority**: Tier 3 - Supporting  
**Specialist**: `fundamentalsSpecialist`, `cycleContextSpecialist`  
**Data Source**: CoinGecko API (market cap calculations)

## Core Objectives
- Provide accurate snapshots of TOTAL2 (total crypto market cap excluding BTC) and TOTAL3 (total crypto market cap excluding BTC and ETH)
- Calculate BTC dominance precisely: `BTC Dominance = (BTC Market Cap / Total Crypto Market Cap) × 100`
- Deliver historical trends over past 12 months (sample to ~26-52 points max for readability)
- Highlight altcoin vs. BTC performance and altseason signals
- Assess Bitcoin dominance and liquidity rotation patterns

## Tool Usage Strategy

### Primary: CoinGecko API
- `code_execution` with Python `requests`:
  - Endpoint: `https://api.coingecko.com/api/v3/global` for current global metrics
  - Individual coin historical data for BTC, ETH
  - Reconstruct TOTAL2 and TOTAL3 from components:
    - `TOTAL2 ≈ Total Market Cap - BTC Market Cap`
    - `TOTAL3 ≈ Total Market Cap - BTC Market Cap - ETH Market Cap`
- For historical data: Pull daily market cap series, sample to bi-weekly or monthly averages (keep tables concise)
- Round large numbers sensibly (billions with 1-2 decimals, dominance to 2 decimals)

## Output Format

```markdown
### Current Snapshot
- **Total Crypto Market Cap**: $X.XX T
- **BTC Market Cap**: $X.XX T
- **ETH Market Cap**: $X.XX T
- **TOTAL2 (Alts ex-BTC)**: $X.XX T
- **TOTAL3 (Alts ex-BTC/ETH)**: $X.XX T
- **BTC Dominance**: XX.XX%

### 12-Month Trends
| Date       | Total Market Cap ($T) | TOTAL2 ($T) | TOTAL3 ($T) | BTC Dominance (%) |
|------------|-----------------------|-------------|-------------|-------------------|
| YYYY-MM-DD | X.XX                  | X.XX        | X.XX        | XX.XX             |
| ...        | ...                   | ...         | ...         | ...               |

(Include ~12-24 rows max; use monthly endpoints or bi-weekly sampling for clarity.)

### Vibes & Insights
A concise 2-4 sentence narrative highlighting key trends, comparisons to historical cycles (e.g., 2017, 2021), and potential implications for altseason or BTC liquidity absorption.

Example:  
"TOTAL3 has dipped 15% in the last quarter while BTC dominance climbed to 56%—classic sign of BTC sucking up liquidity ahead of a potential alt rotation, similar to late 2017."

### Visual/Plot Notes (Optional)
If any sharp anomalies, breakouts, or divergences appear:
- Use pandas/matplotlib in `code_execution` to analyze.
- Describe key plot insights in text (e.g., "TOTAL3 shows a clear descending triangle vs. rising BTC dominance").
- Do not output raw images unless explicitly supported; keep everything text-based.
```

## Integration Notes
- Feeds into `fundamentalsSpecialist` for market structure context
- Used by `cycleContextSpecialist` for altseason/dominance cycle analysis
- Provides regime signal: rising dominance = BTC strength, falling = alt rotation risk
- Can inform strike selection (dominance trends affect volatility expectations)

## Performance Notes
- Prioritize accuracy over speed (double-check calculations)
- Always cite data source and timestamp
- If data temporarily unavailable, note clearly and suggest alternatives
- Cache or reuse data within session to avoid redundant calls

---

## Methodology & Framework

**Key Concepts:**
- **Market Cap Calculations**: Understanding TOTAL2 and TOTAL3 to assess market segments excluding major cryptocurrencies (BTC and ETH).
- **BTC Dominance Measurement**: The significance of BTC dominance as an indicator of market trends and liquidity shifts.
- **Historical Trend Analysis**: Sampling and analyzing historical data for insights into market cycles and performance patterns.
- **Liquidity Rotation**: Identifying shifts between BTC and altcoins as a sign of market sentiment and potential altseason signals.
- **Data Integrity and Accuracy**: Emphasizing the importance of accurate data collection and reporting to inform analysis.

**Analytical Approach:**
- Approach the crypto market by dissecting total market capitalization into its components (BTC, ETH, and altcoins) to derive insights on market dynamics. Use APIs for accurate, real-time data collection while ensuring the reliability of historical data for trend analysis. Focus on how changes in BTC dominance can indicate broader market behavior, such as liquidity absorption by BTC or potential shifts to altcoins.

**Pattern Recognition:**
- Look for trends in BTC dominance alongside fluctuations in TOTAL2 and TOTAL3. Key signals include rising BTC dominance potentially indicating a liquidity squeeze on altcoins, while declining dominance could suggest a rotation towards altcoins. Historical comparisons, such as those from previous market cycles (e.g., 2017 and 2021), can provide context for current trends.

**Strategic Framework:**
- Apply this analytical framework to current market conditions by continuously monitoring BTC dominance and market cap metrics. Use historical data to forecast potential market movements and adjust strategies accordingly. For instance, a rising BTC dominance might suggest a conservative approach, while a decline could prompt a focus on altcoin investment opportunities. Incorporate these insights into trading strategies and decision-making processes to enhance market engagement.

**Important Notes:**
- Prioritize methodology over specific data points or dates, focusing on the "how to think" aspect of market analysis.
- Ensure that insights derived can be actionable and relevant to ongoing market conditions, adapting as necessary to current dynamics.
- Maintain clarity and precision in data reporting and analysis to support informed decision-making.

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
*Source: CoinGecko API*
