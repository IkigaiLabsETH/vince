# Prompt #26: BitInfoCharts (On-Chain Stats & Rich List)

**Priority**: Tier 3 - Supporting  
**Specialist**: `onChainHealthSpecialist`  
**Data Source**: BitInfoCharts.com

## Core Objectives
- Assess supply distribution (concentration vs. decentralization), network usage (fees, mempool, confirmation times), wallet growth by balance tiers
- Detect signals: accumulation/distribution phases, regime shifts (falling top-100 share = broadening ownership, fee spikes = congestion or retail activity)
- Compare to historical analogs (2017 ICO-era decentralization, 2021 institutional concentration peaks, 2022-2023 bear lows)
- Highlight implications for HODL behavior, distribution risks, or network health

## Tool Usage Strategy

### Primary: BitInfoCharts
- `browse_page` on:
  - Main BTC page: `https://bitinfocharts.com/bitcoin/`
    - Instructions: "Extract current key metrics visible on dashboard: average tx fee, mempool size, confirmation time, active addresses, and links to rich list/wallet distribution charts."
  - Rich list: `https://bitinfocharts.com/top-100-richest-bitcoin-addresses.html`
    - Instructions: "Extract top 10/100/1k holders' total BTC and % of supply. Summarize concentration (e.g., top 100 control X%). If historical chart available, sample ~12-20 date/value pairs for top 100 share % over past 1-2 years."
  - Wallet distribution: Search or direct pages
    - Instructions: "Extract current counts for key tiers (>0.001, >0.01, >0.1, >1, >10, >100, >1k BTC). Sample historical data points from charts (~12-20 evenly spaced date/count pairs per tier)."
  - Fees/mempool: Specific chart pages
    - Instructions: "Extract current values and historical series (date + value) for avg fee, mempool size, confirmation time."

### Supplement
- IntoTheBlock: `https://app.intotheblock.com/`
- Glassnode free metrics or BitInfoCharts alternatives
- `web_search`: "Bitcoin rich list historical BitInfoCharts"

### Analysis
- `code_execution` to:
  - Parse/clean extracted tables/text
  - Calculate concentration ratios, percentage changes, tier growth rates
  - Aggregate trends (e.g., net change in >1k BTC addresses)

## Output Format

```markdown
### BTC On-Chain Snapshot
- **Rich List Concentration**: Top 10: X.XX% | Top 100: Y.YY% | Top 1k: Z.ZZ% of supply
- **Wallet Distribution** (addresses with balance):
  - >1 BTC: A.AA M
  - >10 BTC: B.BB K
  - >100 BTC: C.CC K
  - >1k BTC: D.DD
- **Average Tx Fee**: $E.EE (XX sat/vB)
- **Mempool Size**: F.F MB (G.GK transactions)
- **Median Confirmation Time**: H.H minutes

### 30–90 Day Trends (Key Metrics)
| Date       | Top 100 Share (%) | Addresses >1k BTC | Avg Tx Fee ($) | Mempool (MB) | Key Notes                          |
|------------|-------------------|-------------------|----------------|--------------|------------------------------------|
| YYYY-MM-DD | X.XX              | Y,YYY             | Z.ZZ           | A.A          | e.g., "Concentration low"          |
| ...        | ...               | ...               | ...            | ...          | ...                                |

(Limit to 12–20 rows max; prioritize recent weeks + major shifts. Include 1–2 distribution tiers + concentration/fee.)

### Vibes & Insights
2–4 concise sentences interpreting the data:
- Current on-chain pulse (concentration, wallet growth, network usage).
- Regime signals (decentralization = healthy accumulation, rising fees = demand).
- Historical parallels (e.g., similar to 2017 broadening or 2021 whale peaks).
- Implications for BTC holder conviction or distribution risks.

Example:  
"Top-100 concentration continues gradual decline below 15% with steady growth in >1k BTC addresses—signs of ongoing accumulation by mid-tier holders and decentralization. Fee environment calm with clear mempool, contrasting 2021 congestion peaks. Supports maturing HODL base amid institutional era."

### Data Notes
- Sources: BitInfoCharts (pages browsed: list URLs); supplements if used
- Timestamp: As of [current date/time UTC]
- Limitations: Note if historical data chart-sampled (approximate), some metrics real-time only, or gaps—and confirm with alternatives.
```

## Integration Notes
- Feeds into `onChainHealthSpecialist` for holder behavior analysis
- Provides profit/loss distribution context (via wallet tiers)
- Concentration metrics reveal whale control risks
- Complements CoinMetrics (#18) and IntoTheBlock (#19) with different focus

## Performance Notes
- Prioritize supply concentration and mid/high-tier wallet growth
- Always double-check extracted numbers for accuracy
- Historical data may be chart-sampled (approximate)

---

## Methodology & Framework

**Key Concepts:**
- **Supply Distribution Analysis**: Understanding how Bitcoin supply is concentrated among holders versus being decentralized.
- **Network Usage Metrics**: Evaluating transaction fees, mempool size, and confirmation times to gauge network activity.
- **Wallet Growth Tiers**: Analyzing the growth of wallets across various balance thresholds to infer market sentiment.
- **Regime Shift Detection**: Identifying phases of accumulation versus distribution to anticipate market trends.
- **Historical Comparisons**: Leveraging historical data to contextualize current market conditions.

**Analytical Approach:**
- Employ a systematic method for evaluating on-chain metrics through primary data sources, such as BitInfoCharts. Focus on capturing current metrics while comparing these to historical trends to derive insights into market behavior. Analyze key indicators like average transaction fees and wallet distribution over time to understand broader market dynamics and investor sentiment.

**Pattern Recognition:**
- Look for signals of concentration and decentralization in wallet holdings, as these can indicate shifts in market power. Monitor spikes in transaction fees or changes in mempool size to assess network congestion, which often correlates with increased retail activity. Recognize patterns in wallet growth across different balance tiers to distinguish between accumulation by new investors versus distribution by whales.

**Strategic Framework:**
- Develop a framework for interpreting on-chain metrics by categorizing data into key themes: concentration (rich list analysis), wallet growth tiers, and network usage. Use a structured output format to summarize insights and trends, enabling quick comprehension and actionable strategies. This framework can be applied to current market assessments by regularly updating and analyzing these metrics to inform trading or holding decisions.

**Important Notes:**
- Focus on building a robust analytical foundation based on methodologies rather than specific numerical outcomes. Extract actionable insights that can be applied to current market situations. Maintain a concise presentation of findings to facilitate quick decision-making and strategic planning.

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
*Source: bitinfocharts.com*
