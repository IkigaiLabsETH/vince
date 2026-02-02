# Knowledge Quality Checklist

Use this checklist before adding any new knowledge file. Files that pass all checks typically score +30-50 on Knowledge Integration tests.

---

## Pre-Flight Checks

### 1. Uniqueness Test
- [ ] **Would a generic LLM already know this?**
  - If YES → Don't add, or make significantly more specific
  - If NO → Proceed to next check
  
- [ ] **Is this OUR framework, not general knowledge?**
  - Examples of unique value: "Wheel Strategy implementation for crypto", "H/E/F/S airdrop rating system", "Strike selection from perps methodology"
  - Examples of generic (low value): "What are options?", "How funding rates work", "DeFi basics"

### 2. Structure Test
- [ ] Has "Methodology and Framework" section at TOP
- [ ] Uses clear `##` headers for RAG chunking
- [ ] Methodology section works standalone when retrieved
- [ ] Front-loads the most valuable content

### 3. Framework Test
- [ ] Includes decision framework (when to do X vs Y)
- [ ] Has pattern recognition section (what to look for)
- [ ] Contains red flags / warning signs
- [ ] Provides step-by-step actionable process

### 4. Durability Test
- [ ] Uses relative thresholds, not absolute numbers
  - GOOD: "If funding > 0.05%, crowded"
  - BAD: "If BTC is at $85,000"
- [ ] Methodology won't become outdated
- [ ] Historical examples illustrate the framework, not define it

### 5. Actionability Test
- [ ] Someone can ACT on this content
- [ ] Clear if/then decision logic
- [ ] Explains HOW TO THINK, not just what happened

---

## Quick Scoring Guide

| Score | Characteristics |
|-------|-----------------|
| **+40-50** | Unique framework, clear decision trees, actionable thresholds, pattern recognition |
| **+20-30** | Good framework but somewhat generic, or missing decision trees |
| **+5-15** | Has structure but lacks unique insights, or too data-focused |
| **0-5** | Narrative essay, generic knowledge, or reference manual style |

---

## Red Flags (Automatic Rejection)

- [ ] Personal narrative without extractable framework
- [ ] Lists of definitions without analytical guidance
- [ ] Price-specific content that will become stale
- [ ] Content that duplicates what's already in knowledge base
- [ ] API documentation or technical setup guides (use setup-guides/ instead)

---

## Domain-Specific Requirements

### OPTIONS Files
- [ ] References strike selection methodology
- [ ] Includes APR/premium evaluation framework
- [ ] Has volatility interpretation guide

### PERPS Files
- [ ] Funding rate interpretation framework
- [ ] Entry/exit timing methodology
- [ ] Position sizing guidance

### MEMES/TRENCHES Files
- [ ] Coin evaluation framework
- [ ] LP/liquidity analysis approach
- [ ] Risk assessment methodology

### AIRDROPS Files
- [ ] Tier/threshold frameworks
- [ ] Volume/activity targets
- [ ] Capital allocation methodology

### LIFESTYLE Files
- [ ] Selection/evaluation criteria
- [ ] Decision framework (when to choose X vs Y)
- [ ] Specific recommendations with reasoning

### ART/NFT Files
- [ ] Collection evaluation framework
- [ ] Floor/liquidity analysis
- [ ] Timing/entry methodology

---

## Post-Addition Verification

After adding new knowledge, run the quality test:

```bash
bun test src/plugins/plugin-vince/src/__tests__/knowledgeQuality.e2e.test.ts
```

**Target Metrics:**
- Knowledge Integration delta for relevant domain: **+30 or higher**
- If KI delta < +20: File needs restructuring
- If KI delta < +10: Consider removing or rewriting entirely

---

## Video/Text Processing Workflow

When converting video transcripts or long text:

1. **Extract Frameworks** (not facts)
   - What are the 2-3 core thinking patterns?
   - What can be transferred to new situations?
   
2. **Structure for RAG**
   - Create clear section headers
   - Make methodology standalone
   - Front-load valuable content
   
3. **Add Decision Logic**
   - Convert narratives to if/then
   - Add thresholds and conditions
   - Include "when to use" guidance
   
4. **Test Uniqueness**
   - Ask: "Would ChatGPT give similar advice?"
   - If yes: Make more specific or skip

---

## File Naming Convention

```
[topic]-[type].md

Examples:
- funding-rate-interpretation.md
- strike-selection-methodology.md  
- airdrop-tier-framework.md
- hotel-selection-criteria.md
```

Avoid:
- Dates in filenames (becomes stale)
- Generic names like "notes.md"
- Personal identifiers
