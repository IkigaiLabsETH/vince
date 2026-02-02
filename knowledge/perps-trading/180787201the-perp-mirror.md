

## Methodology & Framework

**Key Concepts:**
- **Automated Options-Selling Vaults:** The concept of creating a vault that leverages automated trading strategies for options selling, focusing on risk management and market efficiency.
- **Perpetual Futures Mirror:** The idea of utilizing perpetual futures as a new financial instrument that mirrors traditional options strategies, enhancing user experience while minimizing complexity.
- **Market Neutrality:** Strategies that maintain a neutral position in market fluctuations to capitalize on inefficiencies without exposing users to significant risk.
- **Yield Vaults and Points Vaults:** Differentiated products that allow users to choose between harvesting arbitrage opportunities and amplifying rewards from potential future airdrops.

**Analytical Approach:**
- Approach the topic by identifying inefficiencies within the crypto market, particularly in derivatives trading. Analyze how existing financial frameworks can be adapted to cryptocurrency, emphasizing the need for simplicity and user-friendliness in design.
- Utilize a design thinking mindset, focusing on user experience while building robust financial products that automate complex trading strategies.

**Pattern Recognition:**
- Look for signals of market inefficiencies, such as discrepancies in funding rates and trading volumes across decentralized platforms. Identify trends in trading behaviors, especially around new product launches and airdrop announcements.
- Monitor the emergence of tokenless venues and assess how their operational models differ from traditional platforms, particularly in terms of profitability and user engagement.

**Strategic Framework:**
- Apply this thinking by conducting a SWOT analysis (Strengths, Weaknesses, Opportunities, Threats) on new trading platforms or products. Assess how they align with the principles of market neutrality and user-centric design.
- Develop a roadmap for potential product development that integrates automated trading strategies with a focus on user experience, ensuring that any new offerings address identified market inefficiencies.

**Important Notes:**
- Focus on methodologies and frameworks rather than specific market data or historical examples.
- Extract insights on how to think critically about trading strategies, particularly in the context of emerging technologies and market dynamics.
- Ensure the methodologies are actionable and relevant to contemporary market conditions, encouraging innovation and strategic planning in the crypto space.

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


# 180787201.The Perp Mirror
## Metadata
**Source**: Substack Essay
**Category**: perps-trading
**Word Count**: 1,403
**Tags**: #bitcoin #btc #ethereum #eth #sol #defi #options #perps #futures #inflation
---> 
Some time ago I put out [a short open letter](https://ikigaistudio.substack.com/p/open-letter) on this Ikigai Studo SubStack. It was never meant to be a manifesto for the timeline; it was a specification sheet addressed to no one in particular and to every competent builder at once. In plain language I described the exact product that still does not exist in crypto at the level it deserves: an automated, delta-hedged, options-selling vault that treats Bitcoin, Ethereum, and a short whitelist of real assets the way Chicago treats the S&P 500. Sell weeklies and monthlies, covered calls above, cash-secured puts below, roll everything at expiry, compound every cent of premium, issue clean ERC-20 shares, charge a fair performance fee, and ship it with audits thick enough to survive a sovereign-wealth due-diligence room. No token, no governance, no Discord. Just the machine.

I ended the letter the only way that felt honest: if someone builds this, I will be user number one, and I know a handful of other quiet whales who will follow with 5-fig deposits on day one. That was the entire point of publishing it. Not to announce that we were building it (we’re not; we’re misfits who stumbled into writing seed checks, not the team that should be shipping production-grade options infrastructure). The point was to throw a perfectly wrapped billion-dollar idea into the public domain and see which builders have the taste and the scars to pick it up and execute. Sooner or later someone will. The math is too obvious, the addressable market too large, and the absence too embarrassing for it to stay unbuilt forever.
> 
And then, almost as if the market itself wanted to remind me how fertile that mental model actually is, [Spreads Finance](https://x.com/spreads_fi) shipped their beta.

## Context

What they built is not an options vault. It is [the perpetual-futures mirror image of the exact thing I described](https://ikigaistudio.substack.com/p/open-letter). Deposit USDC, choose between a yield vault that harvests funding arbitrage across tokenless venues or a points vault that amplifies your slice of the inevitable airdrop three- to ten-fold, and then walk away while the protocol runs market-neutral basis trades on your behalf. Same ruthless elegance, same refusal to make the user babysit open interest or funding wicks, same Pendle-style bifurcation of exposure. Different raw material, different payoff tail, identical philosophy: take a market that is screamingly inefficient, wrap it in a vault so clean that a normal human can use it, and let the inefficiency pay the users forever.

To understand why Spreads feels like such a revelation, you have to start with the underbelly of perpetual futures in 2025. Daily volumes have exploded past fifty billion dollars, annualized that’s twenty trillion in a sector that’s barely five years old. The fuel? Tokenless venues like Nado, Pacifica, Fastlane, and Tread, which are printing revenue hand over fist from trading fees and funding rates without the distraction of their own governance tokens. 

Yet. Those tokens are coming, and when they do, the airdrops will be historic—Hyperliquid’s HYPE token peaked at a sixty-billion-dollar fully diluted valuation last year, turning early volume farmers into accidental billionaires. 

## Main

The catch? Farming that upside manually is a grind. You need to maintain open interest to rack up points, navigate funding rate flips that can turn positive carry into a slow bleed, and delta-hedge constantly to avoid getting crushed by price wicks. It’s not investing; it’s a full-time job for quants with PhDs in stochastic calculus.

Spreads strips all that away with a deceptively simple architecture. When you deposit USDC—starting as low as a hundred bucks, though the real magic happens at scale—the protocol doesn’t just park it. It deploys your capital into a pooled strategy that’s market-neutral by design: simultaneously long the spot asset (say, BTC or ETH) and short the equivalent perpetual future on one of those tokenless venues, or vice versa depending on where the funding premium is fattest that week. This basis trade captures the perpetual misalignment between spot and futures prices, which in bull markets means pocketing positive funding payments (think five to fifteen percent annualized just from the carry) plus a slice of the venue’s trading fees. The open interest from your pooled position then qualifies for points multipliers, because the venues reward volume and OI regardless of direction. No liquidations for you, the depositor, because the strategy is delta-hedged at the protocol level—any price move up or down nets out to zero directional exposure. The smart contracts handle the rebalancing automatically, triggered by oracle feeds when spreads widen beyond predefined thresholds, all while keeping gas fees minimal through batched executions.

From there, the Pendle-inspired split kicks in, and this is where Spreads gets truly elegant. Your deposit isn’t monolithic; it’s tokenized into two composable tranches, like principal and yield tokens but tuned for the perps meta. Opt into the yield vault, and your share prioritizes the stable, upfront returns from funding and fees—eight to twenty percent APY in a typical bull regime, net of the protocol’s modest cut (under one percent, from what the early docs suggest). It’s the conservative path for someone who wants to treat this like a high-yield savings account on steroids, with the added bonus of whatever basis alpha the keepers squeeze out from arbitrage opportunities across venues. 

The points vault, on the other hand, is the degen’s delight: it forgoes most of that yield to amplify your points accrual three to ten times, pooling the collective OI of all depositors to hit the venues’ tiered multipliers. In a world where the next Nado or Pacifica drop could mirror Hyperliquid’s scale, a ten-thousand-dollar deposit here might translate to half a million in tokens if the FDV lands at five billion. 
> 
Withdrawals are perpetual, no lockups, and the whole thing is ERC-4626 compliant, so you can stack it into Aave for lending yield or Morpho for optimized borrowing if you want to get fancy.

The beauty—and the conviction—is in how contained the risks feel compared to raw perp farming. Funding rates can invert in bears, sure, dragging yields toward flat or slightly negative, but the protocol pivots strategies dynamically: swap to short spot/long perp when carries flip, or rotate to LST-focused basis trades on venues like Fastlane for steadier baseline returns. 

Smart contract risk is the big one for any new protocol, especially in beta, but Spreads’ modular design (separating the pooling layer from the execution keepers) and early emphasis on audits should mitigate that. No leverage at the user level means no margin calls, and since it’s all on tokenless markets, you’re not exposed to governance dilution or token inflation until the airdrop hits. 

Early TVL is sub-ten million, but with integrations already live on those four venues and more teased, it’s primed for the kind of flywheel that turned Pendle into a four-billion-dollar behemoth.

I love that Spreads exists for the same reason I love that the options vault still doesn’t: both are living proof that the future of this ecosystem belongs to simple, automated, market-neutral machines that do one thing perfectly. 

One of them now lives and is already taking deposits. The other is still an open letter floating in the ether, waiting for the right team to claim it and turn it into another billion-dollar franchise. 

## Conclusion

I have zero interest in being that team (I gave up pretending I could ship clean DeFi code sometime around the third time I accidentally bricked a testnet), but I have absolute conviction that whoever does ship the options version will capture a river of fees that makes most layer-1 treasuries look quaint.
> 
Until that day comes, I’ll keep doing what we do here: write the uncomfortable truths, map the opportunity surface, underwrite the teams that actually build, and deploy capital into the few products that already meet the bar. Spreads just joined that second category. The options vault still sits in the first, unsigned but inevitable. I’ll be waiting with the deposit bag when they launch.

TLDR: We begged for a boring, TradFi-grade Bitcoin options-selling vault and threw the blueprint into the void. Someone else just shipped the exact same idea for perpetual futures instead. Spreads Finance turns USDC into passive, market-neutral funding yield or 3–10× levered airdrop tickets on the hottest tokenless venues, no babysitting required. Same philosophy, different market, both inevitable billion-dollar primitives. One is live today. The other is still waiting for its builder. I’ll be using both the moment the second one exists.