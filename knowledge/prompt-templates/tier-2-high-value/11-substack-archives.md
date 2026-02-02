# Prompt #11: Substack Archives (Past Ikigai BTC Analysis)

**Priority**: Tier 2 - High Value  
**Specialist**: `cycleContextSpecialist`, `eliza.ts` (knowledge base retrieval)  
**Data Source**: ikigaistudio.substack.com (public archive)

## Core Objectives
- Cross-reference past Ikigai Bitcoin analyses from Substack archive
- Retrieve and summarize historical BTC takes: market regimes, cycles, sentiment, price theses, accumulations/dips, bull/bear characterizations, historical comparisons
- Compare current BTC context to past analyses for alignment/divergence
- Provide readable, evidence-based historical context for ELIZA's knowledge-aware reasoning

## Tool Usage Strategy

### Discovery Phase
- `web_search` with query:
  - `site:ikigaistudio.substack.com (bitcoin OR btc OR "market regime" OR cycle OR bear OR bull OR accumulation OR dip OR sentiment OR "price target")` with `num_results=30`
  - If results sparse (<10 relevant), broaden: add "crypto" or specific years like "2022"
  - Narrow if too many: add specific terms from user query

### Selection & Deep Extraction
- From search results, filter to 8-12 most relevant posts (prioritize analytical depth on BTC regimes, sentiment, cycle comparisons)
- For each selected URL, use `browse_page`:
  - Instructions: "Extract the exact publication date (format as YYYY-MM or closest). Summarize the core theses on Bitcoin market regime, sentiment, price outlook, cycle stage, or historical parallels. Focus on 2-4 bullet points of the main arguments. Quote key phrases if they capture the thesis precisely. Ignore non-BTC sections."

### Compilation
- `code_execution` if needed to clean/format text or dates
- Aggregate extracted data chronologically (newest to oldest)

## Output Format

```markdown
## Past BTC Takes (Newest to Oldest)

- **Date:** YYYY-MM  
  **Title:** Post Title  
  **URL:** https://ikigaistudio.substack.com/p/...  
  **Key Theses:**  
  - Bullet point summary of main BTC arguments (2-4 bullets).  
  - Use direct quotes for precision where helpful.  
  - Another bullet if needed.

- **Date:** YYYY-MM  
  ... (repeat for each post)

## Cross-References & Observations

- Overall historical coverage: Brief note (e.g., "Heavy emphasis on 2024-2025 cycle positioning; fewer deep dives pre-2023").

- Specific comparisons (only if user query provides current BTC context/data):  
  - Current situation aligns ~60% with [Date: YYYY-MM] thesis on [topic] because [grounded reason from post]. Key differences: [clear mismatches].  
  - Another comparison if relevant.  
  - If no meaningful parallels: "No strong historical matches found in the archive for the described conditions."
```

## Integration Notes
- Feeds into ELIZA's knowledge base retrieval system
- Used by `cycleContextSpecialist` for historical cycle comparisons
- ELIZA can reference past Ikigai analyses when synthesizing recommendations
- Provides context for regime detection (compare current state to past predictions/analyses)

## Performance Notes
- Only include theses clearly stated in posts (no speculation or forced connections)
- Evidence-based comparisons only (ground claims in actual post content)
- If user message includes current BTC context, use it for grounded comparisons
- Never force matches—state plainly if nothing aligns

---

## Methodology & Framework

**Key Concepts:**
- **Cross-Referencing Historical Data**: Utilize archived analyses to identify patterns and sentiments in Bitcoin's market behavior.
- **Evidence-Based Summarization**: Extract and summarize key theses from past writings to inform current understanding.
- **Comparative Analysis**: Compare current market conditions with historical data to assess alignment or divergence in market regimes and sentiments.
- **Contextual Integration**: Embed findings within a larger knowledge retrieval system to enhance decision-making capabilities.

**Analytical Approach:**
- Approach Bitcoin analysis by systematically retrieving past insights from reliable sources. Focus on identifying core theses regarding market regimes, sentiment, and price outlooks. This involves careful selection of relevant data, ensuring that the summaries capture the essence of the arguments presented. Emphasize a narrative that evolves with historical context while remaining grounded in evidence.

**Pattern Recognition:**
- Look for recurring themes in Bitcoin market cycles, such as accumulation phases, sentiment shifts, and the characteristics of bull and bear markets. Identify key phrases or metrics that have historically signified transitions between these states. Pay attention to the frequency and context of these indicators to enhance predictive capabilities for future market behavior.

**Strategic Framework:**
- Apply this methodology by framing current Bitcoin evaluations within the historical context derived from past analyses. When assessing new data or user queries, utilize the compiled historical insights to draw parallels or highlight discrepancies. This framework allows for a structured approach to understanding market dynamics and making informed predictions. Ensure that all comparisons are evidence-based, and be transparent about any uncertainties or lack of alignment with historical precedents.

**Important Notes:**
- Prioritize methodological thinking over reliance on specific numerical data or dates, as these may become outdated. Focus on how to utilize historical insights to inform current analyses and decision-making processes. Keep the approach actionable and relevant to ongoing market conditions while remaining concise and clear in communication.

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


*Template Version: 1.0*  
*Last Tested: 2026-01-XX*  
*Source: ikigaistudio.substack.com*
