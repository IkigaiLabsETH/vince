---
tags: [trading, derivatives, perps]
agents: [solus, eliza]
last_reviewed: 2026-02-15
---


## Methodology & Framework

**Key Concepts:**
- **Funding Rates**: Understanding the mechanics of funding payments between long and short positions and their impact on market dynamics.
- **Market Sentiment Indicators**: Interpreting funding levels to gauge market sentiment (bullish vs. bearish).
- **Squeeze Detection**: Identifying conditions that may lead to long or short squeezes based on funding trends and open interest (OI).

**Analytical Approach:**
- Approach trading in perpetual markets by analyzing funding rates as indicators of market sentiment rather than solely relying on price movements. Use funding rates to validate or challenge existing market hypotheses. Monitor funding trends over multiple periods to gain insights into potential market shifts.

**Pattern Recognition:**
- Look for specific funding levels paired with changes in OI to identify crowded trades. For example, a funding rate above 0.05% could signal a crowded long position, while a funding rate below -0.05% may indicate a crowded short position. Recognize the risk of liquidations during these extremes, and correlate funding trends with key price levels (support/resistance) for comprehensive analysis.

**Strategic Framework:**
- Apply a funding arbitrage strategy when funding rates are high or low. For instance, engage in cash and carry trades during high funding periods to collect payments while maintaining a neutral position. Conversely, in negative funding scenarios, consider reverse cash and carry if the costs align favorably. Always cross-reference funding rates with historical trends and OI to strengthen decision-making. Utilize funding rates as confirmation for directional trades and consider them when planning options strike selections.

**Important Notes:**
- Focus on methodology, not specific numbers or dates.
- Extract the "how to think" approach, not historical data.
- Make it actionable and applicable to current situations.
- Keep it concise and adaptable to varying market conditions.

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


# Understanding Funding Rates

## What Are Funding Rates?

Funding rates are periodic payments exchanged between long and short traders in perpetual futures markets. They serve to keep the perpetual price (mark price) close to the spot price (oracle/index price).

## How Funding Works

### Basic Mechanics
- **Settlement Period**: Every 8 hours (00:00, 08:00, 16:00 UTC)
- **Payment Direction**: 
  - Positive funding: Longs pay shorts
  - Negative funding: Shorts pay longs
- **Calculation**: Funding = Position Size × Funding Rate

### Formula Components
```
Funding Rate = Premium Index + clamp(Interest Rate - Premium Index, -0.05%, 0.05%)
```

Where:
- **Premium Index**: How far mark price deviates from oracle
- **Interest Rate**: Base rate (usually 0.01% per 8h on most exchanges)

## Interpreting Funding Rates

### Bullish Signals
| Funding Level | Interpretation |
|---------------|----------------|
| > 0.05% | Extremely crowded long, potential squeeze risk |
| 0.02% - 0.05% | Strong bullish sentiment |
| 0.01% - 0.02% | Mildly bullish |
| ~0.01% | Neutral/balanced market |

### Bearish Signals
| Funding Level | Interpretation |
|---------------|----------------|
| < -0.05% | Extremely crowded short, potential squeeze risk |
| -0.02% to -0.05% | Strong bearish sentiment |
| -0.01% to -0.02% | Mildly bearish |

## Funding Rate Strategies

### Funding Arbitrage
1. **Cash and Carry**: Long spot + short perp when funding is high
   - Collect funding while market-neutral
   - Works best in sustained high-funding periods
   
2. **Reverse Cash and Carry**: Short spot + long perp when funding is negative
   - Less common due to borrowing costs

### Squeeze Detection
- **Long Squeeze Setup**:
  - Funding > 0.05% for multiple periods
  - Rising OI (people adding to longs)
  - Price at resistance
  - Risk: Sharp move down forces liquidations

- **Short Squeeze Setup**:
  - Funding < -0.05% for multiple periods
  - Rising OI (people adding to shorts)
  - Price at support
  - Risk: Sharp move up forces liquidations

## Annualized Funding

To compare funding across assets:
```
Annualized Funding = 8h Funding Rate × 3 × 365
```

Example:
- 0.01% per 8h = 10.95% annualized
- 0.05% per 8h = 54.75% annualized

## Best Practices

### For Directional Traders
1. **Avoid extreme funding**: High funding = crowded trade = risk
2. **Use funding as confirmation**: Entry when funding aligns with your view
3. **Monitor multi-day trends**: Single reading less meaningful

### For Options Strike Selection (Friday)
1. **Check weekly funding trend**: Sustained positive = bullish bias
2. **Compare to historical**: Is current funding elevated?
3. **Cross-reference with OI**: Funding + OI tells the full story
4. **Factor into strike distance**: High funding → wider OTM strikes

### Red Flags
- Funding > 0.1% (unsustainable, squeeze risk)
- Funding flipping rapidly (uncertainty)
- Funding diverging from price (potential reversal)
