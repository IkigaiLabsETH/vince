---
tags: [trading, options, derivatives]
agents: [solus, eliza]
last_reviewed: 2026-02-15
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

## Methodology & Framework

**Key Concepts:**
- **Assets**: HYPE, SOL, WBTC, ETH
- **Expiry**: Friday 08:00 UTC (weekly)
- **Early Exercise**: Hypersurface may exercise ITM options up to 24 hours before expiry
- **Settlement**: Automatic on expiry
- For Europe: Friday 09:00 CET / 10:00 CEST

**Analytical Approach:**
- Apply these frameworks to interpret current market conditions
- Focus on the thinking patterns, not specific numbers
- Use as foundation for your own analysis

**Pattern Recognition:**
- Historical examples illustrate concepts, not predict outcomes
- Look for similar patterns in current data using your tools
- Combine with real-time data from actions/APIs


# Hypersurface Options Reference

> **This is the ONLY platform we use for options trading.**
> All covered calls and secured puts are executed on Hypersurface.
> Deribit is used for IV/volatility data only, NOT for trading.

## Platform Overview

- **URL**: https://hypersurface.io
- **Assets**: HYPE, SOL, WBTC, ETH
- **Expiry**: Friday 08:00 UTC (weekly)
- **Early Exercise**: Hypersurface may exercise ITM options up to 24 hours before expiry
- **Settlement**: Automatic on expiry

## Settlement Timing (CRITICAL)

Options expire **Friday 08:00 UTC**:
- For Europe: Friday 09:00 CET / 10:00 CEST
- For US East: Friday 03:00 EST / 04:00 EDT
- For US West: Friday 00:00 PST / 01:00 PDT

IMPORTANT: for us that's 09:00 each friday

**Important**: Hypersurface may exercise ITM options up to ~24 hours before expiry when optimal for the protocol. This means Thursday evening decisions matter.

## Covered Calls

A covered call is selling someone the right to buy your asset at a chosen strike price.

**How it works:**
1. You own a crypto asset (HYPE, SOL, WBTC, ETH)
2. You sell a call option at a strike price
3. You earn an upfront premium (yield) regardless of outcome

**Outcomes at expiry:**

| Scenario | Price at Expiry | What Happens | What You Earn |
|----------|-----------------|--------------|---------------|
| Below Strike | $95 (strike $100) | Keep asset + premium | Premium |
| At Strike | $100 (strike $100) | Keep asset + premium | Premium |
| Above Strike | $110 (strike $100) | Asset sold at $100 | Premium + $100 per unit |

**Key insight**: You keep the premium no matter what. If assigned, you sell at a price you chose as acceptable.

## Cash-Secured Puts

A cash-secured put is selling someone the right to sell you an asset at a chosen strike price.

**How it works:**
1. You hold stablecoins equal to (strike × quantity)
2. You sell a put option at a strike price
3. You earn an upfront premium (yield) regardless of outcome

**Outcomes at expiry:**

| Scenario | Price at Expiry | What Happens | What You Earn |
|----------|-----------------|--------------|---------------|
| Above Strike | $110 (strike $100) | Keep cash + premium | Premium |
| At Strike | $100 (strike $100) | Keep cash + premium | Premium |
| Below Strike | $95 (strike $100) | Buy asset at $100 | Premium (reduces cost basis) |

**Key insight**: Premium reduces your effective purchase price. If assigned at $100 with $5 premium, your real cost basis is $95.

## The Wheel Strategy

The wheel is a systematic income strategy that cycles between covered calls and secured puts:

```
┌─────────────────────────────────────────────────────────────┐
│                    THE WHEEL STRATEGY                        │
│                                                              │
│   1. Own Asset → Sell Covered Calls                          │
│          ↓                                                   │
│   2. If price > strike → Assigned (sell asset)               │
│          ↓                                                   │
│   3. Hold Cash → Sell Secured Puts                           │
│          ↓                                                   │
│   4. If price < strike → Assigned (buy asset back)           │
│          ↓                                                   │
│   5. Return to Step 1 → Repeat                               │
│                                                              │
│   Premium income at every step, regardless of direction      │
└─────────────────────────────────────────────────────────────┘
```

**When to use secured puts vs buy back:**
- **Bullish on asset**: Buy back immediately at market, restart calls
- **Bearish on asset**: Sell puts at lower strike, get paid to wait for cheaper entry
- **Neutral**: Sell puts at same strike, collect premium while waiting

## Strike Selection (Friday Decision)

Every Friday, you must decide:

**For Covered Calls:**
- Higher strike = lower premium, lower assignment probability
- Lower strike = higher premium, higher assignment probability
- Sweet spot: Strike with ~20-35% assignment probability and >50% APR

**For Secured Puts (after assignment):**
- Strike at/below where you'd happily buy back
- Consider: recent support levels, funding rates, sentiment

**Hypersurface shows:**
- Sell price (strike)
- APR (annualized premium return)
- Sell probability (assignment probability)

## Key Differences from Deribit

| Feature | Hypersurface | Deribit |
|---------|--------------|---------|
| **Purpose** | Execute wheel trades | IV/volatility data |
| **Interface** | Simple, wheel-focused | Complex, full options |
| **Expiries** | Weekly (Friday 08:00 UTC) | Multiple per week |
| **Assets** | HYPE, SOL, WBTC, ETH | BTC, ETH only |
| **Display** | APR, assignment probability | Greeks, IV surface |
| **Use case** | TRADING | ANALYSIS ONLY |

## Why Perps Data Matters for Strikes

Hyperliquid perps data informs strike selection:

- **High positive funding**: Longs crowded → higher chance of pullback → lower strikes safer
- **High negative funding**: Shorts crowded → squeeze potential → higher strikes may get hit
- **Rising OI + price**: Strong trend → strikes may be tested
- **Falling OI + price**: Weak conviction → range likely → closer strikes = more premium

**Workflow:**
1. HyperliquidAnalyst reads funding, OI, positioning
2. DeribitAnalyst reads IV, skew for volatility context
3. Friday: Pick strike on Hypersurface informed by both

## Current Workflow

```
Monday-Thursday: Monitor prices, funding, news
Thursday night: Review positions (early exercise possible)
Friday morning: Strike selection decision
Friday 08:00 UTC: Options expire
Friday: New positions opened for next week
```

## References

- Hypersurface Docs: https://docs.hypersurface.io
- Covered Calls: https://docs.hypersurface.io/overview/how-do-covered-calls-work
- Secured Puts: https://docs.hypersurface.io/overview/how-do-cash-secured-puts-work
- Settlement: https://docs.hypersurface.io/overview/settlement
