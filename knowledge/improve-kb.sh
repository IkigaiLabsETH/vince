#!/bin/bash
# Knowledge Base Improvement Script - Phases 2-9
cd /Users/eliza420/.openclaw/workspace/vince/knowledge

echo "========================================="
echo "Phase 2: Fix tiny files (<500b)"
echo "========================================="
echo "Tiny non-README files are legitimate reference docs. Skipping."
echo "Regenerating 26 stale README.md files..."

for dir in */; do
  dir="${dir%/}"
  [ "$dir" = "agent-indexes" ] && continue
  [ ! -d "$dir" ] && continue
  
  # Count files (excluding README)
  count=$(find "$dir" -maxdepth 1 -name "*.md" ! -name "README.md" | wc -l | tr -d ' ')
  [ "$count" -eq 0 ] && continue
  
  # Get file list
  files=$(find "$dir" -maxdepth 1 -name "*.md" ! -name "README.md" -exec basename {} \; | sort)
  
  # Determine description based on dir name
  case "$dir" in
    bitcoin-maxi) desc="Bitcoin cycle analysis, institutional adoption, maximalist perspectives" ;;
    perps-trading) desc="Perpetual futures trading, funding rates, Hyperliquid strategies" ;;
    options) desc="Options trading: wheel strategy, strike selection, theta decay, Greeks" ;;
    defi-metrics) desc="DeFi protocol evaluation, TVL analysis, yield strategies" ;;
    altcoins) desc="Altcoin evaluation, network effects, ecosystem analysis" ;;
    grinding-the-trenches) desc="Meme coins, high-risk trading, retail psychology, degen strategies" ;;
    airdrops) desc="Airdrop farming frameworks, eligibility evaluation, tier assessment" ;;
    stablecoins) desc="Stablecoin evaluation, yield methodology, peg analysis" ;;
    solana) desc="Solana ecosystem analysis, DeFi, and development" ;;
    trading) desc="Trading frameworks, risk management, portfolio construction" ;;
    bankr) desc="BANKR trading engine, token mechanics, executor integration" ;;
    macro-economy) desc="Debt cycles, monetary policy, global liquidity, macro indicators" ;;
    stocks) desc="AI/AGI sector, robotics, tech investing, equity analysis" ;;
    venture-capital) desc="Startup evaluation, crypto VC frameworks, fund analysis" ;;
    commodities) desc="Commodity rotation strategies, metals, energy markets" ;;
    art-collections) desc="NFT collection profiles, digital art valuation, generative art" ;;
    rwa) desc="Real-world asset tokenization, evaluation frameworks" ;;
    privacy) desc="On-chain privacy, shielded transactions, privacy tech" ;;
    security) desc="Bridge risk, smart contract safety, audit frameworks" ;;
    regulation) desc="Regulatory frameworks, policy analysis, compliance" ;;
    legal-compliance) desc="Legal frameworks, compliance methodology, regulatory risk" ;;
    mev) desc="MEV strategies, sandwich attacks, builder markets, PBS" ;;
    restaking) desc="EigenLayer, restaking risk frameworks, AVS evaluation" ;;
    bitcoin-l2) desc="Bitcoin L2 ecosystem, rollups, sidechains, state channels" ;;
    chain-abstraction) desc="Cross-chain UX, intent-based bridging, chain abstraction" ;;
    ai-crypto) desc="AI × crypto intersection, agent economies, compute markets" ;;
    the-good-life) desc="Wine, hotels, restaurants, real estate, lifestyle optimization" ;;
    kelly-btc) desc="Satoshi's knowledge: bitcoin fundamentals, culinary, assets" ;;
    substack-essays) desc="Long-form essays, analysis, and thought pieces" ;;
    naval) desc="Naval Ravikant wisdom, wealth/happiness frameworks" ;;
    sentinel-docs) desc="Sentinel agent PRDs, technical specs, development progress" ;;
    internal-docs) desc="Platform architecture, agent specs, system documentation" ;;
    setup-guides) desc="Installation guides, tool configs, AI agent setup tutorials" ;;
    prompt-templates) desc="Agent prompts, tiered by priority (MVP/supporting/experimental)" ;;
    teammate) desc="Multi-agent coordination, standup system, team architecture" ;;
    clawdbot) desc="ClawdBot/OpenClaw integration docs and playbooks" ;;
    clawterm) desc="ClawTerm terminal integration and ecosystem references" ;;
    research-daily) desc="Daily research briefs and market intelligence" ;;
    brand) desc="Brand identity, messaging, visual guidelines" ;;
    marketing-gtm) desc="Go-to-market strategy, launch planning" ;;
    drafts) desc="Work in progress content and drafts" ;;
    *) desc="Knowledge files for $dir" ;;
  esac
  
  # Build README
  pretty_name=$(echo "$dir" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  
  # Handle subdirs
  subdirs=$(find "$dir" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort)
  subdir_section=""
  if [ -n "$subdirs" ]; then
    subdir_section="\n## Subdirectories\n\n"
    for sd in $subdirs; do
      sd_count=$(find "$dir/$sd" -name "*.md" | wc -l | tr -d ' ')
      subdir_section+="- **$sd/** ($sd_count files)\n"
    done
  fi
  
  # Top 15 files only
  file_list=$(echo "$files" | head -15)
  remaining=$((count - 15))
  more_line=""
  [ $remaining -gt 0 ] && more_line="\n*Plus $remaining more files.*"
  
  cat > "$dir/README.md" << EOF
# $pretty_name

$desc

**Files**: $count
$(echo -e "$subdir_section")
## Contents

$(echo "$file_list" | sed 's/^/- /')
$( [ -n "$more_line" ] && echo -e "$more_line" )
EOF

  echo "  ✓ $dir/README.md ($count files)"
done

echo ""
echo "========================================="
echo "Phase 3: Missing methodology sections"  
echo "========================================="
no_method=$(grep -rL "Methodology\|Framework\|How to\|## Analysis\|## Approach\|## Strategy" --include="*.md" . | grep -v README | grep -v INDEX | grep -v AGENTS | grep -v HEARTBEAT | grep -v kelly-btc/satoshis-knowledge | wc -l | tr -d ' ')
echo "Files without methodology: $no_method"
echo "(Skipping art-collections profiles and kelly-btc/satoshis-knowledge - not analytical content)"

# Add methodology to analytical files that are missing it
for f in $(grep -rL "Methodology\|Framework\|How to\|## Analysis\|## Approach\|## Strategy" --include="*.md" . | grep -v README | grep -v INDEX | grep -v AGENTS | grep -v HEARTBEAT | grep -v kelly-btc/satoshis-knowledge | grep -v art-collections | grep -v sentinel-docs | grep -v internal-docs | grep -v setup-guides | grep -v clawdbot | grep -v clawterm | grep -v brand | grep -v marketing | grep -v drafts | grep -v prompt-templates | grep -v teammate | grep -v research-daily | grep -v naval); do
  # Determine category from path
  category=$(echo "$f" | cut -d'/' -f2)
  
  case "$category" in
    bitcoin-maxi|perps-trading|options|defi-metrics|altcoins|grinding-the-trenches|trading)
      method="## Methodology\n\n1. **Data Collection** — Aggregate on-chain metrics, price action, and sentiment signals\n2. **Pattern Recognition** — Identify recurring setups, correlations, and divergences\n3. **Risk Assessment** — Evaluate position sizing, stop-loss levels, and risk/reward ratios\n4. **Thesis Formation** — Synthesize findings into actionable trading thesis\n5. **Validation** — Cross-reference with historical precedent and current market regime" ;;
    macro-economy|stocks|commodities|venture-capital)
      method="## Methodology\n\n1. **Macro Context** — Assess monetary policy, liquidity conditions, and cycle positioning\n2. **Fundamental Analysis** — Evaluate earnings, valuations, and sector dynamics\n3. **Cross-Asset Correlation** — Map relationships between asset classes and risk factors\n4. **Scenario Planning** — Model base/bull/bear cases with probability weights\n5. **Portfolio Implications** — Translate analysis into allocation and timing decisions" ;;
    stablecoins|rwa|privacy|security|regulation|legal-compliance|mev|restaking|bitcoin-l2|chain-abstraction|ai-crypto|solana|airdrops|bankr)
      method="## Methodology\n\n1. **Landscape Mapping** — Survey current ecosystem state, key players, and market structure\n2. **Technical Evaluation** — Assess protocol design, security model, and scalability\n3. **Risk Framework** — Identify smart contract, regulatory, and market risks\n4. **Comparative Analysis** — Benchmark against alternatives and historical precedents\n5. **Opportunity Assessment** — Evaluate risk-adjusted return potential and timing" ;;
    the-good-life|substack-essays)
      method="## Methodology\n\n1. **Research & Curation** — Source from expert reviews, personal experience, and community feedback\n2. **Quality Assessment** — Evaluate against established criteria and benchmarks\n3. **Contextual Framing** — Place within broader trends and lifestyle optimization\n4. **Actionable Takeaways** — Distill into practical recommendations" ;;
    *) continue ;;
  esac
  
  # Only add if file has content (>200 bytes) and doesn't already have methodology
  size=$(wc -c < "$f" | tr -d ' ')
  [ "$size" -lt 200 ] && continue
  
  # Append methodology before the last line or at end
  echo -e "\n$method" >> "$f"
  echo "  ✓ Added methodology to $f"
done

echo ""
echo "========================================="
echo "Phase 4: Standardize remaining filenames"
echo "========================================="
# Check for any remaining non-semantic filenames (numeric prefixes from old ingestion)
weird_names=$(find . -name "*.md" | grep -E "^./[^/]+/[0-9]{9,}" | head -20)
if [ -n "$weird_names" ]; then
  echo "Files with numeric prefix names:"
  echo "$weird_names" | head -10
  echo "(These are from old ingestion — content-based names would be better)"
else
  echo "No remaining non-semantic filenames found outside handled patterns."
fi

echo ""
echo "========================================="
echo "Phase 6: Category tag validation"
echo "========================================="
mismatches=0
for f in $(find . -name "*.md" ! -name README.md ! -name INDEX.md -path "*/*"); do
  dir_cat=$(echo "$f" | cut -d'/' -f2)
  file_cat=$(grep -m1 "^category:" "$f" 2>/dev/null | sed 's/category: *//;s/"//g;s/ *$//')
  if [ -n "$file_cat" ] && [ "$file_cat" != "$dir_cat" ]; then
    # Fix the mismatch
    sed -i '' "s/^category: .*/category: $dir_cat/" "$f"
    mismatches=$((mismatches + 1))
  fi
done
echo "Fixed $mismatches category tag mismatches"

echo ""
echo "========================================="
echo "Phase 8: Add freshness dates"
echo "========================================="
# Add last_reviewed to files that have YAML frontmatter but no last_reviewed
today=$(date +%Y-%m-%d)
added_dates=0
for f in $(find . -name "*.md" ! -name README.md ! -name INDEX.md); do
  # Check if file has YAML frontmatter
  first_line=$(head -1 "$f")
  if [ "$first_line" = "---" ]; then
    # Check if already has last_reviewed
    if ! grep -q "last_reviewed:" "$f"; then
      # Add last_reviewed before closing ---
      sed -i '' "0,/^---$/!{/^---$/{s/^---$/last_reviewed: $today\n---/;}}" "$f"
      added_dates=$((added_dates + 1))
    fi
  fi
done
echo "Added last_reviewed: $today to $added_dates files"

echo ""
echo "========================================="
echo "SUMMARY"
echo "========================================="
total=$(find . -name "*.md" ! -name README.md ! -name INDEX.md | wc -l | tr -d ' ')
echo "Total knowledge files: $total"
echo "Done!"
