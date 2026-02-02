## Methodology & Framework

**Key Concepts:**
- **Wallet hygiene:** How to think about key management, multisig, and hot vs cold storage; principle of least privilege and recovery procedures.
- **Smart contract and protocol risk:** How to reason about upgradeability, admin keys, oracle dependency, and economic attack vectors (e.g. flash loans, governance attacks).
- **Bridge and cross-chain risk:** Why bridges are high-value targets; custody and consensus assumptions; delay and finality differences between chains.

**Analytical Approach:**
- For protocols: identify **trust assumptions** (who can change code, who can move funds, who feeds oracles) and **failure modes** (liquidation cascades, oracle manipulation, bridge exploit).
- For wallets: separate **operational security** (phishing, device compromise) from **key and backup design**; use frameworks, not specific product endorsements.
- For bridges: treat **custody and finality** as first-order risks; compare design (locked assets vs mint/burn, fraud proofs, delay periods).

**Pattern Recognition:**
- Major exploits often involve bridge design, oracle manipulation, or privileged access; post-mortems reinforce "how to think" about similar systems.
- Security is operational and evolving; knowledge provides frameworks, not real-time threat data.

**Important Notes:**
- Focus on methodology and risk frameworks, not current CVE or live threat intelligence.
- Do not use for operational security procedures; use setup-guides and internal-docs where procedures are documented.

---

> **📌 Knowledge Base Note**
>
> This content provides **frameworks** for thinking about security and risk.
> - **Use for:** Risk assessment, trust assumptions, design patterns
> - **Do NOT use for:** Current exploits, operational procedures, or compliance checklists

---

## Context

Security in crypto spans wallet safety, smart contract and protocol risk, and cross-chain (bridge) risk. This document outlines how to reason about these areas for analysis and positioning, not for implementing security procedures.

## Main

**Wallet and key management:** Reason about key storage (hot vs cold), multisig thresholds, and recovery flows. Consider principle of least privilege: which keys can move what, and what happens if a key is compromised or lost. Avoid storing specific seed phrases or credentials in knowledge; reference setup or internal docs for procedures.

**Smart contract and protocol risk:** For any protocol, ask: who can upgrade or pause, who controls treasuries, and how oracles and liquidations work. Historical exploits (oracle manipulation, governance attacks, flash-loan-driven liquidations) illustrate failure modes; use them to build a checklist for similar systems.

**Bridge and cross-chain risk:** Bridges concentrate value and trust. Identify where assets are locked or minted, who validates or attests, and what delay or finality exists. Prefer frameworks (e.g. "validate custody and attestation model") over listing current bridges; for live data use actions/APIs.

## Conclusion

Use security knowledge for risk frameworks and "how to think" about trust and failure modes. For current threats, operational playbooks, or compliance, use dedicated security and operations resources.
