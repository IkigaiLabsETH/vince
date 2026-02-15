---
tags: [security, risk, safety]
agents: [otaku, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- **Attack surface stratification:** Every wallet type carries a distinct threat profile. Hot wallets face network-level attacks (malware, phishing, session hijacking); cold wallets face physical and supply-chain threats. Security is about matching custody model to asset value and access frequency.
- **Defense in depth:** No single measure is sufficient. Layering hardware isolation, multisig governance, seed phrase compartmentalization, and social engineering awareness creates compounding resistance to compromise.

**Analytical Approach:**
- Classify holdings by value tier (operational float, medium-term, deep cold) and assign custody models accordingly.
- Evaluate each wallet's signing pathway: what touches the internet, what requires physical confirmation, what has time-locks or co-signer requirements.
- Model adversary capabilities: remote attacker (phishing/malware), insider (rogue co-signer), physical attacker (wrench attack), and supply-chain (compromised hardware).

**Pattern Recognition:**
- Most retail losses come from social engineering, not cryptographic breaks. Fake support DMs, malicious dApp approvals, and clipboard hijackers dominate the threat landscape.
- Multisig failures often stem from poor key distribution — all keys on the same device, same geography, or same organizational silo defeats the purpose.
- Hardware wallet users who skip firmware verification or buy from unofficial resellers introduce supply-chain risk that undermines the entire model.

**Decision Framework:**
- **Hot wallet (MetaMask, Rabby):** Daily DeFi interaction, <5% of portfolio. Accept higher risk, mitigate with transaction simulation and approval hygiene.
- **Hardware wallet (Ledger, Trezor, Keystone):** Primary holdings. Buy direct from manufacturer only. Verify firmware hashes. Use passphrase (25th word) for plausible deniability.
- **Multisig (Safe, Squads):** Treasuries and high-value storage. Minimum 2-of-3 with geographically distributed signers. Consider time-locks for large withdrawals.
- **Cold storage (air-gapped):** Deep cold for long-term holds. Generate keys offline, sign via QR codes (Keystone) or SD card (Coldcard). Never connect to network.

---

### Seed Phrase Management

Seed phrases are the root of all custody. Protect them with the same rigor as the assets they control.

**Storage rules:** Never digital — no photos, no cloud storage, no password managers for raw seeds. Use steel/titanium backups (Cryptosteel, Billfodl) rated for fire and flood. Split across locations using Shamir's Secret Sharing (SSS) if single-point-of-failure is unacceptable. A 2-of-3 Shamir split means any two shares reconstruct the seed, but a single stolen share reveals nothing.

**Passphrase (25th word):** Adds a memorized component that creates an entirely separate wallet. Even if seed is compromised, assets behind the passphrase remain safe. Trade-off: forgetting the passphrase means permanent loss.

### Social Engineering Defense

The most sophisticated wallet setup fails against a well-crafted social attack. Common vectors include fake customer support (Ledger will never DM you), airdrop claim sites requiring wallet connection, and "urgent security migration" scams.

**Defensive posture:** Treat all unsolicited contact as hostile. Verify through official channels only (bookmarked URLs, not search results). Use burner wallets for new dApps. Never share screen during signing. Establish personal verification protocols with multisig co-signers (out-of-band confirmation via pre-agreed channels).

**Operational discipline:** Separate browser profiles for DeFi (no personal browsing). Dedicated device for high-value signing. Review all transaction data on hardware wallet screen, not just the software prompt. If the hardware display doesn't match expectations, reject and investigate.

The wallet security stack is only as strong as its weakest behavioral link. Technology provides the ceiling; discipline determines where you actually operate.

*Last updated: 2026-02-15*
