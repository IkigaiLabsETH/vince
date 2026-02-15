---
tags: [trading, options, derivatives]
agents: [solus, eliza]
---


## Methodology & Framework

**Key Concepts:**
- **Wheel Options Strategy**: A cyclical trading approach involving selling cash-secured puts and transitioning to covered calls to generate income.
- **Theta Decay**: The time erosion of option value that benefits sellers, especially in sideways markets.
- **Probability Heuristic**: Using a 30% strike probability (delta of -0.30) to balance potential assignment and income generation.
- **Market Sentiment Analysis**: Understanding broader market dynamics and liquidity conditions to inform trading decisions.

**Analytical Approach:**
- **Cyclical Income Generation**: Approach trading as a cycle where income is generated through premiums from put selling and covered calls, rather than focusing purely on asset price direction.
- **Risk Management Framework**: Develop a strategy that includes a cash-secured buffer to mitigate risks of leverage while maximizing potential gains from market volatility.
- **Market Context Evaluation**: Assess the broader market environment to ensure that trades are not made in isolation but consider liquidity and sentiment conditions, particularly in volatile markets like crypto.

**Pattern Recognition:**
- **Volatility Indicators**: Monitor Bitcoin's volatility to identify favorable conditions for implementing the wheel strategy, aiming for periods of sideways movement.
- **Strike Price Selection**: Look for options with a strike price reflecting a 30% probability of being in-the-money at expiration, ensuring a balance between income potential and risk of assignment.
- **Market Sentiment Shifts**: Recognize shifts in market sentiment that could affect liquidity—such as capital moving to safer assets or emerging trends in other sectors (like AI)—to adapt the strategy accordingly.

**Strategic Framework:**
- **Iterative Assessment**: Regularly review and adjust your strategy based on market performance, utilizing APR and sell probability metrics to determine optimal strike prices and trade sizes.
- **External Market Checks**: Implement quick external checks to validate market conditions before executing trades, ensuring informed decision-making that adapts to current situations rather than relying on historical data.
- **Continuous Learning Loop**: Maintain a feedback loop where each cycle of the wheel strategy informs future decisions, enhancing your approach as you gather more data and experience in varying market conditions.

**Important Notes:**
- Focus on methodology, not specific numbers or dates.
- Extract the "how to think" approach, not historical data.
- Make it actionable and applicable to current situations.
- Keep it concise.

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


# 182459383.Options Strategy
## Metadata
**Source**: Substack Essay
**Category**: options
**Word Count**: 1,117
**Tags**: #bitcoin #btc #eth #sol #options #fed #trading #substack
---> 
The wheel options strategy, often hailed as a “triple income” approach, has gained immense popularity among traders seeking consistent yield in uncertain environments. At its core, the wheel involves a cyclical process: selling cash-secured puts on an asset you’re willing to own (like Bitcoin in the crypto space), collecting premiums as income, and if assigned, transitioning to selling covered calls on the acquired position to generate further premiums until the asset is called away. This then resets the wheel, allowing you to repeat the put-selling phase. It’s particularly potent in sideways or mildly trending markets, where theta decay—the time erosion of option value—works in the seller’s favor, turning volatility into a reliable income stream without requiring pinpoint directional accuracy.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/69befc01-9d9d-4b42-a13f-7d0e7fc42634_3388x1098.jpeg)

](https://substackcdn.com/image/fetch/$s_!nDL2!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F69befc01-9d9d-4b42-a13f-7d0e7fc42634_3388x1098.jpeg)> 
On platforms like Hypersurface or Deribit, the wheel shines due to Bitcoin’s inherent volatility. As seen in the provided screenshot from Hypersurface, with BTC spot at $87,638 and a January 2, 2026, expiration (roughly 10 days out as of December 23, 2025), traders can secure attractive annualized percentage returns (APRs) on cash-secured puts. For instance, a $85,000 strike offers a 41% APR with a 31% buy probability, translating to a short-cycle yield of about 1.14% on collateral after normalizing for the brief duration. 

## Context

This basic setup—selecting a strike around 30% probability (often corresponding to a delta of -0.30) and deploying full size based on available capital—provides a solid foundation. It balances the odds of assignment (accumulating BTC at a discount net of premium) against the likelihood of pocketing the full premium as pure income, all while maintaining a cash-secured buffer to avoid leverage-induced liquidations.

However, relying solely on this 30% probability heuristic limits the strategy’s potential, especially in crypto’s post-FTX-like apathy where liquidity thins, sentiment sours, and capital flees to “functional” markets like AI stocks or precious metals. 
[
![](https://substack-post-media.s3.amazonaws.com/public/images/cd53693b-8f1a-4588-8bf6-8a2615d27f45_3388x1750.jpeg)

](https://substackcdn.com/image/fetch/$s_!waA_!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fcd53693b-8f1a-4588-8bf6-8a2615d27f45_3388x1750.jpeg)> 
The goal here is to generate income from premiums while giving your BTC room to breathe and potentially recover, especially after getting assigned at $90,000 from last week’s puts. We’ll use the platform’s APR and Sell Probability columns to guide us, plus a few quick external checks to confirm the market isn’t setting us up for a bad surprise. 

## Main

For covered calls, you’re selling the right for someone to buy your BTC at that strike by expiration (still January 2, 2026, about 10 days out). The APR is your potential annualized yield from the premium if the call expires worthless (Bitcoin stays below the strike), and Sell Probability is the chance Bitcoin rises above it, triggering assignment where you sell your BTC.

If you just got assigned BTC at $90,000 last week, your cost basis is around there (minus the put premium you collected earlier, but let’s call it $90,000 for simplicity). That means your BTC is currently underwater since the spot price dipped to $87,500—it’s like buying a house for $90K that’s now worth $87.5K.

Selling a covered call at $88,000 sounds tempting because it’s close to the money, offering a high APR (probably 70-80% or more, based on put patterns), and a decent Sell Probability (around 40-50%, meaning a fair shot at keeping the premium without selling). But here’s the catch: if Bitcoin rebounds just a bit and closes above $88,000, you get assigned and sell at $88,000—locking in a loss versus your $90,000 entry. Even with the call premium (say, boosting your effective sell price to $88,500 or so), you’re still underwater overall. Plus, in this short 10-day window, you’re capping any quick recovery upside below your break-even. It’s like putting a low ceiling on a bounce house when you know the kids (market) might jump higher. 

In the wheel strategy, we want calls that let the price climb back toward or above your cost before risking assignment.

Instead, I’d aim for a strike above your $90,000 cost basis, like $92,000, to give Bitcoin breathing room. Why $92,000? It balances juicy premiums with recovery potential. On Hypersurface, this might show an APR around 40-50% (still solid for 10 days) and a lower Sell Probability, say 25-35%, meaning higher odds (65-75%) of the call expiring worthless so you keep the premium and your BTC. 

If assigned, you’d sell at $92,000—above your cost, turning a potential win even after the premium boost. It’s OTM enough to collect decent income but not so far out (like $95,000 or $100,000) that the APR drops to single digits, making it feel like pocket change. In choppy markets like this, where Bitcoin’s bouncing between $85,000 and $90,000 supports, this strike aligns with letting it grind higher without forcing an early exit at a loss.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/ad4aafd9-9d82-44c5-8eb2-996aeb275c68_2000x886.jpeg)

](https://substackcdn.com/image/fetch/$s_!2Tea!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fad4aafd9-9d82-44c5-8eb2-996aeb275c68_2000x886.jpeg)> 
To back this up and make sure it’s not just a hunch, I always peek at a few external spots for market mood—think of them as weather radars before committing. First, the Crypto Fear & Greed Index. It’s at 29 right now, screaming “Fear,” which means call premiums are puffed up from people betting on upside protection. That supports going a bit OTM like $92,000, as fear keeps yields high without needing to hug the spot price. If it were greedier (say, 70+), I’d tighten up, but here it confirms room for recovery plays.

Next, implied volatility (IV), the market’s vibe on future swings—I check TradingView or CoinGlass for a quick BTC vol snapshot. Short-term IV is elevated around 65%, compared to actual 30-day price wiggles (historical volatility) at about 40%. That gap (IV/HV ratio over 1.5) means options are pricey, favoring sellers like us, but not so crazy high that a sudden calm crushes value.

It tells me $92,000 won’t get wrecked by vol collapse in 10 days, especially in backwardation (where short-term vol is higher than long-term). 

## Conclusion

Lastly, perpetual [funding rates on Binance ](https://www.binance.com/en/futures/BTCUSDT) give a leverage crowd hint.

The latest 8-hour rate is a tiny positive (around 0.005%), neutral territory—not too bearish to drag us down, but not wildly bullish either. It suggests no immediate liquidation cascade, supporting a strike that allows upside without betting the farm. Wrapping it up, skipping $88,000 avoids selling yourself short (literally), while $92,000 fits the wheel’s spirit: earn weekly yield (maybe $800-1,200 premium per BTC, annualized nicely) while positioning for Bitcoin to claw back. 
> 
By picking strikes wisely—like choosing that $92,000 covered call instead of the sketchy $88,000 one—and glancing at stuff like the Fear & Greed Index, implied volatility, and funding rates, you’re dodging the major traps and lining yourself up to cash in on crypto’s usual bounces back. Look, the wheel’s all about steady wins, not going for those massive home runs—it’s those consistent, no-drama cycles that really stack up over time. Whether the market’s freaking out or just hanging steady, this setup lets you keep things rolling smoothly, turning all that chaos into your own reliable money maker.