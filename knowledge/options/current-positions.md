---
tags: [trading, options, derivatives]
agents: [solus, eliza]
---
# Current Options Positions

> **Last Updated**: January 2026
> **Platform**: Hypersurface (https://hypersurface.io)
> **Expiry**: Friday 08:00 UTC (weekly)

## Position Summary

| Asset | Holdings | Cost Basis | Status | Strategy |
|-------|----------|------------|--------|----------|
| HYPE | 3,600 | ~$25.50 | ACTIVE | Weekly covered calls |
| SOL | 1,400 | $142.00 | PAUSED | Wheel paused (underwater) |
| BTC | 21 | N/A | HODL | Long-term hold, no options |
| Stables | ~$150k | N/A | READY | Secured puts collateral |

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
- Holdings: 3,600 HYPE
- Entry: ~$25.50 blended average
- Platform: Hypersurface
- Strategy: Weekly covered calls
- Selling weekly covered calls

**Analytical Approach:**
- Apply these frameworks to interpret current market conditions
- Focus on the thinking patterns, not specific numbers
- Use as foundation for your own analysis

**Pattern Recognition:**
- Historical examples illustrate concepts, not predict outcomes
- Look for similar patterns in current data using your tools
- Combine with real-time data from actions/APIs


## HYPE Wheel (ACTIVE)

**Status**: ACTIVE - profitable wheel strategy

**Position Details:**
- Holdings: 3,600 HYPE
- Entry: ~$25.50 blended average
- Platform: Hypersurface
- Strategy: Weekly covered calls

**Weekly Routine:**
1. Friday: Review HYPE price vs current week's strike
2. Friday: Select new strike for next week (target 20-35% assignment probability)
3. Collect premium upfront
4. If assigned: Decide secured puts (bearish) or buy back (bullish)

**Current Strategy:**
- Selling weekly covered calls
- Strike typically $1-3 above current price
- Target: >50% APR with <35% assignment probability
- Premium: ~$2,000/week at current levels

**If Assigned (HYPE above strike at expiry):**
- Sell HYPE at strike price, keep all premium collected
- Decision: Sell secured puts OR buy back HYPE immediately
- Bullish: Buy back and restart calls
- Neutral/Bearish: Sell puts at target re-entry price

---

## SOL Wheel (PAUSED - MAX PAIN)

**Status**: PAUSED - underwater, covered calls not viable

**Position Details:**
- Holdings: 1,400 SOL
- Cost Basis: $142 per SOL
- Investment: $198,800
- Current Price: ~$123 (January 2026)
- Unrealized Loss: ~$26,600 (~13%)

**Why Wheel is Paused:**
- Covered calls only make sense at strikes ABOVE cost basis
- Strikes above $140 have terrible yields (<5% APR)
- Selling at lower strikes would lock in loss if assigned
- Example: $130 strike this week had only ~36% APR with 37% assignment risk

**When to Resume:**
- SOL recovers above $135: Start evaluating strikes
- SOL recovers above $140: Resume wheel with $145+ strikes
- SOL recovers above $150: Full wheel strategy active

**Current Strategy:**
- HOLD and wait
- Do NOT sell covered calls below cost basis
- Do NOT suggest SOL options activity unless price >$135

**What NOT to Do:**
- Do not suggest "monitoring for profit-taking" (nothing to take)
- Do not suggest covered calls (not viable at current prices)
- Do not panic sell (fundamentals still intact)

---

## BTC (HODL)

**Status**: Long-term hold, NOT used for options

**Position Details:**
- Holdings: 21 BTC
- Strategy: Generational wealth accumulation
- Options: NOT APPLICABLE

**Why No Options on BTC:**
- Core conviction position
- Not looking to sell at any near-term strike
- Premium income from HYPE wheel is sufficient
- BTC is the savings layer, not the trading layer

---

## Stables (~$150k)

**Status**: Ready for secured puts when attractive

**Allocation:**
- USDai on Pendle LP (primary)
- sUSDai on Arbitrum
- USDC reserve

**Purpose:**
- Collateral for cash-secured puts
- Deployed when wheel gets assigned and puts make sense
- Currently earning ~10-15% APY in DeFi while waiting

**When to Deploy for Puts:**
- After HYPE covered call assignment
- When IV spikes and put premiums are fat
- Target strikes at support levels

---

## Weekly Decision Framework

### Monday-Thursday
- Monitor prices (especially HYPE relative to current strike)
- Track funding rates (HyperliquidAnalyst)
- Watch for catalysts that might move prices

### Thursday Night (IMPORTANT)
- Hypersurface may exercise ITM options 24h early
- If HYPE is significantly above strike, prepare for assignment
- Review secured put strikes if assignment likely

### Friday (STRIKE SELECTION DAY)
1. Check final price at 08:00 UTC
2. Determine if assigned or not
3. If not assigned: Select new strike for next week
4. If assigned: Decide puts vs buy back
5. Execute on Hypersurface

---

## Key Numbers to Remember

| Metric | Value | Note |
|--------|-------|------|
| HYPE holdings | 3,600 | Active wheel |
| HYPE entry | ~$25.50 | Blended average |
| SOL holdings | 1,400 | Wheel paused |
| SOL cost basis | $142 | Resume wheel above $140 |
| SOL break-even | ~$140 | Accounting for some premium collected |
| BTC holdings | 21 | HODL forever |
| Stables | ~$150k | Puts collateral |
| Weekly target | ~$2,000 | From HYPE covered calls |

---

## Notes for Margaux

When discussing options:
- HYPE wheel is ACTIVE - can discuss strikes, premiums, assignment
- SOL wheel is PAUSED - only discuss recovery levels, not trading
- BTC is HODL - never suggest options on BTC
- Stables are for puts collateral - mention when discussing post-assignment strategy

When user says "GM":
- Report HYPE price relative to current strike
- Note if SOL is recovering toward $140
- Friday = strike selection day, other days = nothing to do
