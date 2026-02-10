# Bankr — Ingested Skill & Docs

Knowledge ingested from the **Bankr OpenClaw skill** and **Bankr documentation** for use by Otaku (plugin-bankr). VINCE does not use Bankr.

## Sources

- **OpenClaw Bankr skill:** https://github.com/BankrBot/openclaw-skills (folder `bankr/`, main `SKILL.md`)
- **Bankr docs:** https://docs.bankr.bot/

## Contents

| File | Source | Purpose |
|------|--------|---------|
| [openclaw-skill-bankr.md](openclaw-skill-bankr.md) | openclaw-skills/bankr/SKILL.md | Full Bankr skill: capabilities, prompts, token deployment, sign/submit API |
| [docs-overview.md](docs-overview.md) | docs.bankr.bot | Platform overview, wallet, token launchpad, chains |
| [docs-token-launching.md](docs-token-launching.md) | docs.bankr.bot/token-launching/overview | Token launch via natural language, fee structure, Base/Solana |
| [docs-agent-api.md](docs-agent-api.md) | docs.bankr.bot/agent-api/overview | Agent API: prompt, job poll, sign, submit |
| [docs-features-prompts.md](docs-features-prompts.md) | docs.bankr.bot/features | Feature prompt phrasings: portfolio, transfers, NFTs, swaps, limit/stop/DCA/TWAP, leveraged, features-table reference; sent via BANKR_AGENT_PROMPT |
| [docs-features-table.md](docs-features-table.md) | docs.bankr.bot/features/features-table | Capability matrix: trading, automations, token launch, leveraged, Polymarket, portfolio, transfers, NFTs, market data, staking; chains and example prompts |
| [docs-llm-gateway.md](docs-llm-gateway.md) | docs.bankr.bot/llm-gateway/overview | LLM Gateway: pay for Claude/Gemini/GPT (and others) with launch fees or ETH/USDC/BANKR; base URL, models, routing, quick start, CLI |
| [docs-sdk.md](docs-sdk.md) | docs.bankr.bot/sdk (installation, client-setup, prompt-and-poll, examples) | @bankr/sdk: own wallet, tx data returned, x402 payment; when to use vs Agent API, install, client config, promptAndWait, handling transactions, examples |
| [docs-claude-plugins.md](docs-claude-plugins.md) | docs.bankr.bot/claude-plugins/bankr-x402-sdk-dev | Claude plugin bankr-x402-sdk-dev: install, capabilities, SDK features by chain, x402, example, limitations (Solana/Polymarket via API); relation to plugin-bankr-sdk |

## How Otaku Uses This

- **BANKR_AGENT_PROMPT** — Send natural-language prompts (e.g. "What is my ETH balance?", "Launch a token called X on Base", "Buy $50 of ETH"). Token launch: use prompts like "deploy a token called MyAgent with symbol AGENT on base" or "launch a token called CoolBot on solana" (see docs-token-launching.md).
- **BANKR_ORDER_QUOTE / LIST / STATUS / CANCEL** — External Orders for limit/stop/DCA/TWAP.
- **Feature prompts** — Portfolio, balances, transfers, NFTs (view, buy, sell, list, mint, transfer), swaps, limit/stop/DCA/TWAP creation, leveraged (Avantis): use the exact phrasings in docs-features-prompts.md and send the user's message as the prompt to BANKR_AGENT_PROMPT. For a full capability/chain matrix, see the [Features Table](https://docs.bankr.bot/features/features-table) or docs-features-table.md.
- Knowledge here informs when to use Bankr, which chains, and fee/deployment details.
- **LLM Gateway** (docs-llm-gateway.md) is for paying for LLM usage with launch fees or wallet — relevant for builders, Cursor/OpenClaw setup, or when asked how to fund AI usage with Bankr.
- **SDK** (docs-sdk.md) is the advanced path: own wallet + x402; use when the user or builder wants to run Bankr with their key and submit txs themselves. plugin-bankr uses the Agent API; plugin-bankr-sdk uses the SDK.
- **Claude plugins** (docs-claude-plugins.md): bankr-x402-sdk-dev for Claude desktop/Claude Code; same SDK/x402 model as plugin-bankr-sdk.

## Links

- API key: https://bankr.bot/api
- Docs: https://docs.bankr.bot/
- OpenClaw skills: https://github.com/BankrBot/openclaw-skills
- Agent API (Notion): https://www.notion.so/Agent-API-2e18e0f9661f80cb83ccfc046f8872e3
