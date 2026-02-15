## Methodology & Framework

**Core Concepts:**
- **OpSec is the behavioral layer of crypto security.** Hardware wallets and multisig protect keys; operational security protects the human using them. Most losses originate from compromised endpoints, phishing, unlimited token approvals, or signing malicious transactions — all preventable with disciplined operational practices.
- **Assume hostile environment:** Every browser extension is a potential keylogger. Every dApp pop-up is a potential drainer. Every Discord DM is a potential phish. Operating from this baseline makes security the default, not the exception.

**Analytical Approach:**
- Audit your current attack surface: What devices access your wallets? What browser extensions are installed? What token approvals are outstanding? What signing requests have you accepted without fully reading?
- Identify the weakest link in your flow. Usually it's the browser (extension malware, fake sites), email (phishing), or mobile (SIM swap enabling 2FA bypass).
- Implement controls in order of impact: approval hygiene and transaction simulation prevent the highest-frequency losses with the lowest effort.

**Pattern Recognition:**
- Wallet drainers follow a consistent UX: urgent airdrop claim → connect wallet → sign approval or `setApprovalForAll` → assets drained. The signing prompt is the last line of defense.
- Phishing domains mimic legitimate sites with typosquatting (uniswwap.com) or homoglyph attacks (using Cyrillic characters). Bookmarks beat search results every time.
- Token approval exploits are slow-burn: a user approves a contract once, forgets about it, and months later the contract (or its admin) drains the approved tokens. Unlimited approvals (type(uint256).max) are the norm but the worst practice.

**Decision Framework:**
- **Endpoint security:** Dedicated device or at minimum dedicated browser profile for crypto. No personal extensions in the DeFi profile. OS and browser always updated. Full-disk encryption enabled.
- **Approval hygiene:** Use revoke.cash or Rabby's built-in approval manager monthly. Set specific approval amounts instead of unlimited. Revoke approvals for contracts you no longer use.
- **Transaction simulation:** Tools like Tenderly, Rabby's built-in simulation, or Blowfish preview transaction outcomes before signing. If simulation shows unexpected token transfers, reject immediately.
- **Signing discipline:** Read every transaction on the hardware wallet screen. Understand what you're signing: `approve`, `transfer`, `setApprovalForAll`, and permit signatures each carry different risk levels. Blind signing = maximum risk.

---

### Endpoint Security

**Device hygiene:** Keep OS and browsers updated. Use a password manager (1Password, Bitwarden) with unique passwords per site. Enable 2FA everywhere — hardware keys (YubiKey) > authenticator apps > SMS (vulnerable to SIM swap). Never use SMS 2FA for crypto-adjacent accounts.

**Browser isolation:** Separate browser profiles: one for DeFi (minimal extensions — just wallet), one for general browsing. Consider Brave or a hardened Firefox config for DeFi. Disable auto-fill in the DeFi profile.

### Phishing Defense

**URL verification:** Bookmark every protocol you use. Access only via bookmarks, never via search results, Discord links, or Twitter links. Verify SSL certificates on sensitive sites. Use ENS/DNS resolution carefully — DNS hijacks have redirected legitimate domains to drainer contracts.

**Communication hygiene:** No legitimate project will DM you first. No legitimate support agent will ask for your seed phrase or ask you to "validate your wallet." Treat all unsolicited crypto communication as adversarial until proven otherwise.

### Safe Signing Practices

**Transaction simulation first:** Before signing any transaction, simulate it. Rabby wallet does this automatically. For MetaMask, use the Tenderly Chrome extension or Fire. If the simulation shows assets leaving your wallet that you don't expect, reject.

**Permit signatures are dangerous:** EIP-2612 permit signatures authorize token spending off-chain — they don't appear as on-chain approvals and can't be revoked via revoke.cash until used. Treat any `permit` signing request with extreme caution. Wallet drainers increasingly use permit-based flows because they bypass approval-checking tools.

**Batch revoke regularly:** Set a monthly calendar reminder. Go to revoke.cash, connect wallet, review all active approvals. Revoke anything you don't actively need. The gas cost of revocation is trivial compared to the risk of a stale unlimited approval being exploited.

*Last updated: 2026-02-15*
