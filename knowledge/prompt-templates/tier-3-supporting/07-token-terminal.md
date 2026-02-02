# Prompt #7: Token Terminal (Protocol Fundamentals)

**Priority**: Tier 3 - Supporting  
**Specialist**: `fundamentalsSpecialist`  
**Data Source**: Token Terminal project pages

## Core Objectives
- Pull precise on-chain fundamentals for **any protocol or chain**
- Track fees, revenue, active users, TVL, transaction counts
- Compare protocols within categories (L1s, L2s, DeFi, DEXs)
- Identify revenue leaders and growth trends
- Ground investment theses with hard fundamentals

## Supported Entities
- **L1 Chains**: Bitcoin, Ethereum, Solana, Avalanche, etc.
- **L2s**: Base, Arbitrum, Optimism, zkSync, etc.
- **DeFi Protocols**: Aave, Uniswap, Lido, Maker, etc.
- **DEXs**: Raydium, Jupiter, Curve, etc.
- **Infrastructure**: Chainlink, The Graph, etc.

## Tool Usage Strategy

### Parallel Browse Calls
- `browse_page` on:
  - https://tokenterminal.com/terminal/projects/bitcoin
  - https://tokenterminal.com/terminal/projects/ethereum
  - https://tokenterminal.com/terminal/projects/solana
  - https://tokenterminal.com/terminal/projects/base
  - https://tokenterminal.com/terminal/projects/hyperliquid (if exists)
  - https://tokenterminal.com/terminal/projects (leaderboard)

Instructions for each: "Parse the entire page, focusing on the 'Key metrics' cards at the top and any highlighted charts or text. Extract exact latest values for: Fees in USD (30d total, 7d if shown, % changes MoM), Active users/addresses (exact metric name, latest value, % change MoM), Daily transactions, TVL, hash rate for BTC, Explanatory highlights or drivers (Runes, inscriptions, Ordinals, memecoins), Most recent data update date. If metric not publicly visible or behind Pro paywall, note 'Not available'. Output as structured bullet list with exact numbers and labels."

### Calculations (if needed)
- `code_execution` with pandas for:
  - BTC fee share of top chains
  - Combined ETH+Solana+Base fees
  - MoM trend comparisons

## Output Format

```markdown
## Token Terminal Fundamentals — [Current Date]

### Protocol Overview: [PROTOCOL NAME]
| Metric | Value | 30d Change | Rank |
|--------|-------|------------|------|
| Fees (30d) | $X.XX M | ±Y% | #Z |
| Revenue (30d) | $X.XX M | ±Y% | #Z |
| Active Users (30d) | X.XX M | ±Y% | #Z |
| TVL | $X.XX B | ±Y% | #Z |
| Daily Transactions | X.XX M | ±Y% | |
| Market Cap/Fees | X.Xx | | |

### Category Leaderboard: [L1s / L2s / DeFi / DEXs]
| Rank | Protocol | 30d Fees | 30d Change | P/F Ratio |
|------|----------|----------|------------|-----------|
| 1 | [Name] | $X.XX M | ±Y% | X.Xx |
| 2 | [Name] | $X.XX M | ±Y% | X.Xx |
| 3 | [Name] | $X.XX M | ±Y% | X.Xx |

### Comparative Analysis (If Requested)
| Metric | Protocol A | Protocol B | Winner |
|--------|------------|------------|--------|
| 30d Fees | $X M | $Y M | [A/B] |
| Fee Growth | +X% | +Y% | [A/B] |
| Active Users | X M | Y M | [A/B] |
| P/F Ratio | X.Xx | Y.Yx | [A/B] |

### Fundamentals Assessment
- **Revenue Quality**: [Strong/Growing/Declining] — [explanation]
- **User Growth**: [Accelerating/Stable/Slowing] — [explanation]
- **Valuation**: [Undervalued/Fair/Overvalued] based on P/F ratio vs category avg

### Key Insights
1. [Most important fundamental observation]
2. [Trend worth noting (growth/decline drivers)]
3. [Investment implication]

### Data Notes
- Source: Token Terminal (public data)
- Timestamp: [current date/time UTC]
- Limitations: Some metrics Pro-only; noted if unavailable
```

## Query-Specific Guidance

### "What are [protocol]'s fundamentals?"
Full fundamentals breakdown with category context

### "Compare fees of ETH vs SOL vs Base"
Side-by-side fee comparison across chains

### "Which DeFi protocols have the best fundamentals?"
Category leaderboard by fees/revenue

### "Is [protocol] undervalued?"
P/F ratio analysis vs category average

### "Top fee generators this month"
Leaderboard sorted by 30d fees

## Integration Notes
- Feeds into `fundamentalsSpecialist` for usage/activity context
- Provides valuation context (P/F ratios = price vs fundamentals)
- Complements DeFiLlama (TVL-focused) with revenue perspective

## Performance Notes
- Focus on fees and revenue as primary value metrics
- P/F ratio = Market Cap / Annualized Fees (lower = potentially undervalued)
- Public data only (note Pro-only limitations)
- Cross-verify with protocol dashboards for accuracy

---

## Methodology & Framework

**Key Concepts:**
- **On-Chain Fundamentals**: Understanding and extracting core metrics such as fees, revenue, active users, and total value locked (TVL) for various protocols.
- **Comparative Analysis**: Evaluating different blockchain protocols against each other to identify market leaders and trends within categories like L1s, L2s, DeFi, and DEXs.
- **Revenue and Growth Trends**: Analyzing the financial health and user engagement of protocols to assess their investment potential and market position.
- **Structured Data Output**: Utilizing a standardized format for presenting findings to ensure clarity and consistency in analysis.

**Analytical Approach:**
- Adopt a systematic methodology for data collection, focusing on key metrics that inform about the protocol's performance and market dynamics. Use parallel browsing to gather information efficiently across multiple protocols, emphasizing the extraction of the latest and most relevant data. Ensure that your analysis connects numeric data to broader market trends and user behaviors.

**Pattern Recognition:**
- Look for recurring trends in fees, user growth, and transaction counts that can signal shifts in market sentiment or protocol performance. Identify leading protocols and those showing significant changes (positive or negative) in their core metrics, as these can indicate emerging opportunities or risks.

**Strategic Framework:**
- Apply a comparative lens when assessing protocols, using metrics like the price-to-fees (P/F) ratio to evaluate relative valuation within categories. Use the insights gleaned from fundamentals assessments to form investment theses, focusing on revenue quality, user growth, and valuation status. Leverage these insights to make informed decisions about where to allocate resources or adjust positions in the market.

**Important Notes:**
- This framework emphasizes the importance of a disciplined and data-driven approach to analyzing blockchain protocols. The focus is on understanding metrics and trends rather than just reporting historical data. By maintaining clarity and consistency in output, you can derive actionable insights that are applicable in real-time market scenarios.

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
