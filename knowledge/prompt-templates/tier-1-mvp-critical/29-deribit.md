---
tags: [general]
agents: [eliza]
---
# Prompt #29: Deribit (Options Chain Data - CRITICAL for 7-Day Options)

**Priority**: Tier 1 - MVP Critical (HIGHEST PRIORITY)  
**Specialist**: `derivativesSpecialist`  
**Data Source**: Deribit API (BTC, ETH, SOL options)

## Core Objectives
- Pull fresh Deribit 7-day options chain for BTC, SOL, ETH
- Extract full IV surface, skew, OI clusters, volume, Greeks, funding rates
- Identify richest premiums and OI magnets for strike selection
- Calculate expected moves and probability distributions
- Output structured data for `regimeAggregatorSpecialist` (Hypersurface table generation)

## Tool Usage Strategy

### Primary: Deribit API
- `code_execution` with Python `requests` to query Deribit API:
  - Base URL: `https://www.deribit.com/api/v2/`
  - Authentication: API key + secret (generate at https://www.deribit.com/account/api)
  - Key endpoints:
    - `/public/get_book_summary_by_currency` - Summary for BTC/ETH/SOL
    - `/public/get_instruments` - List all options (filter: `kind=option`, `currency=BTC|ETH|SOL`)
    - `/public/get_order_book` - Order book for specific instrument
    - `/public/get_tradingview_chart_data` - Historical data
    - `/public/get_historical_volatility` - Realized volatility
    - `/public/get_implied_volatility` - IV data
    - `/public/ticker` - Latest ticker data (OI, volume, mark IV, Greeks)
  
### Key Data Points to Extract
For 7-day options (closest expiry ~7 days out):
1. **Options Chain**: All strikes with:
   - Bid/Ask/Last prices
   - Open Interest (OI) per strike
   - Volume (24h)
   - Implied Volatility (IV)
   - Greeks (Delta, Gamma, Theta, Vega)
   - Mark price (mid)

2. **IV Surface**: 
   - ATM IV (at-the-money)
   - Skew (25 delta call IV - 25 delta put IV)
   - Term structure (7-day vs longer-dated)

3. **OI Clusters**:
   - Strikes with highest OI (put/call walls)
   - Volume spikes (unusual activity)

4. **Funding Rates**:
   - Perpetual funding rate
   - Historical context

### Fallback: Browse Page
- `browse_page` on Deribit options pages:
  - https://www.deribit.com/options/BTC (for BTC)
  - https://www.deribit.com/options/ETH (for ETH)
  - https://www.deribit.com/options/SOL (for SOL)
  - Instructions: "Extract options chain data for closest 7-day expiry (~7 days out). For each strike, extract: Strike price, Bid/Ask/Last, Open Interest, Volume (24h), Implied Volatility, Delta, Gamma, Theta, Vega. Identify highest OI strikes (put/call walls) and richest premium strikes. Extract current funding rate for perpetual."

## Output Format

```markdown
# Deribit 7-Day Options Chain Snapshot – [Current Date]

**Current Spot & Context**
- **BTC Spot**: $XX,XXX
- **ETH Spot**: $X,XXX
- **SOL Spot**: $XXX.XX
- **Perpetual Funding Rate**: X.XXXX% (24h average)
- **ATM IV (7-day)**: BTC XX% | ETH XX% | SOL XX%
- **IV Skew (25Δ)**: BTC Call-Put = ±X.X% | ETH = ±X.X% | SOL = ±X.X%

**Options Chain Highlights (7-Day Expiry)**

### BTC Options
- **Expiry**: [Date] (~7 days)
- **Highest OI Strikes**:
  - Calls: $XX,XXX (OI: X,XXX contracts)
  - Puts: $XX,XXX (OI: X,XXX contracts)
- **Richest Premiums** (High IV strikes):
  - [Strike] Call: $XXX premium (IV: XX%)
  - [Strike] Put: $XXX premium (IV: XX%)
- **OI Distribution**: [Brief description, e.g., "Heavy call OI at $100k, put support at $95k"]

### ETH Options
[Same structure as BTC]

### SOL Options
[Same structure as BTC]

**Expected Moves (7-Day)**
Based on ATM IV:
- **BTC**: ±$X,XXX (±X.X%) expected move (1 std dev)
- **ETH**: ±$XXX (±X.X%) expected move
- **SOL**: ±$XX (±X.X%) expected move

**Probability Distributions**
- **BTC**: ~68% chance to stay within $XX,XXX - $XX,XXX range
- **ETH**: ~68% chance to stay within $X,XXX - $X,XXX range
- **SOL**: ~68% chance to stay within $XXX - $XXX range

**Strike Selection Insights**
• **Covered Calls**: [Top 6-8 OTM strikes with rich premiums, sorted by APR potential]
  - Strike $XX,XXX: Sell price $XXX, APR ~XX%, Hold prob ~XX% (based on Delta/Greeks)
• **Cash-Secured Puts**: [Top 6-8 ITM/OTM strikes with rich premiums]
  - Strike $XX,XXX: Sell price $XXX, APR ~XX%, Assignment prob ~XX%

**Greeks Analysis**
- **Delta clustering**: [Note if calls/puts showing extreme deltas = positioning bias]
- **Gamma hotspots**: [Strikes with high gamma = potential volatility amplification]
- **Theta decay**: [Premium decay rate for 7-day options]

**Data Sources & Notes**
- Source: Deribit API (authenticated requests)
- API Key: Required (generate at https://www.deribit.com/account/api)
- Rate limits: Check Deribit API documentation
- Limitations: Free tier may have rate limits; consider paid tier for production
```

## Integration Notes
- **CRITICAL** for `derivativesSpecialist` - primary source for 7-day options data
- Direct input to `regimeAggregatorSpecialist` for Hypersurface table generation
- Output format designed for easy parsing into strike recommendation tables
- Can be merged with #13 Coinglass, #30 Skew into "Derivatives Pulse" agent (per Grok suggestion)

## Performance Notes
- Deribit is the primary options exchange for BTC/ETH/SOL
- 7-day options are closest weekly expiry (usually ~7 days out, adjust if needed)
- Focus on OI clusters and richest premiums for strike selection edge
- Greeks (Delta) can proxy for probability of holding/assignment
- IV skew reveals market sentiment (call skew = bullish, put skew = bearish)

---

## Methodology & Framework

**Key Concepts:**
- **Options Chain Analysis**: Understanding the components of an options chain, including bid/ask prices, open interest, volume, and implied volatility.
- **Implied Volatility Surface**: Analyzing the IV surface to gauge market sentiment and identify skew patterns between calls and puts.
- **Open Interest Clusters**: Identifying significant open interest levels to locate potential price support/resistance zones.
- **Expected Move Calculation**: Using ATM IV to estimate potential price movement over a defined timeframe.
- **Probability Distribution**: Assessing the likelihood of price staying within certain ranges based on volatility metrics.

**Analytical Approach:**
To effectively analyze options data, prioritize a structured extraction of key metrics from the Deribit API. Start with the options chain for the closest expiry and systematically gather information on strikes, open interest, volume, and Greeks. This data forms the foundation for deeper analysis of market sentiment and potential price movements. Engage in comparative analysis of the IV surface to identify anomalies or patterns that could signal trading opportunities.

**Pattern Recognition:**
Look for clusters of high open interest which often indicate significant price levels that market participants are targeting. Pay attention to unusual spikes in volume, as they may suggest increased activity or shifts in sentiment. Monitor the IV skew between calls and puts to identify potential bullish or bearish biases in the market. Recognizing these patterns can help inform trade decisions and risk management strategies.

**Strategic Framework:**
Apply this methodology to current market conditions by continuously monitoring options data and adapting strategies accordingly. Use the insights gained from the expected move calculations and probability distributions to gauge risk and identify suitable strike selections for covered calls and cash-secured puts. Regularly reassess the IV surface and open interest patterns to remain responsive to market changes, ensuring that strategic decisions are data-driven and timely.

**Important Notes:**
- Concentrate on developing a repeatable process for data extraction and analysis.
- Maintain a focus on how analytical insights can directly influence trading strategies.
- Ensure the methodology remains flexible to adapt to new market conditions or data sources.
- Keep the framework concise and actionable for immediate application in trading scenarios.

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
*API Reference: https://docs.deribit.com/*
