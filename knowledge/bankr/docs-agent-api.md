---
tags: [bankr, trading, protocol]
agents: [otaku, eliza]
---
## Methodology & Framework

**Core Concepts:**
- Evaluate BANKR protocol and token mechanics through structured analytical frameworks
- Focus on repeatable patterns and decision criteria over historical specifics
- Apply risk-adjusted thinking to identify opportunities and threats

**Analytical Approach:**
- Extract timeless principles from market data and qualitative signals
- Cross-reference multiple data points before forming conclusions
- Distinguish between cyclical patterns and structural shifts

**Pattern Recognition:**
- Monitor leading indicators specific to BANKR protocol and token mechanics
- Track sentiment shifts and narrative changes as early signals
- Identify divergences between price action and fundamental metrics

**Decision Framework:**
- Define clear entry/exit criteria before acting
- Size positions relative to conviction and risk tolerance
- Reassess thesis when key assumptions are invalidated

---


# Bankr Docs — Agent API Overview (Ingested)

Source: https://docs.bankr.bot/agent-api/overview

---

# Agent API Overview

The Agent API lets you interact with Bankr's AI agent to execute prompts and transactions on behalf of your wallet.

## Capabilities

- Retrieve account info (wallets, socials, Bankr Club status)
- Submit prompts to the Bankr AI agent for your wallet
- Check status of submitted jobs
- Cancel pending or processing jobs
- **Sign** messages and transactions using custodial wallet (`POST /agent/sign`)
- **Submit** signed transactions on-chain (`POST /agent/submit`)

## Getting Started

1. Sign up at https://bankr.bot/api
2. Generate an API key and enable **Agent API** access
3. Fund your account with assets you want to trade
4. Start making requests with your API key

**Security:** Do not share your Bankr API key. If you leak it, revoke at bankr.bot/api immediately.

## Base URL

```
https://api.bankr.bot
```

## Authentication

All endpoints:

```
X-API-Key: your_api_key_here
```

## Basic Flow

### 1. Submit a Prompt

```
POST /agent/prompt
Body: { "prompt": "what is the price of ETH?" }
```

Response (202): `{ "success": true, "jobId": "abc123", "status": "pending", ... }`

### 2. Poll for Results

```
GET /agent/job/{jobId}
```

Response (200): `{ "success": true, "jobId": "abc123", "status": "completed", "response": "ETH is currently trading at $3,245.67", ... }`

## Job Statuses

| Status      | Description            |
|------------|------------------------|
| pending    | Queued for processing  |
| processing | Currently being processed |
| completed  | Finished successfully  |
| failed     | Error                  |
| cancelled  | Cancelled by user      |

## Example Applications

https://github.com/BankrBot/bankr-api-examples

## Next Steps (docs)

- Authentication, User Info, Prompt Endpoint, Job Management
- Sign Endpoint, Submit Endpoint, Transaction Types, CLI


## Related

- [Ai Crypto Overview](../ai-crypto/ai-crypto-overview.md)
- [Inference Markets](../ai-crypto/inference-markets.md)
- [Docs Features Prompts](docs-features-prompts.md)
- [Docs Overview](docs-overview.md)
- [Openclaw Skill Bankr](openclaw-skill-bankr.md)
