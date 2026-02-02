# Prompt #28: Blockchain.com (Blockchain Metrics & Hash Rate)

**Priority**: Tier 3 - Supporting  
**Specialist**: `onChainHealthSpecialist`  
**Data Source**: Blockchain.com charts/explorer

## Core Objectives
- Assess network health, security (hash rate/difficulty), adoption/activity (transaction volume, fees), congestion (mempool)
- Detect signals: mining cycles, user growth, regime shifts (hash rate ATHs = miner conviction, tx spikes = retail/institutional activity)
- Compare to historical mining/adoption cycles (post-halving hash rate adjustments, 2021 bull tx peaks, 2022 bear lows)
- Highlight implications for network security and fundamental strength

## Tool Usage Strategy

### Primary: Blockchain.com Charts
- `browse_page` on:
  - Charts hub: `https://www.blockchain.com/explorer/charts` or `https://www.blockchain.com/charts`
    - Instructions: "List top BTC-relevant charts (e.g., hash-rate, difficulty, transactions-per-day, transaction-value, fees, mempool-size). Provide direct chart URLs and extract current values + short descriptions."
  - Specific charts:
    - Hash rate: `https://www.blockchain.com/charts/hash-rate`
      - Instructions: "Extract current hash rate (EH/s), 24h/7d change, and historical data points (date + value) for past 90+ days. Sample ~15-20 evenly spaced points if chart only."
    - Difficulty, Transactions, Fees/mempool: Similar approach for each chart

### Supplement
- Mempool.space: `https://mempool.space/`
- CoinMetrics free charts: `https://coinmetrics.io/community-network-data/`
- Glassnode free tier
- `web_search`: "Bitcoin hash rate latest Blockchain.com"

### Analysis
- `code_execution` to:
  - Parse/clean extracted text/tabular data
  - Calculate changes (MoM, YoY), averages, growth rates
  - Detect outliers (e.g., hash rate ATH, fee spikes >2x average)

## Output Format

```markdown
### BTC Network Metrics Snapshot
- **Block Height**: XXX,XXX
- **Hash Rate**: X.XX EH/s (7d Δ: +/− Y.Y%)
- **Difficulty**: Z.ZZ T (next adjustment est.: +/− A.A%)
- **Daily Transactions**: B.BB M (estimated USD value: ~$C.CC B)
- **Total Fees (24h)**: ~$D.DD M
- **Mempool Size**: E.E MB (F.FK transactions pending)

### 30–90 Day Trends
| Date       | Hash Rate (EH/s) | Daily Tx Count (M) | Est. Tx Value ($B) | Total Fees ($M) | Key Notes                     |
|------------|------------------|--------------------|--------------------|-----------------|-------------------------------|
| YYYY-MM-DD | X.XX             | Y.YY               | Z.ZZ               | A.AA            | e.g., "Hash rate ATH"         |
| ...        | ...              | ...                | ...                | ...             | ...                           |

(Limit to 12–20 rows max; prioritize recent weeks + major turning points like halvings, peaks.)

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current network health pulse (security, activity, congestion).
- Regime signals (miner capitulation risk, adoption growth, fee market maturity).
- Historical parallels (e.g., similar to 2021 bull run tx volume or post-2024 halving hash recovery).
- Implications for BTC fundamental strength or price sustainability.

Example:  
"Hash rate grinding to new ATHs with stable difficulty growth—strong miner conviction post-halving, contrasting 2022 capitulation lows. Transaction volume and USD value elevated but below 2021 peaks, with mempool clear suggesting no acute congestion. Supports robust network fundamentals amid spot consolidation."

### Data Notes
- Sources: Blockchain.com (charts browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Note if charts require sampling (approximate values), no real-time API, or data gaps—and confirm with alternatives.
```

## Integration Notes
- Feeds into `onChainHealthSpecialist` for network fundamentals
- Complements CoinMetrics (#18) with blockchain.com's perspective
- Provides hash rate/difficulty for security context
- Can inform strike selection (network health = fundamental support)

## Performance Notes
- Prioritize core security/adoption metrics (hash rate, tx volume)
- Always double-check extracted numbers (cross-chart consistency)
- Charts may require sampling (approximate values)

---

## Methodology & Framework

**Key Concepts:**
- **Network Health Assessment:** Evaluating the overall status of the blockchain network through metrics like hash rate, transaction volume, and fees.
- **Signal Detection:** Identifying key indicators such as mining cycles and user growth to gauge market sentiment and activity.
- **Historical Contextualization:** Analyzing current metrics against historical trends to identify regime shifts and market patterns.
- **Congestion Analysis:** Monitoring mempool size and transaction processing times to assess network congestion and operational efficiency.

**Analytical Approach:**
To effectively analyze blockchain metrics, employ a systematic approach that combines quantitative data extraction with qualitative insights. Start by gathering relevant data from primary sources such as Blockchain.com and supplementary platforms (e.g., Mempool.space, CoinMetrics). Focus on key performance indicators (KPIs) relevant to network security and user activity, and utilize comparative analysis against historical benchmarks to contextualize findings. Implement data parsing and statistical calculations to derive meaningful insights, such as month-over-month (MoM) or year-over-year (YoY) changes.

**Pattern Recognition:**
Look for recurring signals that indicate market trends, such as:
- **Mining Conviction:** Sudden increases in hash rate could suggest miner confidence and potential bullish market sentiment.
- **User Adoption Trends:** Spikes in transaction volume may indicate increased retail or institutional interest, signaling a potential market shift.
- **Regime Shifts:** Patterns surrounding major events (e.g., halving) can provide insights into future price movements and network dynamics.

**Strategic Framework:**
Apply this methodology to current market analyses by:
1. Continuously monitoring key metrics and identifying deviations from historical norms.
2. Synthesizing findings into a clear snapshot that captures the current network pulse and potential future scenarios.
3. Using insights to inform investment decisions, risk assessments, and strategic planning, particularly around significant market events or shifts in user behavior.

**Important Notes:**
- Focus on the methodology for analyzing blockchain metrics rather than specific historical data.
- Emphasize actionable insights that can be applied to current market conditions.
- Maintain a concise, structured approach to ensure clarity and relevance in analysis.

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
*Source: blockchain.com*
