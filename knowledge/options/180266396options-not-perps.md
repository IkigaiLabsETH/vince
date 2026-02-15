---
tags: [trading, options, derivatives]
agents: [solus, eliza]
---


## Methodology & Framework

**Key Concepts:**
- **Perpetual Contracts vs. Options**: Understanding the differences in scalability, liquidity, and user engagement between these two financial instruments.
- **Product-Market Fit**: Recognizing that selling covered calls represents a favorable alignment of market needs and product offerings, especially in crypto.
- **Open-Source vs. Custom Solutions**: Differentiating between platforms that replicate existing systems quickly versus those that require unique, complex development.

**Analytical Approach:**
- Evaluate the scalability potential of financial products by examining the ease of replication in their underlying technology. Analyze how streamlined systems attract more users and liquidity compared to artisanal solutions that demand extensive resources to develop.
- Consider user psychology and behavioral economics; assess how immediate gratification (e.g., high leverage trading) influences trading behaviors over more stable, long-term strategies (e.g., covered calls).

**Pattern Recognition:**
- Look for signals indicating when new options platforms begin to adopt modular, user-friendly solutions, which can suggest a shift in market dynamics.
- Monitor the proliferation of perpetual platforms to gauge market saturation and the likelihood of a subsequent rise in options trading as technology evolves.

**Strategic Framework:**
- When entering a new trading space, prioritize identifying scalable, replicable models that can quickly capture market share. Assess whether the product aligns with sustainable user behavior or whether it caters to speculative trading.
- Develop strategic partnerships or invest in technology that enhances the functionality of options trading platforms, focusing on modular systems that allow for rapid deployment and flexibility.

**Important Notes:**
- Focus on methodology, not specific numbers or dates.
- Extract the "how to think" approach, not historical data.
- Make it actionable and applicable to current situations.
- Keep it concise (200-400 words total).

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


# 180266396.Options Not Perps
## Metadata
**Source**: Substack Essay
**Category**: options
**Word Count**: 917
**Tags**: #btc #eth #sol #options #perps #substack
---

By the two anons who keep selling weekly covered calls on their BTC stack
**
A crime that has been going on in plain sight for four straight years.

Every single day, thousands of traders open Hyperliquid, or one of the 1,400 perps platforms that now exist and do the following:

## Context

- 
Deposit money

- 
Pick 50–100× leverage

- 
Pray

## Main

- 
Get liquidated or pay funding until they hate themselves

- 
Repeat

Meanwhile, in a quiet corner of the size of a studio apartment, a handful of weirdos are doing this instead:

- 
Deposit BTC or ETH they already own

- 
Click “sell a weekly out-of-the-money call”

- 
Collect 1–2 % in cold, hard USDC

- 
Go back to sleep

- 
Repeat every Friday for the rest of their lives

> 
No liquidations. 
No funding bleed. 
No 3 a.m. margin calls. 

Just free money for owning the asset everyone already wanted to own anyway. You already know which one feels better to use. You already know which one is growing slower than a house plants in winter.

The question we have been screaming into the void since 2021 is simple:

Why the hell are there 1,400 perps casinos and only twelve places to sell a covered call? We finally have an answer. And it’s not what you think.

Part I – The Perps Won Because They Were Free to Copy**

Sometime in late 2023 a company called Orderly Network did something evil in the best possible way: they turned “build a perpetuals exchange” from a $15 million death march into a weekend project.

Want proof? Count the perps platforms launched in the last 18 months. You will run out of fingers, toes, and probably patience.

They all use the same liquidity pool, the same matching engine, the same oracles, the same risk system. All the new founder has to do is change the logo, pick a farm token name, and tweet “100× SOL leverage, 0 fees week one.” Liquidity shows up instantly because it’s shared. Users show up instantly because dopamine is universal.
**
Perps became the ultimate open-source money printer. Options stayed the artisanal, hand-crafted, probably-going-to-rug-you cottage industry.

Part II – Options Were Simply Refused to Scale (Until Last Month)**

Here’s what nobody says out loud: Selling a covered call or a cash-secured put is the single best product-market fit crypto has ever produced for anyone who isn’t trying to turn $500 into a Lambo by Tuesday. Yet the category stayed tiny for the most boring reason in the world: it was impossible to copy-paste.

Every options platform had to invent its own:

- 
Strike pricing engine

- 
Expiry settlement system

- 
300 separate order books per asset

- 
Hedging logic that wouldn’t explode the first time BTC moved 15 %

- 
Vault contracts that actually worked

Result: maybe twelve teams on Earth were stubborn (or well-funded) enough to finish the job. Everyone else looked at the spreadsheet and went back to forking another perps DEX.

**Part III – The Week Everything Changed**

In October 2025, two things happened quietly:

- 
Hyperliquid shipped HIP-3 on Hyperliquid → suddenly any team can launch hundreds of independent order books with one click and keep half the fees forever.

- 
Orderly Network finished the last mile on their SDK and quietly told a few builders: “You can now wrap anything you want around our liquidity layer — including things that expire.”

**
Translation: the two biggest liquidity pools in crypto just turned themselves into Lego sets. You no longer need to beg market makers to show up. You no longer need to pray your expiry oracle doesn’t get gamed. You no longer need a twenty-person team and two years. You need a laptop, a couple of months, and the willingness to pay some liquidity bribes for sixty days.

Part IV – The New Game (Anyone Can Play)**

Here is the entire playbook, written in plain English:

- 
Take Orderly’s liquidity (already billions deep, already on every chain).

- 
Wrap a simple vault on top that says:**“Lock your BTC or ETH here → we sell weekly calls for you → you keep the premium → you keep the coins unless we get assigned (and even then you just bought cheaper).”

- 
Do the same for cash-secured puts if you’re feeling spicy.

- 
Pay market makers 40 % APR for the first ninety days to quote tight spreads.

- 
Ship the prettiest strike-picker UI the world has ever seen.

- 
Go to sleep and collect yield.

That’s it.
That is now the whole product.

No liquidation risk. No funding bleed. Just the boring, beautiful business of collecting option premium on assets people refuse to sell anyway.

Part V – The Prediction We Are Willing to Tattoo**

2024–2025 was the Summer of a Thousand Perps Forks.

2026 will be the Winter of a Thousand Options Vaults.

The first team (or second, or fifth) team that ships a dead-simple, gorgeous, actually-liquid covered-call / cash-secured-put product on top of Orderly or Hyperliquid is going to do to Ribbon, Lyra, and every existing options protocol what Hyperliquid did to dYdX.
> 
They will not need permission. They will not need a $200 million treasury. They will just need to be the first to make “set it and forget it” yield feel as easy as opening a perps position.

We have spent years watching friends get rekt on leverage while quietly stacking 40–70 % annualised doing the thing that feels like cheating.

The cheat code is no longer hidden behind a PhD in stochastic calculus and a nine-figure balance sheet.

## Conclusion

The cheat code is now open source.

See you on the strike matrix.