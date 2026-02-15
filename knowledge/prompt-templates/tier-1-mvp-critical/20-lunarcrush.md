---
tags: [general]
agents: [eliza]
---
# Prompt #20: LunarCrush (Social Sentiment & Galaxy Score)

**Priority**: Tier 1 - MVP Critical  
**Specialist**: `socialPsychologySpecialist`  
**Data Source**: LunarCrush.com (public/free pages)

## Core Objectives
- Assess crypto social momentum across **BTC, ETH, SOL, and trending coins**
- Track galaxy score (0-100), alt rank, social volume/engagements, bull/bear sentiment
- Detect sentiment signals: hype cycles, FOMO, rotation between assets
- Identify trending coins and emerging narratives
- Compare to broader sentiment tools (Santiment) where possible
- Flag free tier limitations and pivot to alternatives when needed

## Supported Assets
- **Primary**: BTC, ETH, SOL
- **Trending**: Top 10 by galaxy score, top gainers/losers
- **On Request**: Any coin tracked by LunarCrush

## Tool Usage Strategy

### Primary: LunarCrush Pages
- `browse_page` on:
  - BTC coin page: `https://lunarcrush.com/coins/btc/bitcoin` or `https://app.lunarcrush.com/coins/btc`
    - Instructions: "Extract all free/public metrics visible without login: current galaxy score, alt rank, social volume (24h/7d), engagements, bull/bear sentiment, dominance %, and any dashboard summaries."
  - Charts/trends: Same page or `/trends` sections
    - Instructions: "If historical charts visible, sample ~10-15 evenly spaced date/value pairs for key metrics (galaxy score, social volume, alt rank) over the longest period shown (up to 90+ days)."
  - Dashboard overview: `https://lunarcrush.com/`
    - Instructions: "Summarize top BTC social stats and provide URLs to detailed views."

### Supplement
- Santiment free metrics: `https://app.santiment.net/`
- `web_search`: "LunarCrush Bitcoin galaxy score latest" OR "LunarCrush BTC social sentiment 2025/2026"

### Analysis
- `code_execution` to:
  - Parse/clean extracted data points
  - Calculate averages (e.g., 7d sentiment ratio), changes, sentiment scores
  - Generate trend descriptions

## Output Format

```markdown
## LunarCrush Social Sentiment Snapshot — [Current Date]

### Multi-Asset Overview
| Asset | Galaxy Score | Alt Rank | Social Vol (24h) | Sentiment | Trend |
|-------|--------------|----------|------------------|-----------|-------|
| BTC   | X.X/100      | #Y       | Z.ZZ K           | XX% bull  | ↑/↓/→ |
| ETH   | X.X/100      | #Y       | Z.ZZ K           | XX% bull  | ↑/↓/→ |
| SOL   | X.X/100      | #Y       | Z.ZZ K           | XX% bull  | ↑/↓/→ |

### Trending Coins (Top by Galaxy Score)
| Rank | Coin | Galaxy Score | 24h Change | Key Driver |
|------|------|--------------|------------|------------|
| 1    | XXX  | XX.X         | +XX%       | [narrative] |
| 2    | XXX  | XX.X         | +XX%       | [narrative] |
| 3    | XXX  | XX.X         | +XX%       | [narrative] |

### BTC Deep Dive
- **Galaxy Score**: X.X / 100 (higher = stronger community momentum)
- **Alt Rank**: #Y (lower = better relative performance)
- **Social Volume** (24h mentions): Z.ZZ K | 7d: A.AA M
- **Engagements**: B.BB M (24h)
- **Bull/Bear Sentiment**: CC% bull / DD% bear
- **Social Dominance**: EE.EE%

### ETH/SOL Metrics (If Requested)
[Same structure as BTC - condensed]

### Rotation Signals
- **BTC Dominance Trend**: Rising/Falling (implication)
- **Alt Season Indicator**: [assessment]
- **Capital Flow Direction**: BTC→Alts / Alts→BTC / Neutral

### 30–90 Day Trends (Key Assets)
| Date | Asset | Galaxy Score | Social Vol | Sentiment | Event |
|------|-------|--------------|------------|-----------|-------|
| YYYY-MM-DD | BTC | X.X | Z.ZZ K | XX% bull | [event] |

### Insights & Trading Implications
1. [Key insight about overall social momentum]
2. [Rotation or dominance shift observation]
3. [Contrarian signal if any extreme detected]

### Data Notes
- Sources: LunarCrush (pages browsed: list URLs)
- Timestamp: As of [current date/time UTC]
- Limitations: Free tier metrics; cross-validated with Santiment where possible
```

## Query-Specific Guidance

### "What's the social sentiment on BTC/ETH/SOL?"
Focus on that specific asset's metrics and trends

### "Which coins are trending?"
Show top 10 by galaxy score with narratives

### "Is this alt season?"
BTC dominance + alt rank movements + rotation signals

### "Are we in FOMO territory?"
Compare galaxy scores to historical extremes, sentiment percentages

## Integration Notes
- Feeds into `socialPsychologySpecialist` for sentiment overlay (complements X/Twitter #10 and Santiment #17)
- Galaxy score as holistic proxy (combines volume, sentiment, engagements)
- Alt rank shows relative performance vs. other coins (deteriorating = BTC dominance rising)
- Can inform strike selection (extreme sentiment = contrarian opportunity)

## Performance Notes
- Free tier often shows limited metrics/history
- Prioritize free/public metrics (clearly flag and pivot if LunarCrush data restricted)
- Combine with X/Twitter (#10) and Santiment (#17) for comprehensive sentiment picture
- If primary page lacks depth, clearly state and rely on verified alternatives

---

## Methodology & Framework

**Key Concepts:**
- **Social Momentum Assessment**: Evaluating the community engagement and sentiment around specific cryptocurrencies.
- **Galaxy Score**: A metric reflecting a coin's social activity and engagement, indicative of community strength.
- **Sentiment Analysis**: Understanding the bull/bear sentiment to gauge market psychology and investor behavior.
- **Trend Detection**: Identifying patterns in social engagement and coin performance to foresee market movements.
- **Cross-Validation**: Using multiple data sources to enhance reliability of insights.

**Analytical Approach:**
To analyze social sentiment in cryptocurrencies, adopt a multi-faceted approach. Begin by systematically gathering data from relevant platforms like LunarCrush and Santiment. Focus on key metrics such as galaxy score, social volume, and sentiment ratios. Utilize a combination of qualitative assessments (e.g., trending narratives) and quantitative analysis (e.g., historical trends) to build a comprehensive view of market dynamics. This will allow for a robust understanding of the factors influencing social momentum.

**Pattern Recognition:**
Look for cyclical trends in social engagement, such as the emergence of FOMO (fear of missing out) or hype cycles that precede price movements. Pay attention to shifts in dominance among assets, noting any rotation from major coins (like BTC) to altcoins, which can indicate changing investor sentiments. Identify extreme sentiment indicators that may signal contrarian trading opportunities.

**Strategic Framework:**
Apply this methodology by consistently monitoring the identified metrics and adjusting trading strategies based on the detected patterns. When assessing coins, prioritize those with a high galaxy score and positive sentiment, while being wary of those exhibiting drastic shifts in social momentum. Use insights from historical data to inform predictions about potential future movements, and always cross-reference findings with multiple sources to validate trends.

**Important Notes:**
This framework emphasizes a proactive mindset in analyzing social sentiment rather than merely reacting to market changes. Focus on the underlying methodologies to interpret data effectively, ensuring that insights remain relevant and actionable in the fast-paced crypto environment. Stay aware of the limitations of free data tiers and pivot to alternative sources when necessary for a well-rounded analysis.

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
*Source: lunarcrush.com*
