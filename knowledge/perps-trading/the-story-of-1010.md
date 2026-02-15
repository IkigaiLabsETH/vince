---
tags: [trading, derivatives, perps]
agents: [solus, eliza]
last_reviewed: 2026-02-15
---


## Methodology & Framework

**Key Concepts:**
- **Liquidation Events:** Understanding the mechanics and implications of massive liquidations in perpetual futures and their triggers.
- **Market Sentiment:** Analyzing how external news and events (e.g., political announcements) can rapidly shift market dynamics and investor behavior.
- **Leverage Ratios:** Recognizing the impact of high leverage on market volatility, particularly during periods of low liquidity.
- **Narrative Formation:** The process through which market narratives emerge post-event and how they can obscure the actual causes of market movements.

**Analytical Approach:**
- Adopt a **cause-and-effect lens**: Examine how specific events (like announcements) lead to cascading effects in the market. Consider the broader context, including leverage and liquidity conditions, to understand potential vulnerabilities.
- Utilize **data triangulation**: Cross-reference multiple data sources (e.g., liquidation maps, wallet traces, and market depth data) to construct a comprehensive view of market movements and validate narratives.
- Implement a **timeline analysis**: Break down significant events into phases to identify key pressure points that lead to volatility.

**Pattern Recognition:**
- Look for **over-leveraged positions** in the market prior to significant announcements or events—these can act as a powder keg for potential liquidations.
- Monitor **market depth and spreads** on exchanges; sudden widening of spreads may indicate panic or liquidity crisis.
- Be aware of **emerging narratives** post-event that may not align with the actual circumstances, as these can influence market psychology and future trading behavior.

**Strategic Framework:**
- Develop an **event-response strategy**: Create a framework for responding to news events that includes assessing leverage in the market and potential liquidity constraints.
- Use a **risk management protocol**: Establish thresholds for leverage and exposure that trigger a reassessment of positions during volatile periods.
- Engage in **narrative analysis**: Regularly evaluate prevailing market narratives against historical data to discern potential misinformation or revisionist history that could affect trading decisions.

**Important Notes:**
- Focus on the methodologies for understanding market dynamics rather than specific historical data points.
- Emphasize the importance of analytical thinking in real-time decision-making processes.
- Ensure that frameworks developed are adaptable to current market conditions and can be employed in ongoing or future trading scenarios.

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


# 179765205.The Story Of 1010
## Metadata
**Source**: Substack Essay
**Category**: perps-trading
**Word Count**: 1,028
**Tags**: #bitcoin #btc #ethereum #eth #solana #sol #defi #perps #futures #fed
---

On Friday, October 10, 2025, at 16:50 UTC, Donald Trump posted a single sentence on Truth Social that detonated the most violent liquidation event in crypto history.“ Effective November 1, all Chinese imports will face an additional 100% tariff.” Within four hours the crypto market cap had lost more than $1 trillion.**Nineteen billion dollars of leveraged positions were wiped out — twenty times larger than the COVID crash, ten times larger than FTX.

Bitcoin fell from $124,968 to $102,000. Ethereum fell 28%. Solana, XRP, and hundreds of altcoins dropped 50–90% in minutes. A synthetic dollar called USDe depegged to $0.65 on Binance while staying at $1.00 everywhere else. Market-maker depth on major exchanges collapsed by 35%. Auto-deleveraging engines forced winners to pay for losers at prices five times worse than the market.

## Context

And then, weeks later, a new narrative took over Twitter, Reddit, and even some “research” notes:“ It wasn’t Trump. It was MSCI preparing to kick MicroStrategy out of the indexes.” That story is almost entirely fiction.

This is the definitive timeline of what actually happened on 10/10 — built from Coinglass liquidation maps, Kaiko depth data, Arkham and Nansen wallet traces, exchange announcements, on-chain forensics, and hundreds of contemporaneous X posts — before the revisionism began.

Phase 1 – The Powder Keg (Early October 2025)**

## Main

- 
Bitcoin had just printed a new all-time high near $126,000.

- 
Total crypto market cap topped $4.3 trillion.

- 
Aggregate open interest across perpetual futures hit an all-time record of ~$200 billion — almost entirely long.

- 
Leverage ratios on retail-heavy exchanges (Binance, Bybit, Hyperliquid) routinely exceeded 50–100×.

- 
The weekend was approaching. New York was closed. Asian liquidity was thin.

- 
One 2011-era whale had quietly built a $200 million short on BTC and ETH days earlier.

Everything was perfectly primed.

**Phase 2 – The Spark (16:50 UTC, October 10)**

16:50 UTC – Trump posts the tariff threat.**16:51 – Risk-off stampede begins.
16:55 – BTC drops 5% in four minutes.
17:00 – First liquidation wave: $1–2 billion in 10 minutes.
17:15 – Spreads on Binance perps widen from 2 bps to 2,600 bps.
18:30 – USDe (Ethena’s synthetic dollar) breaks on Binance only, cascading into cross-margin liquidations.
21:15 – Single worst minute in history: $3.21 billion liquidated in sixty seconds.

There is no mention of MSCI anywhere — not on X, not in Bloomberg terminals, not in any trading-room Slack. The entire market was screaming one word: tariffs.

Phase 3 – The MSCI Myth Is Born (Late October → November)**

Sometime in very late October (exact date unclear, but definitely after the crash), MSCI quietly opened a consultation titled “Digital Asset Treasury Companies” — a broad, non-binding review asking whether firms with >50% of their balance sheet in crypto should be treated like operating companies or like investment funds for index-inclusion purposes.

Key facts that destroy the retroactive narrative:

- 
The consultation was not announced on October 10.

- 
It is not Bitcoin-specific.

- 
It is not MicroStrategy-specific.

- 
It is a questionnaire open until December 31, 2025.

- 
Any potential change would be announced January 15, 2026, and take effect no earlier than February 2026.

In other words: zero mechanical ability to trigger an instant $19 billion liquidation cascade on October 10.

Yet on November 21, a viral thread by Ran Neuner (“This was not a coincidence”) racked up millions of views claiming “smart money” had front-run the MSCI consultation. The thread ignored the actual timeline, ignored the liquidation heatmaps, and ignored the fact that MicroStrategy’s stock fell less than Bitcoin on the day itself (−11% vs −18%). It was textbook hindsight bias dressed up as revelation.

**Phase 4 – Wintermute: Scapegoat of the Year**

The second favourite villain was Wintermute, the algo market-maker that provides a huge chunk of Binance’s liquidity.

What actually happened:

- 
Wintermute deposited roughly $700 million into Binance hot wallets hours before the crash — routine liquidity provisioning.

- 
When the cascade hit, Wintermute absorbed hundreds of millions in sells, lost over $300 million in forced ADL closes (some at 5× the real price), and still kept quoting.

- 
CEO Evgeny Gaevoy later called it “unhedgeable” and predicted a “wave of lawsuits” — against exchanges, not from them.

- 
No on-chain evidence exists of Wintermute dumping into the crash. In fact, their wallets show net absorption.

Yet “Wintermute + Binance cartel” became the dominant conspiracy theory for weeks.

The Real Killers (Ranked by Impact)

- 
Trump’s tariff tweet – the undeniable spark.

- 
Record long open interest + 100× leverage – the gasoline.

- 
Weekend thin liquidity + Asian session timing – the accelerant.

- 
USDe depeg + cross-margin contagion – the detonator.

- 
Auto-deleveraging engines gone rogue – the massacre.

- 
Market-maker depth collapse (all MMs, not just Wintermute) – the hangover that lasted weeks.

MSCI? Not even in the top ten.

**Aftermath & Why It Actually Mattered**

The 10/10 flush was the greatest leverage reset in crypto history. It hurt like hell, but it did exactly what painful resets do:

- 
Open interest was cut by ~40% and has stayed healthy ever since.

- 
ETF inflows resumed within days ($6 billion/week).

- 
Bitcoin dominance rose to 58.5% as altcoin leverage was obliterated.

- 
Funding rates normalised; the market finally had room to breathe.

By late November, Bitcoin was back above $110,000, Ethereum above $4,000, and analysts were once again calling for $150,000–$200,000 BTC by mid-2026 — because the froth was gone.

**Lessons (That Will Be Ignored Until the Next One)**

- 
Leverage is the silent killer. 90% of the $19 billion liquidated was long.

- 
Geopolitics now moves crypto faster than any Fed speaker.

- 
Market makers are not your friend, but you need them alive.

- 
Narratives will always be cleaner than reality — especially on crypto Twitter.

- 
Spot Bitcoin wins again. Every single time.

Final Thought

October 10, 2025, was not a conspiracy.
It was not MSCI.
It was not Wintermute.
It was not “smart money” front-running a PDF that nobody had read.

It was a President tweeting a trade-war escalation into a maximally leveraged, minimally liquid market on a Friday night.

That is all.

## Conclusion

And until the next time the conditions line up exactly the same way — higher highs, crazier leverage, thinner weekends — we will keep forgetting.

See you at the next 10/10.