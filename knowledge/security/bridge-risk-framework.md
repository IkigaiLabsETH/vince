---
tags: [security, risk, safety]
agents: [otaku, eliza]
---
## Methodology & Framework

**Key Concepts:**
- **Custody and attestation:** How to think about where bridged assets are locked or minted; who validates or attests; single vs multi-party; fraud proofs or delay.
- **Finality and delay:** How source and destination chain finality and delay periods affect withdrawal and dispute windows; reorg and rollback risk.
- **Concentration and contagion:** Bridges concentrate value; exploit or insolvency can affect multiple chains and protocols; map dependencies.

**Analytical Approach:**
- For any bridge: identify **custody model** (locked assets vs mint/burn), **attestation or validation** (who can move funds), and **delay or dispute** (time to withdraw, fraud-proof window).
- Use **historical exploits** (e.g. bridge hacks) as failure-mode examples for methodology, not as current risk scores.
- Map **cross-chain dependencies** (which protocols rely on which bridge) for contagion framework.

**Important Notes:**
- Focus on methodology; use actions/APIs and security resources for current bridge status or TVL.

---

> **📌 Knowledge Base Note**
>
> This content provides **frameworks** for thinking about bridge risk.
> - **Use for:** Design comparison, custody and attestation, contagion mapping
> - **Do NOT use for:** Current TVL, bridge status, or operational procedures

---

## Context

Cross-chain bridges lock or mint assets across chains and concentrate value and trust. This doc outlines how to reason about bridge design and risk for analysis and positioning, not for listing current bridges or TVL.

## Main

**Custody and attestation:** Where are assets locked (source chain) and who can mint or release (destination)? Single validator set vs multi-party; fraud proofs vs delay period; upgradeability and admin keys. These determine trust and failure modes.

**Finality and delay:** Source and destination chains may have different finality rules and reorg risk; withdrawal or dispute windows should align with finality. Use frameworks (e.g. "validate delay vs finality") rather than quoting specific bridges.

**Concentration and contagion:** Bridges are high-value targets; exploit or insolvency can affect multiple chains and dependent protocols. Map which protocols and chains rely on which bridge for contagion assessment.

**Related content:** See security-frameworks.md for general security methodology; defi-metrics for TVL and flow frameworks where bridges are discussed.

## Conclusion

Use this for bridge risk and design frameworks. For current bridge TVL, status, or operational procedures, use actions and dedicated security resources.
