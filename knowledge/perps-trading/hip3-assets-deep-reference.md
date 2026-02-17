# HIP-3 Deep Reference — Protocol Mechanics + Listed Assets

> Last updated: 2026-02-17
> Source: Hyperliquid official docs + onchain observation

---

## Part 1: HIP-3 Protocol Mechanics

### What is HIP-3?

Permissionless builder-deployed perpetuals on Hyperliquid. Deployers create their own perp DEX with independent margining, order books, and settings. Inherits the full HyperCore stack — high-performance margining, order books, same API as native perps (just change the asset ID).

### Deployer Requirements

- **Stake**: 500k HYPE (expected to decrease over time)
- **Responsibilities**: market definition, oracle definition, contract specs, oracle price feeds, leverage limits
- **Asset slots**: First 3 assets per DEX require no auction. Additional assets go through Dutch auction (same frequency/min price as HIP-1)
- **Unstaking**: Staking must be maintained 30 days after all perps are halted

### Key Technical Details

- **Margin mode**: Isolated-only (cross margin planned for future upgrade)
- **Fees**: User fees = 2x normal validator-operated perp fees. Deployer receives 50% fee share. Protocol collects the same net fee regardless of HIP-3 vs native
- **Growth mode**: Protocol fees/rebates/volume reduced by 90% when activated — deployer incentive for bootstrapping liquidity
- **Collateral**: Any quote asset (USDC, USDT0, etc.)
- **Fee tiers**: Spot volume counts 2x toward fee tier calculation

### Settlement

- Deployer halts trading via `haltTrading` action → all orders cancelled, positions settle to mark price
- Trading can resume (asset recycled for dated contracts)
- Once all assets settled, deployer can unstake

### Slashing

Validators slash deployer stake via stake-weighted vote. No distinction between malicious and incompetent — both get slashed.

| Severity | Max Slash | Trigger |
|----------|-----------|---------|
| Critical | 100% | Invalid state transitions, prolonged downtime |
| Moderate | 50% | Brief downtime |
| Minor | 20% | Degradation of service |

- Slashed stake is **BURNED** (not distributed to affected users — prevents perverse incentives)
- Slashable even during 7-day unstaking queue

---

## Part 2: Known HIP-3 DEXs and Assets

### xyz DEX — Stock Perps (USDC settled)

Onchain synthetic perps tracking US equities. Trade stocks 24/7 on Hyperliquid.

| Ticker | Asset | API Symbol | Sector | Why It Matters |
|--------|-------|------------|--------|----------------|
| NVDA | Nvidia | `xyz:NVDA` | Semiconductors | AI chip monopoly. $3T+ market cap. Data center GPU dominance. Most traded stock perp |
| GOOGL | Alphabet | `xyz:GOOGL` | Big Tech | Search + Cloud + YouTube + Waymo. Gemini AI. DeepMind |
| META | Meta Platforms | `xyz:META` | Social/AI | FB/IG/WhatsApp + Llama open-source AI + Reality Labs VR. Massive AI infra spend |
| MSFT | Microsoft | `xyz:MSFT` | Big Tech | Azure + OpenAI partnership + Copilot AI + Office/Windows. Enterprise AI leader |
| AAPL | Apple | `xyz:AAPL` | Consumer Tech | iPhone + Services + Apple Intelligence. Largest company by market cap |
| PLTR | Palantir | `xyz:PLTR` | Defense/AI | Government AI + Foundry platform. High-growth defense tech |
| INTC | Intel | `xyz:INTC` | Semiconductors | Legacy chip maker, turnaround play. Foundry ambitions |
| ORCL | Oracle | `xyz:ORCL` | Enterprise | Cloud infra + database. Larry Ellison. Massive AI data center buildout |
| MU | Micron | `xyz:MU` | Memory | HBM for AI chips. Cyclical but critical AI supplier |
| NFLX | Netflix | `xyz:NFLX` | Streaming | Dominant streaming. Ad tier growth |
| MSTR | MicroStrategy | `xyz:MSTR` | Bitcoin Treasury | Michael Saylor's BTC holding company. Leveraged BTC exposure via equity |
| COIN | Coinbase | `xyz:COIN` | Crypto | Largest US crypto exchange. Regulatory bellwether. Base L2 |
| HOOD | Robinhood | `xyz:HOOD` | Fintech | Retail trading platform. Crypto exposure |
| CRCL | Circle | `xyz:CRCL` | Stablecoin | USDC issuer. IPO'd. Revenue from interest on reserves |
| AMZN | Amazon | `xyz:AMZN` | E-commerce/Cloud | AWS dominance + retail + AI. Andy Jassy |
| TSLA | Tesla | `xyz:TSLA` | EV/AI | Elon Musk. EVs + FSD + Optimus robot + energy. Most volatile stock perp |

**Trading context:**
- Oracle tracks US equity prices → trades 24/7 but funding/price behavior differs outside market hours
- Weekend/after-hours: lower liquidity, wider spreads, funding can diverge
- Earnings = massive vol events. Know the calendar
- Crypto-correlated names: MSTR, COIN, HOOD

### vntl DEX — Pre-IPO & Index Perps

| Ticker | Asset | API Symbol | Type | Why It Matters |
|--------|-------|------------|------|----------------|
| OPENAI | OpenAI | `vntl:OPENAI` | Pre-IPO | ChatGPT parent. Sam Altman. ~$300B+ valuation. IPO anticipated |
| ANTHROPIC | Anthropic | `vntl:ANTHROPIC` | Pre-IPO | Claude AI. Dario Amodei. Amazon-backed. Safety-focused AI lab |
| SPACEX | SpaceX | `vntl:SPACEX` | Pre-IPO | Elon Musk. Starlink + launch monopoly. ~$350B valuation |
| SNDK | SanDisk | `vntl:SNDK` | Tech | Flash storage/SSDs. Western Digital spinoff |
| AMD | AMD | `vntl:AMD` | Semiconductors | Lisa Su. MI300X competing with Nvidia. Data center GPU challenger |
| MAG7 | Magnificent 7 Index | `vntl:MAG7` | Index | AAPL+MSFT+GOOGL+AMZN+META+NVDA+TSLA basket |
| SEMIS | Semiconductors Index | `vntl:SEMIS` | Index | Broad chip sector (NVDA, AMD, INTC, MU, AVGO, etc.) |
| INFOTECH | Info Tech Index | `vntl:INFOTECH` | Index | Broader tech sector beyond semis |
| ROBOT | Robotics Index | `vntl:ROBOT` | Index | Robotics/automation (Tesla Optimus, Boston Dynamics peers) |

**Trading context:**
- Pre-IPO tokens (OPENAI, ANTHROPIC, SPACEX) are **HYPERPS** — no underlying spot oracle, funding based on mark price EMA
- Highly speculative — funding can be extreme during hype cycles
- Index perps (MAG7, SEMIS) = diversified exposure, lower single-stock risk
- Pre-IPO perps convert to vanilla perps once the company lists on CEX spot

### Other HIP-3 DEXs

The ecosystem is expanding rapidly with new deployers. Monitor Hyperliquid's HIP-3 registry for new DEX launches.

---

## Part 3: VINCE Trading Context

### Why HIP-3 Matters for the Stack

- **Pillar 6 of the 7-pillar stack**: HIP-3 spot (from the $100K plan)
- Stock perps = hedge or express macro views without leaving Hyperliquid
- Pre-IPO perps = high-conviction AI narrative plays (OPENAI, ANTHROPIC)
- Index perps = quick macro hedges (short MAG7 as portfolio hedge)

### Key Risks

| Risk | Detail |
|------|--------|
| Isolated margin | Can't share collateral with main perps positions |
| Deployer risk | If deployer gets slashed or halts → position settles at mark price |
| Liquidity | Thinner than native HL perps, wider spreads, more slippage on size |
| Oracle risk | Deployer controls oracle. xyz/vntl are reputable but still a trust assumption |
| Funding | Can be wild on low-liquidity HIP-3 assets |

### VINCE's Role with HIP-3

- Monitor funding rates on xyz stock perps (especially around earnings)
- Track OPENAI/ANTHROPIC pre-IPO price action for AI narrative signals
- Feed stock market correlation data to broader crypto analysis
- Report MSTR premium/discount to NAV as BTC sentiment indicator
