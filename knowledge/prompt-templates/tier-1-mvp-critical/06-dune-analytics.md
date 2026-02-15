---
tags: [general]
agents: [eliza]
---
# Prompt #6: Dune Analytics (Deep On-Chain Analysis)

**Priority**: Tier 1 - MVP Critical  
**Specialist**: `onChainHealthSpecialist`  
**Data Source**: Dune Analytics public dashboards and queries

## Core Objectives
- Extract deep on-chain insights across **Bitcoin, Ethereum, Solana, and L2s**
- Track whale behavior, accumulation/distribution, large transfers, exchange flows
- Analyze holder cohort changes, DEX volumes, protocol usage
- Monitor cross-chain activity (bridges, L2 flows, ecosystem growth)
- Compare current metrics to previous cycles (2016–2018, 2020–2022, 2024)
- Deliver actionable, chain-specific analysis

## Supported Chains
- **Bitcoin**: Whale flows, Ordinals/Runes, exchange activity
- **Ethereum**: DEX volume, gas usage, staking, L2 bridges
- **Solana**: DEX volume, program usage, NFT activity
- **L2s**: Arbitrum, Base, Optimism TVL/activity
- **Cross-Chain**: Bridge volumes, capital migration patterns

## Tool Usage Strategy

### Discovery Phase
- `web_search` queries by chain:
  - **Bitcoin**: "Dune Analytics Bitcoin whale accumulation", "BTC exchange flows", "Ordinals Runes activity"
  - **Ethereum**: "Dune Analytics ETH DEX volume", "Ethereum gas usage trends", "L2 bridge flows"
  - **Solana**: "Dune Analytics Solana DEX volume", "SOL program activity", "Solana NFT trends"
  - **L2s**: "Dune Analytics Arbitrum Base Optimism TVL", "L2 transaction counts"
  - **Cross-Chain**: "Dune Analytics bridge volumes", "cross-chain capital flows"

### Data Extraction Phase
- `browse_page` on promising dashboards/queries found
  - Instructions: "Extract all key metrics, tables, and time-series data visible. Include latest values, WoW/MoM changes. For charts, describe trends quantitatively. Export visible table data as structured text."

### Analysis Phase
- `code_execution` with pandas to:
  - Parse and clean extracted data
  - Compare metrics across chains
  - Compute derived metrics (DEX market share, bridge utilization rates)
  - Identify trends, anomalies, and chain-specific patterns

## Output Format

```markdown
## Dune Analytics On-Chain Deep Dive — [Current Date]

### Multi-Chain Overview
| Chain | Key Metric | Value | 7d Change | Signal |
|-------|------------|-------|-----------|--------|
| Bitcoin | Exchange Reserves | X.XX M BTC | -X.X% | Accumulation |
| Ethereum | DEX Volume (7d) | $X.XX B | +X.X% | High activity |
| Solana | Daily Txns | X.XX M | +X.X% | Growing usage |
| Arbitrum | TVL | $X.XX B | +X.X% | Inflows |
| Base | Active Addresses | X.XX M | +X.X% | Adoption |

### Bitcoin On-Chain
**Regime**: [Accumulation/Distribution/Neutral]
- Whale cohort (1k-10k BTC): [accumulating/distributing], +/- X BTC (30d)
- Exchange reserves trend: [declining = bullish, rising = sell pressure]
- Ordinals/Runes activity: [volume, trend]

### Ethereum On-Chain
**Health**: [Active/Slowing/Accelerating]
- DEX volume: $X.XX B (7d), market share by protocol
- Gas usage: X gwei avg, [interpretation]
- Staking: X.XX M ETH staked, net change
- L2 bridge outflows: $X.XX B to [top L2s]

### Solana On-Chain
**Momentum**: [Hot/Cooling/Stable]
- DEX volume: $X.XX B (7d), top DEXs
- Daily transactions: X.XX M
- Top programs by usage: [list]
- NFT activity: [trend]

### L2 Ecosystem
| L2 | TVL | 7d Txns | Active Addresses | Trend |
|----|-----|---------|------------------|-------|
| Arbitrum | $X.XX B | X.XX M | X.XX K | ↑/↓ |
| Base | $X.XX B | X.XX M | X.XX K | ↑/↓ |
| Optimism | $X.XX B | X.XX M | X.XX K | ↑/↓ |

### Cross-Chain Capital Flows
- **Net Bridge Direction**: [ETH→L2s / L2s→ETH / Neutral]
- **Top Bridge Routes**: [source→dest, volume]
- **Capital Migration Signal**: [interpretation]

### Key Insights
1. [Most important cross-chain observation]
2. [Chain gaining/losing activity]
3. [Whale or smart money signal]
4. [Emerging pattern worth monitoring]

### Data Sources
- Dashboards used: [list with links]
- Notable creators: hildobby, 0xKofi, dragonfly_xyz, spellcaster
```

## Query-Specific Guidance

### "What's happening on Bitcoin on-chain?"
Focus on BTC-specific metrics: exchange flows, whale cohorts, Ordinals

### "How's Ethereum doing on-chain?"
DEX volume, gas, staking, L2 bridge activity

### "Compare Solana vs Ethereum activity"
Side-by-side DEX volumes, transaction counts, user growth

### "Which L2 is winning?"
TVL, transaction counts, active addresses across Arbitrum/Base/Optimism

### "Where is capital flowing?"
Bridge data, cross-chain movements, L1→L2 patterns

## Integration Notes
- Primary input for `onChainHealthSpecialist` (whale flows, accumulation signals)
- Feeds into `regimeAggregatorSpecialist` for bias scoring
- Can be merged with Nansen (#16) for "Smart Money + Custom Queries" agent (per Grok suggestion)

## Performance Notes
- Prioritize highly viewed/forked dashboards (hildobby, dragonfly_xyz, dati, 0xRob creators)
- Cross-validate across multiple dashboards (quantitative, skeptical of single-source signals)
- Maximize depth by chaining tool calls (discovery → extraction → analysis)

---

## Methodology & Framework

**Key Concepts:**
- **On-Chain Analysis**: Leveraging blockchain data to uncover insights about user behavior, market trends, and protocol usage.
- **Cross-Chain Dynamics**: Understanding the interactions and capital flows between different blockchain networks.
- **Whale Behavior Tracking**: Monitoring large holders’ activities to gauge market sentiment and potential price movements.
- **Cohort Analysis**: Examining changes in holder demographics and their implications on market stability and growth.
- **Time-Series Comparison**: Analyzing current metrics against historical cycles to identify trends and potential future movements.

**Analytical Approach:**
- Begin with a **Discovery Phase**, utilizing targeted web searches to gather relevant data across various chains. This involves framing specific queries that align with the metrics of interest.
- Proceed to a **Data Extraction Phase**, where the focus is on gathering and organizing key metrics, trends, and time-series data from Dune Analytics dashboards.
- In the **Analysis Phase**, apply data manipulation techniques using tools like pandas to clean, compare, and derive new insights. This phase emphasizes the importance of understanding inter-chain relationships and anomalies.

**Pattern Recognition:**
- Look for signs of accumulation or distribution among whale cohorts, as well as shifts in exchange reserves which may indicate market sentiment.
- Identify DEX volumes and gas usage fluctuations to determine network health and activity levels.
- Monitor cross-chain capital migration patterns to assess ecosystem growth and emerging trends.

**Strategic Framework:**
- Utilize a structured output format to summarize findings, ensuring clarity and actionable insights for stakeholders.
- Focus on identifying key signals and trends that inform strategic decisions, such as investment opportunities or risk management.
- Regularly revisit and refine analytical queries and metrics based on evolving market conditions and historical performance.

**Important Notes:**
- Emphasize a systematic approach to on-chain data analysis, enabling informed decision-making.
- Maintain a focus on methodologies rather than numerical specifics, ensuring relevance in fast-changing market conditions.
- Adapt the framework to accommodate new data sources and analytical tools as they become available.

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
