---
tags: [trading, options, derivatives]
agents: [solus, eliza]
last_reviewed: 2026-02-15
---


## Methodology & Framework

**Key Concepts:**
- **Liquidity Dynamics:** Understanding the importance of liquidity in options trading, particularly during high volatility periods.
- **Centralized vs. Decentralized Mechanisms:** Analyzing the strengths and weaknesses of centralized exchanges like Deribit compared to decentralized finance (DeFi) protocols.
- **Hedging Mechanisms:** Grasping how constant hedging is crucial in options trading, particularly in relation to gamma and delta adjustments.
- **Technology Integration:** Evaluating the role of technology (e.g., transaction speed, gas costs) in the effectiveness of trading platforms.
- **Market Structure:** Recognizing the impact of market structure on options pricing and execution efficiency.

**Analytical Approach:**
- Use a comparative analysis framework to evaluate centralized exchanges versus DeFi protocols, focusing on liquidity, transaction speed, and hedging capabilities. 
- Assess the operational characteristics of successful platforms like Deribit against emerging decentralized options protocols to identify gaps in performance and user experience.

**Pattern Recognition:**
- Look for signals indicating market shifts, such as spikes in open interest or sudden changes in liquidity. 
- Monitor transaction times and gas fees on decentralized platforms to identify potential inefficiencies that may limit trading strategies.
- Analyze trading volumes and interest in specific options strategies to gauge market sentiment and potential opportunities.

**Strategic Framework:**
- Apply the lessons learned from centralized exchanges to inform trading strategies within DeFi. Consider the integration of faster, more efficient technologies to enhance trading capabilities.
- Develop a risk management framework that incorporates hedging strategies to mitigate exposure, particularly in volatile market conditions.
- Foster adaptability by continuously observing the evolving landscape of crypto options markets, adjusting strategies based on performance metrics and emerging technologies.

**Important Notes:**
- Focus on the methodology rather than specific historical data or numbers, as these will not be applicable in the current market.
- Extract insights on how to think critically about the options market rather than relying solely on past metrics.
- Ensure that insights are actionable and relevant to current trading environments, facilitating informed decision-making.

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


# 181500010.Unbreakable Moat
## Metadata
**Source**: Substack Essay
**Category**: options
**Word Count**: 713
**Tags**: #btc #ethereum #eth #defi #options #perps #trading #portfolio #substack
---
We kicked this off scrolling through X threads on Deribit. Those Joshua Lim breakdowns, the official Insights posts dissecting massive call spreads and put skews... it hit me how Deribit isn’t just an exchange. It’s basically the entire crypto options market. 85-90% of BTC options OI lives there. 

Think about that – billions in open interest, expiries flipping $10-15B notional like it’s nothing, and the rest of the world (OKX, Bybit, Binance, even CME) scraping the crumbs.

## Context

And why? Because they nailed the boring stuff that matters: liquidity that doesn’t vanish when you need it most, spreads so tight you can run complex strategies without getting eaten alive on slippage, tools that actually help pros (DVOL index, block trades, portfolio margin). 
[
![](https://substack-post-media.s3.amazonaws.com/public/images/c5190c6b-707e-468d-a087-d62347dce064_3438x1808.jpeg)

](https://substackcdn.com/image/fetch/$s_!09V8!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fc5190c6b-707e-468d-a087-d62347dce064_3438x1808.jpeg)
Post-Coinbase acquisition this year? Game over for a lot of the “Deribit’s offshore, scary” narrative. Now you’ve got regulated backing, but still that crypto edge – European-style options, cash-settled in coin, thousands of strikes.

But here’s what got me – we spent all this time poking at why on-chain can’t touch them. Not yet, anyway.

## Main

Take the DeFi side. We’ve got protocols like Lyra (now Derive), Hegic, Aevo... they tried. AMMs for options, peer-to-pool models, all that. Peaked at what, a couple hundred million TVL in the best cycles? Now? Fractions. 

Why do they flop so hard?

It’s not ideology. It’s physics – or close enough. Options demand constant hedging. Gamma goes nuclear when spot moves fast. You need to delta-adjust instantly, or you bleed. On Ethereum? Arbitrum? Even Optimism? Blocks take seconds, gas spikes, MEV bots front-run your hedge. By the time your tx confirms, the world’s moved. On Deribit, it’s sub-millisecond, centralized matching, no oracle drama mid-trade.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/b135e983-d92b-475f-87f1-e3ded1ae39c1_3444x1724.jpeg)

](https://substackcdn.com/image/fetch/$s_!fTsa!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fb135e983-d92b-475f-87f1-e3ded1ae39c1_3444x1724.jpeg)> 
Then Hypersurface shows up on HyperEVM, and I’m like... okay, this feels different. HyperEVM’s fast – inherits that Hyperliquid speed, sub-second blocks, cheap gas. Vaults for covered calls and cash-secured puts, upfront premiums in USDT, no liquidations, passive yield that actually looks decent in bull markets. It’s the closest thing to “DeFi options that don’t suck” we’ve seen.

But... and this is the gut punch... it’s still vaults. Structured, automated. You deposit, the protocol sells calls for you, hedges internally using Hyperliquid perps. Great for yield farmers, hands-off folks. Terrible if you want to gamma scalp, build custom spreads, vol trade like the big boys on Deribit. No real orderbook, no arbitrary strikes, no dynamic positioning.

Which loops us to Hyperliquid itself. These guys... man, they’re something else.
> 
They built their own L1 just to make perps feel like Binance. Fully on-chain CLOB, 200k orders/sec peaks, gasless, sub-second finality. Took 70-80% of on-chain perp volume in what, two years? Billions daily, OI hitting billions.

So why no options? We’ve been circling this the whole chat.**

Perps were the perfect wedge. No expiries to mess with settlement. Funding rates keep price anchored. Liquidity bootstraps easier because everyone’s long gamma in a trending market. Options? Expiries mean oracles at crunch time. Strikes mean fragmented pools. Gamma hedging means market makers need to flip delta constantly, at speed, without getting picked off.

Hyperliquid could do it, though. Imagine: native options on HyperCore (their perp engine), hedging directly into those monster perp books. Automated, low-latency, on-chain. Portfolio margin across everything. It’d be brutal – Deribit’s moat cracked wide open for the DeFi crowd.

**But they haven’t. And honestly? Smart. **

They’re dominating one thing insanely well. Revenue pouring in, buybacks, decentralization push. Why risk diluting focus on a product 10x harder, where one bad expiry could nuke trust?

Instead, they let the ecosystem build: Hypersurface vaults, Hypercall trying options on top, Derive integrating. Keeps the flywheel spinning, perp liquidity feeding everything else.

Still... I can’t shake the feeling it’s coming. Eventually. 

When the tech’s bored of perps, when competition in that niche heats up. One announcement, and boom – real on-chain options war.

Until then? Deribit sleeps easy. That moat’s not just deep – it’s got alligators.

## Conclusion

It feels like watching the quiet before something shifts. Crypto trading’s splitting: CeFi for the sharp money, DeFi for the stubborn idealists... but Hyperliquid’s blurring lines in perps. Options might be where it finally breaks.

Anyway, that’s the real story I see in all this research. Not “Deribit wins forever,” but “Deribit wins until someone crazy enough builds what Hyperliquid could.”