---
tags: [trading, derivatives, perps]
agents: [solus, eliza]
---


## Methodology & Framework

**Key Concepts:**
- **Zero-Knowledge (ZK) Rollups:** A scalability solution for blockchain that enhances privacy and reduces transaction costs while maintaining security.
- **Decentralized Exchange (DEX) Transparency:** The importance of verifiable order matching and liquidations to eliminate risks associated with centralized exchanges.
- **Regulatory Engagement:** The proactive approach to compliance and policy shaping as a competitive advantage in the crypto space.
- **High-Frequency Trading (HFT) in DeFi:** The application of traditional trading strategies within decentralized finance, emphasizing speed and efficiency.
- **Investor Confidence Metrics:** Understanding how funding rounds and investor backing indicate market confidence and strategic positioning.

**Analytical Approach:**
- Assess projects based on foundational principles such as transparency, speed, and regulatory compliance. Consider how these elements address historical pain points in DeFi.
- Evaluate growth metrics (e.g., Total Value Locked (TVL), open interest) not just as isolated data points but as indicators of user adoption and market viability over time.
- Analyze competitive landscapes by comparing features and performance metrics of similar platforms to identify strengths and weaknesses.

**Pattern Recognition:**
- Look for shifts in user engagement metrics, such as rapid increases in TVL or trading volume, as signals of market traction.
- Identify investor patterns regarding funding confidence and potential synergies, especially with established financial institutions.
- Monitor regulatory developments and compliance efforts as precursors to market acceptance or operational shifts.

**Strategic Framework:**
- When evaluating or developing DeFi projects, prioritize building frameworks that ensure transparency and scalability, utilizing ZK rollups or similar technologies.
- Engage with regulators early to shape favorable policy environments, thereby reducing operational risks.
- Develop clear metrics for assessing market performance and user engagement, ensuring agility to adapt to competitive pressures or regulatory changes.

**Important Notes:**
- Focus on methodologies rather than specific numerical data or historical events.
- Emphasize actionable insights that can be applied to current developments in the DeFi landscape.
- Maintain clarity and conciseness to facilitate understanding and application of the frameworks discussed.

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


# 182623069.Lit Or Dimmed
## Metadata
**Source**: Substack Essay
**Category**: defi-metrics
**Word Count**: 968
**Tags**: #ethereum #eth #sol #defi #perps #futures #trading #substack
---
Built as a zero-knowledge (ZK) rollup on Ethereum, [Lighter](http://app.lighter.xyz/?referral=109539TS) is not just another perpetual futures (perps) exchange—it’s a verifiable trading protocol designed to eliminate the opacity and centralization risks that plague many DEXs. With zero fees for retail traders, millisecond latency, and cryptographic proofs for every operation, Lighter aims to democratize high-frequency trading while inheriting Ethereum’s robust security. Let’s explore why Lighter could redefine on-chain trading—or face the familiar pitfalls of hype-driven launches.

The Genesis: From Vision to Venture-Backed Reality**

## Context

Lighter was founded in 2022 by [Vladimir Novakovski](https://x.com/vnovakovski), a prodigy who graduated from Harvard at age 18. Novakovski, now 40 and serving as CEO, envisioned a DEX that combines the speed of centralized exchanges with the transparency of blockchain. His background in quantitative finance and crypto likely informed Lighter’s focus on verifiable order matching and liquidations—core pain points in DeFi where users often rely on opaque off-chain components.
**
The project’s traction culminated in a $68 million funding round in November 2025, valuing Lighter at $1.5 billion. Led by Peter Thiel’s Founders Fund and Ribbit Capital, the round included heavyweights like Haun Ventures and Robinhood. This wasn’t Lighter’s first raise; earlier rounds brought in $21 million, underscoring investor confidence in its zk-rollup approach to perps and spot trading. Backers like Robinhood hint at strategic synergies—rumors swirl of potential acquisitions, positioning Lighter as a “Robinhood playbook” for retail crypto trading. The team, though not fully disclosed in public docs, includes advisors like Kevin Susanto (Forbes Asia 30 Under 30) and emphasizes regulatory compliance, with Novakovski making trips to Washington D.C. to engage senators and shape digital asset policies. This proactive stance sets Lighter apart in a sector often reactive to regulations.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/48d5c4fd-d409-47be-814c-12bdb0e65678_2458x1034.jpeg)

](https://substackcdn.com/image/fetch/$s_!UqF-!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F48d5c4fd-d409-47be-814c-12bdb0e65678_2458x1034.jpeg)
By mid-2025, Lighter launched its public mainnet, transitioning from a private beta that amassed $75M TVL and 9,759 traders in its first 100 days. 
[
![](https://substack-post-media.s3.amazonaws.com/public/images/33a8b282-1b19-47eb-bced-76171f3a4a26_3438x1720.jpeg)

](https://substackcdn.com/image/fetch/$s_!0Clp!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F33a8b282-1b19-47eb-bced-76171f3a4a26_3438x1720.jpeg)
Today, it boasts $1.41B TVL, $1.56B open interest (OI), and $231B in 30-day perp volumes—surpassing even Hyperliquid in monthly metrics ($252B vs. $221B post-wash-trading purge). These figures reflect organic growth, with volumes stabilizing at $4B daily perps and $80M spot after Sybil slashes.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/eb29f096-ef87-4bf9-850a-e15c2279998b_2526x1080.jpeg)

## Main

](https://substackcdn.com/image/fetch/$s_!2m2V!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Feb29f096-ef87-4bf9-850a-e15c2279998b_2526x1080.jpeg)
Under the Hood: ZK-Powered Verifiability and Scalability**

At its core, Lighter solves DeFi’s trilemma of speed, security, and decentralization through custom ZK circuits. Traditional DEXs like AMMs suffer from slippage and oracle dependencies, while off-chain order books introduce trust risks. Lighter’s whitepaper outlines a hybrid architecture: a Sequencer for low-latency ordering, a Prover for generating succinct proofs, and Ethereum for settlement and data availability.

Key innovations include:

- 
Order Book Tree: A Merkle-like structure encoding price-time priority in leaf indexes, enabling Θ(log N) operations for insertions, matching, and quotes. This ensures verifiable fairness without centralized operators.

- 
ZK Proofs: Using SNARKs (Succinct Non-Interactive Arguments of Knowledge), Lighter proves correctness of matching, liquidations, and state transitions. Multi-layered aggregation allows parallel proof generation, scaling to thousands of orders per second.

- 
Hybrid Data Availability: Compressed blobs posted to Ethereum enable an “Escape Hatch” for users to reconstruct states and exit independently if the system freezes—mitigating censorship.

- 
Revenue Model: Zero fees for retail draw sticky liquidity, while premium tiers for HFT and APIs generate ~$200-250M annualized revenue. Fees fund growth and token buybacks, not dividends.

This setup contrasts with competitors: Hyperliquid’s Layer 1 exposes users to MEV and bridge risks, while dYdX v4 trades decentralization for speed. Lighter’s Ethereum anchoring and ZK verifiability offer a “best of both worlds” approach, with real-world proof in events like a failed $HYPE manipulation that netted LLP holders $22M.

**Tokenomics: Community-Aligned with Buyback Focus**

$LIT, Lighter’s native token, has a total supply of 1 billion. Tokenomics emphasize alignment: 25% (250M) for the initial airdrop (fully unlocked at TGE), another 25% reserved for future drops, ~15% for team/core (3-year vesting with 1-year cliff), and the rest for treasury, partners, and ecosystem growth.

Utility is accrual-focused: No staking yields or fee discounts (fees are zero), but protocol revenue drives buybacks, creating deflationary pressure. This “same boat” design aligns community, team, and VCs, with no role-based incentives or hidden allocations. Future expansions could include RWA perps or ZK-EVM integrations.

The airdrop, tied to Seasons 1-2 points (total ~12M after Sybil slashes), rewards farmers. At pre-market FDV of $3.5-4B, each point could yield $70-95, with OTC trades at $60-80. TGE is slated for December 29, 2025, per Polymarket odds (75-90%), with wallet submissions closing December 26. 

Day-1 float: 30-35%, minimizing immediate dilution.

Transparency gaps—full vesting details pending—irk some, echoing $HYPE’s issues. Yet, on-chain moves like 250M tokens to distribution contracts signal TGE readiness.
[
![](https://substack-post-media.s3.amazonaws.com/public/images/a7baac8f-ac5d-4816-ad89-91bc35816754_2446x1260.jpeg)**

](https://substackcdn.com/image/fetch/$s_!kR2X!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fa7baac8f-ac5d-4816-ad89-91bc35816754_2446x1260.jpeg)
Market Dynamics: Hype, Risks, and Competitive Edge**

Pre-markets on Hyperliquid, Whales Market, and Extended peg $LIT at $3.4-3.8 (FDV $3.4-3.8B), with Polymarket favoring >$3B FDV at 64% but only 37% for >$4B.

Bulls cite “infrastructure arbitrage” against $HYPE (FDV $23B), targeting $10B+ parity via superior oracles and retail focus. Bears warn of 25% unlock flooding supply in thin holiday liquidity, potentially dumping to $2.5B like $HYPE’s rerate.

Lighter’s zero-fee model and ZK edge attract whales (e.g., Justin Sun adding liquidity), but limited utility vs. $HYPE (no staking/gas) caps short-term hype. Risks include post-TGE farmer exodus (-50% volumes) and seasonal depression.

**Horizon: Regulatory Moats and 2026 Growth**

Lighter’s regulatory push—Coinbase roadmap inclusion, DC engagements—could unlock tokenized equities and institutional flows. Expansions into RWAs (gold/silver markets), spot pairs, and mobile apps signal vertical integration. If volumes surge post-TGE like Hyperliquid’s “second wave,” $LIT could shine as a 2026 hold, with bids at $1.75-2.5B FDV for sidelined capital.

Lighter.xyz isn’t flawless—transparency lapses and unlock risks loom—but its verifiable ZK infrastructure, revenue traction, and aligned tokenomics make it a fundamentally sound project. In a market weary of hype, Lighter’s “cheaper alternative” to Hyperliquid could capture retail and institutional mindshare, potentially rerating to $10B+ FDV. 

## Conclusion

As TGE approaches, the real test is post-launch volumes. For Substack readers eyeing DeFi’s next wave, [Lighter](http://app.lighter.xyz/?referral=109539TS) warrants attention: Stay lit, but DYOR.