# Prompt #23: CME Group (Futures Data & Institutional Vibes)

**Priority**: Tier 2 - High Value  
**Specialist**: `derivativesSpecialist`, `institutionalSpecialist`  
**Data Source**: CME Group official pages (regulated futures)

## Core Objectives
- Fetch Bitcoin futures data from CME: open interest, volume trends, basis dynamics (contango/backwardation), commitment of traders (COT)
- Assess institutional sentiment: record OI as conviction proxy, positive basis as bullish term structure
- Compare to aggregate derivatives (Coinglass) and historical analogs (2021 bull OI peaks, 2024 ETF-driven basis expansion)
- Emphasize CME's regulated/institutional nature vs. offshore venues

## Tool Usage Strategy

### Primary: CME Group Official Pages
- `browse_page` on:
  - Quotes/Overview: `https://www.cmegroup.com/markets/cryptocurrencies/bitcoin/bitcoin.html`
    - Instructions: "Extract current front-month price, volume, open interest (total, standard + micro), and globex/settlement details."
  - Volume & OI: `https://www.cmegroup.com/markets/cryptocurrencies/bitcoin/bitcoin.volume.html` and `...bitcoin.open-interest.html`
    - Instructions: "Extract latest daily/weekly volume and OI totals (in contracts and USD notional if shown), changes, and historical chart summaries."
  - Settlements: `https://www.cmegroup.com/markets/cryptocurrencies/bitcoin/bitcoin.settlements.html`
    - Instructions: "Extract recent settlement prices by contract month; calculate basis as front-month premium/discount to spot BRR or current spot price if referenced."
  - Micro futures: `https://www.cmegroup.com/markets/cryptocurrencies/bitcoin/micro-bitcoin.html`
  - COT reports: `https://www.cmegroup.com/tools-information/quikstrike/bitcoin-commitment-of-traders.html`
    - Instructions: "Extract leveraged funds net positioning (long/short) for BTC futures."

### Supplement
- Coinglass CME-specific: `https://www.coinglass.com/pro/futures/Cme`
- `web_search`: "CME Bitcoin futures open interest latest" OR "CME BTC COT report 2025/2026"
- CoinGecko for spot price (basis calculation)

### Analysis
- `code_execution` to:
  - Parse/clean extracted data
  - Convert contracts to USD notional (1 standard = 5 BTC, micro = 0.1 BTC)
  - Calculate basis % (futures price - spot)/spot
  - Aggregate trends, changes, rolling averages

## Output Format

```markdown
### CME BTC Futures Snapshot
- **Aggregate Open Interest**: X,XXX contracts (~$Y.YY B notional) | Standard: A.AA K | Micro: B.BB K (24h Δ: +/− C.C%)
- **Daily Volume**: Z,ZZZ contracts (~$W.WW B)
- **Front-Month Price**: $VV,VVV (Basis to Spot: +/− U.UU%)
- **COT Positioning** (latest weekly, if available): Leveraged Funds Net Long: +/− T.TK contracts

### 30–90 Day Trends
| Date       | OI (Contracts, K) | OI ($B) | Volume (Contracts, K) | Basis (%) | Key Notes                     |
|------------|-------------------|---------|-----------------------|-----------|-------------------------------|
| YYYY-MM-DD | X.XX              | Y.YY    | Z.ZZ                  | +/− A.AA  | e.g., "OI ATH"                |
| ...        | ...               | ...     | ...                   | ...       | ...                           |

(Limit to 12–20 rows max; prioritize recent weeks + major turning points.)

### Comparison to Aggregate (Coinglass)
- CME share: "OI represents ~XX% of total perp/futures market; basis tighter/looser than offshore."
- Divergences: e.g., "CME showing stronger long positioning vs. neutral aggregate funding."

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current institutional futures pulse (OI buildup, basis direction).
- Regime signals (positive basis = bull conviction, flattening = caution).
- Historical parallels (e.g., similar to 2024 ETF inflows or 2021 leveraged peaks).
- Implications for BTC spot or broader regulated vs. offshore flows.

Example:  
"Record CME OI with persistent positive basis (~2–4%) signals strong institutional roll demand and bullish term structure—mirroring 2024 post-ETF launch phase. Volume steady amid spot highs, with leveraged funds net long growing. Contrasts milder offshore perp funding, highlighting regulated conviction."

### Data Notes
- Sources: CME Group (pages browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Note if data is end-of-day only, micro/standard separated, or COT weekly lag—and confirm with alternatives.
```

## Integration Notes
- Feeds into `derivativesSpecialist` for regulated futures context
- Complements `institutionalSpecialist` with COT positioning data
- Can be merged with #13 Coinglass, #29 Deribit into "Derivatives Pulse" agent (per Grok suggestion)
- Provides institutional conviction signals (CME basis = regulated market sentiment)

## Performance Notes
- CME is regulated venue (institutional focus) vs offshore
- Basis as key proxy (positive contango typically bullish for institutional carry)
- Always double-check extracted numbers (contract sizing, notional)

---

## Methodology & Framework

**Key Concepts:**
- **Open Interest (OI)**: A measure of market activity indicating the number of outstanding contracts, serving as a conviction proxy for institutional sentiment.
- **Basis Dynamics**: The relationship between futures prices and spot prices, indicating market sentiment (contango vs. backwardation).
- **Commitment of Traders (COT)**: A report detailing net positioning of different trader categories, reflecting institutional sentiment towards Bitcoin futures.
- **Data Comparison & Historical Analogs**: Analyzing current data against historical trends to assess market conditions and potential futures movements.
- **Regulated vs. Offshore Markets**: Understanding the implications of trading venues on market behavior and institutional confidence.

**Analytical Approach:**
- Utilize a structured data extraction process from reliable sources (CME Group, Coinglass) to gather relevant market metrics on Bitcoin futures. 
- Assess market sentiment by analyzing OI and basis dynamics in conjunction with COT reports, allowing for a comprehensive view of institutional positioning.
- Frame analysis around recent trends and historical parallels, identifying patterns that guide predictions of market behavior.

**Pattern Recognition:**
- Look for increasing open interest alongside a positive basis as a bullish signal, indicating strong institutional interest and potential upward price movement.
- Monitor divergences between CME data and aggregate derivatives to identify shifts in market sentiment that may signal future price volatility.
- Recognize historical analogs, such as previous bull markets, to contextualize current market conditions and potential future scenarios.

**Strategic Framework:**
- Apply a systematic approach to data collection and analysis, prioritizing the extraction of OI, volume, and basis information to inform investment strategies.
- Use insights gained from the data to identify strategic entry or exit points in the market, particularly during periods of significant shifts in institutional sentiment.
- Regularly update your analysis framework to incorporate new data and evolving market conditions, ensuring adaptability in strategy and decision-making.

**Important Notes:**
- Emphasize the importance of methodology in interpreting market data rather than focusing solely on specific numbers or historical events.
- Adopt a proactive mindset that continuously seeks patterns and signals to inform trading decisions.
- Ensure the framework is actionable, enabling swift responses to market changes while maintaining a clear understanding of underlying principles.

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
*Source: cmegroup.com*
