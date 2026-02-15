---
tags: [security, risk, safety]
agents: [otaku, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- **Code is not law until it's verified.** Smart contracts are deterministic but not inherently safe. Immutability means bugs persist forever unless upgradeability is built in — which itself introduces admin key risk. Every interaction is a trust decision about the code, the deployer, and the economic incentives surrounding the protocol.
- **Vulnerability taxonomy:** Risks fall into three domains: logic errors (reentrancy, access control), economic exploits (oracle manipulation, flash loan attacks, MEV extraction), and governance failures (malicious upgrades, rug pulls via admin keys).

**Analytical Approach:**
- Read the audit reports, but don't stop there. Check what version was audited vs. what's deployed. Verify via block explorer that deployed bytecode matches audited commit.
- Assess the audit firm's track record. Tier 1: Trail of Bits, OpenZeppelin, Spearbit, Cantina. Tier 2: Cyfrin, Sherlock contests, Code4rena. Multiple audits from different firms compound coverage.
- Evaluate economic assumptions: What happens if the price of collateral drops 90% in one block? What if an oracle goes stale? What if liquidity dries up?

**Pattern Recognition:**
- Reentrancy remains a top exploit vector despite being well-known since The DAO (2016). It recurs because developers interact with external contracts before updating state, or because cross-function reentrancy paths are missed.
- Oracle manipulation attacks follow a pattern: protocol relies on spot price from a single DEX pool → attacker uses flash loan to manipulate that pool → borrows/mints at distorted price → repays flash loan with profit. Defense: use time-weighted average prices (TWAPs), Chainlink feeds, or multi-source aggregation.
- Flash loan attacks don't require capital, only a profitable transaction path within a single block. They expose any protocol whose security depends on the assumption that attackers need capital.

**Decision Framework:**
- **Is it audited?** By whom, when, and was it the deployed version?
- **Is it battle-tested?** TVL duration matters. A protocol holding $500M for 2 years has survived more adversarial scrutiny than one holding $500M for 2 weeks.
- **Upgradeability model?** Immutable is safest from admin risk but can't patch bugs. Timelocked upgrades (48h+) allow users to exit. Instant upgradeable proxies require maximum trust in the team.
- **Admin key structure?** EOA admin = single point of failure. Multisig with known, doxxed signers is better. DAO governance with timelock is strongest but slowest.

---

### Common Vulnerability Patterns

**Reentrancy:** Attacker's contract calls back into the vulnerable contract before the first execution completes. Classic defense: checks-effects-interactions pattern, reentrancy guards (`nonReentrant` modifier). Modern variant: read-only reentrancy via view functions that read stale state during cross-contract callbacks.

**Oracle manipulation:** Price feeds that rely on single-block spot prices are exploitable. Flash loans amplify this by providing unlimited capital for one transaction. Mitigation: Chainlink decentralized oracles, TWAP over multiple blocks, circuit breakers for extreme deviations.

**Access control failures:** Missing `onlyOwner` checks, unprotected `initialize()` functions on proxy contracts, or default visibility allowing anyone to call privileged functions. The Parity multisig hack ($150M frozen) stemmed from an unprotected library initialization.

### Insurance & Risk Transfer

**Nexus Mutual** provides discretionary cover for smart contract failures and protocol exploits. Coverage is claim-assessed — not automatic. Premiums reflect perceived risk (higher for newer or unaudited protocols). **Insurace** and **Unslashed** offer alternatives with different claim processes.

Insurance doesn't eliminate risk; it transfers it. Cover limits are often below total TVL, meaning a catastrophic exploit may not be fully reimbursable. Use insurance as one layer in a broader risk management stack: position sizing, diversification across protocols, and personal due diligence remain primary defenses.

*Last updated: 2026-02-15*
