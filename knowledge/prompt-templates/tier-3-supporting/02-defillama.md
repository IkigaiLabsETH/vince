# Prompt #2: DefiLlama (DeFi Ecosystem Analysis)

**Priority**: Tier 3 - Supporting  
**Specialist**: `defiFlowsSpecialist`  
**Data Source**: DefiLlama API (https://api.llama.fi)

## Core Objectives
- Assess overall DeFi ecosystem health across all chains
- Track TVL by chain, protocol category, and major protocols
- Monitor capital flows: stablecoin movements, bridge volumes, yield trends
- Identify which chains/protocols are gaining or losing market share
- Compare current state to historical cycles (2021 peak, 2022 bear, 2024-2025 recovery)

## Tool Usage Strategy

### Primary: DefiLlama API Endpoints
- `code_execution` with `requests` to query DefiLlama public APIs:
  - `/v2/chains` - All chains with current TVL, 1d/7d changes
  - `/v2/historicalChainTvl/{chain}` - Historical TVL for specific chain
  - `/protocols` - All protocols with TVL, category, chain
  - `/protocol/{slug}` - Detailed protocol data
  - `/stablecoins` - Stablecoin market caps and flows
  - `/stablecoins/chains` - Stablecoins by chain
  - `/bridges` - Cross-chain bridge volumes
  - `/yields/pools` - DeFi yield opportunities
  - `/fees` - Protocol revenue/fees data
  - `/dexs` - DEX volumes by chain/protocol

### Key Metrics to Extract
1. **TVL by Chain**: Top 10 chains, their TVL, 7d/30d % changes
2. **TVL by Category**: Lending, DEX, Liquid Staking, Bridges, Derivatives
3. **Stablecoin Health**: Total supply, chain distribution, depegs
4. **Yield Environment**: Average yields by category, risk tiers
5. **Capital Velocity**: Bridge volumes, DEX volumes, fee generation

### Fallback: Browse Page
- `browse_page` on defillama.com if API fails:
  - https://defillama.com/ (overview)
  - https://defillama.com/chains (chain rankings)
  - https://defillama.com/stablecoins (stablecoin dashboard)

## Output Format

```markdown
## DeFi Ecosystem Pulse — [Current Date]

**Overview**  
One-paragraph summary: Total DeFi TVL (~$X B), direction (growing/shrinking), dominant chains, and the most significant recent development.

**Chain Rankings (Top 10 by TVL)**
| Chain | TVL | 7d Change | 30d Change | Key Driver |
|-------|-----|-----------|------------|------------|
| Ethereum | $XX B | +X% | +X% | [brief note] |
| Solana | $XX B | +X% | +X% | [brief note] |
| ... | ... | ... | ... | ... |

**Category Breakdown**
| Category | TVL | Trend | Notable Protocols |
|----------|-----|-------|-------------------|
| Lending | $XX B | ↑/↓ | Aave, Compound, Morpho |
| DEXs | $XX B | ↑/↓ | Uniswap, Raydium, Orca |
| Liquid Staking | $XX B | ↑/↓ | Lido, Jito, Marinade |
| Bridges | $XX B | ↑/↓ | Stargate, Across |

**Capital Flow Signals**
- **Stablecoins**: Total supply $X B, USDT dominance X%, notable flows...
- **Bridge Activity**: $X B/day volume, top routes (e.g., Ethereum→Arbitrum)
- **Yield Trends**: Average lending yield X%, stablecoin yield X%

**Key Insights**
1. [Most important observation about ecosystem health]
2. [Chain gaining/losing market share and why]
3. [Risk signal or opportunity]
4. [Comparison to previous cycle]

**Ecosystem Health Score**: X/10
- Liquidity depth: [assessment]
- Yield sustainability: [assessment]
- Cross-chain activity: [assessment]
```

## Integration Notes
- Feeds into `defiFlowsSpecialist` for capital flow analysis
- Provides context for chain-specific agents (Solana, Ethereum, etc.)
- Informs macro positioning (DeFi health = risk-on/risk-off signal)
- Can identify which chains to focus on for yield opportunities

## Performance Notes
- Always fetch fresh data via API (DeFi TVL changes rapidly)
- Compare current TVL to ATH and cycle benchmarks
- Watch for anomalies: sudden TVL drops (exploits?), unusual bridge flows
- Stablecoin supply is a leading indicator of DeFi activity
- DEX volume/TVL ratio indicates capital efficiency

## Query-Specific Guidance

### "Which chains are growing/shrinking?"
Focus on `/v2/chains` endpoint, sort by 7d/30d change, identify outliers

### "Is DeFi healthy right now?"
Holistic view: TVL trend, yield sustainability, stablecoin flows, DEX volumes

### "Where should I deploy capital?"
Yield opportunities + risk assessment (protocol age, audit status, TVL stability)

### "BTC DeFi specifically"
Filter for Bitcoin chain, WBTC protocols, BTC-collateralized lending

---

## Methodology & Framework

**Key Concepts:**
- **Total Value Locked (TVL)**: A critical metric indicating the overall health of the DeFi ecosystem across various chains.
- **Capital Flows**: The movement of assets, particularly stablecoins and bridging activity, which signals liquidity trends.
- **Protocol Categorization**: Understanding different DeFi categories (e.g., Lending, DEXs, Liquid Staking) to identify market trends and opportunities.
- **Historical Comparison**: Analyzing current data against past cycles to gauge market sentiment and predict future movements.
- **Ecosystem Health Score**: A composite metric to summarize the overall viability and sustainability of the DeFi landscape.

**Analytical Approach:**
To assess the DeFi ecosystem effectively, adopt a multi-dimensional framework that includes quantitative (TVL, capital flows) and qualitative (market sentiment, protocol health) analyses. Regularly query data from reliable APIs to ensure accuracy and timeliness. Utilize historical data for context, allowing for trend recognition and anomaly detection.

**Pattern Recognition:**
Focus on key indicators such as:
- Significant changes in TVL across chains and categories, signaling market shifts.
- Sudden movements in stablecoin supply and bridging activity, which may indicate emerging trends or potential risks.
- Anomalies in DEX volume relative to TVL, revealing patterns of capital efficiency or inefficiency.

**Strategic Framework:**
1. **Data Gathering**: Use the DefiLlama API for real-time data collection, emphasizing critical endpoints for comprehensive insights.
2. **Trend Analysis**: Regularly analyze trends in TVL changes, capital flows, and yield opportunities, categorizing findings to identify growth or decline.
3. **Market Positioning**: Leverage insights to inform investment strategies, focusing on chains/protocols showing positive momentum or undervalued yield opportunities.
4. **Risk Assessment**: Establish criteria for assessing ecosystem health, monitoring liquidity depth, yield sustainability, and cross-chain activity to gauge market risk and opportunities.

**Important Notes:**
- Prioritize methodology over specific data points to maintain relevance in a rapidly changing environment.
- Emphasize actionable insights that can be applied in real-time scenarios, fostering an adaptive approach to DeFi ecosystem analysis.
- Maintain a focus on continuous learning and adjustment based on emerging trends and market dynamics.

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


*Template Version: 2.0*  
*Last Updated: 2026-01-22*
*Changes: Expanded from BTC-only to general DeFi ecosystem analysis*
