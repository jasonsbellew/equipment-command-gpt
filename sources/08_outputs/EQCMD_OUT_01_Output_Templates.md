# EQCMD_OUT_01 Output Templates

<!--
File name: EQCMD_OUT_01_Output_Templates.md
Project: Equipment Command (EQCMD)
File role: Structured output templates for all analyses.
Status: Active
Internal version: v1.2
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Provide copy‑ready templates for each type of output.  These templates ensure that reports are consistent, scannable and actionable.  They should be filled in with specific data during analysis.
Change log:
* v1.2 – Added regional/cross-border caveat fields to Quick Decision and Deep Research summaries; added Quick Decision economic-volatility check; added example output fragments for cross-border caveats and unit labelling.
* v1.1 – Enhanced unit labelling across all templates; added guidance to explicitly specify units for cost and time metrics (e.g., dollars per engine hour, per billable hour, per mile, per PTO hour, hours, miles, PTO hours, days); updated Deep Research, Downtime Economics, Repair vs Replace and Final Decision templates with clearer unit descriptions.
* v1.0 – Initial output templates created during the rebuild.
-->

## General guidance

When generating any output, use clear headings and bullet points.  Avoid long paragraphs.  Include only the most relevant data points.  Explicitly label **units** for all cost and time values (e.g., dollars **per engine hour**, **per billable hour**, **per mile** or **per PTO hour**; utilisation in **hours**, **miles** or **PTO hours**; downtime in **days** or **hours**).  If a field is unknown, state “Unknown” or describe the assumption.  Always include a next step and a confidence rating.  For deep analyses, append an optional narrative section if needed to contextualise decisions.

When regional, cross-border or fast-moving market conditions could change the decision, include a concise caveat.  Flag relevant volatility in fuel, steel, parts pricing, interest rates, auction pressure, resale liquidity, currency conversion, taxes, import/export duties, emissions rules or local service availability.  Do not overstate precision when the data is stale or region-specific.

---

## Quick Decision Summary

```
### Quick Decision Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Price vs Market:** [Score/20]
- **Hours vs Life:** [Score/20]
- **Condition Risk:** [Score/20]
- **Parts Availability:** [Score/20]
- **Dealer/Service Support:** [Score/20]
- **Total Score:** [Total/100]
- **Criticality Tier:** [Tier 1/2/3]
- **Decision:** [Buy/Pursue/Conditional/Avoid/Sell/Hold/Lease/Replace]
- **Why:** [Key reasons in bullet points]
- **Biggest Missing Variable:** [e.g., Maintenance records, inspection]
- **Economic Volatility Check:** [None material / Fuel / Steel / Parts / Interest rates / Auction pressure / Liquidity / Other] – [brief effect on decision if relevant]
- **Regional/Cross-Border Caveat:** [None / Currency, taxes, duties, emissions, transport, service support or resale-market caveat]
- **Next Step:** [Inspect, negotiate, request records, discard, etc.]
- **Confidence:** [High/Medium/Low]

```

---

## Deep Research Summary

```
### Deep Research Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Criticality Tier:** [Tier 1/2/3]
- **Acquisition Score:** [Score/100]
- **Market Comps:** [Summary of comparable sales]
 - **Ownership Cost per Hour:** [$X per engine hour / billable hour / mile / PTO hour] (Specify the appropriate unit; Assumptions: [list])
 - **Payback Period:** [Years] (Classification: [Elite/Strong/Marginal/Weak/Capital trap])
 - **Downtime Cost Estimate:** [$X total] (Classification: [Recoverable/Margin damage/Revenue loss/Strategic damage])
 - **Failure Curve Stage:** [Infant/Stability/Wear‑out] (Remaining life: [hours/miles/PTO hours])
 - **Exit Liquidity:** [Channel] ([Discount %], [Days to cash])
 - **Financing Summary:** [Interest rate (\%), monthly payment ($/month), term (months/years)] (if applicable)
- **Capital Allocation Rank:** [Rank/Number of opportunities] (Reason: [summary])
- **Pros:** [Bullet points]
- **Cons:** [Bullet points]
- **Final Recommendation:** [Buy/Lease/Rent/Subcontract/Repair/Replace/Sell/Hold]
- **Rationale:** [Brief summary of key factors]
- **Economic Volatility and Regional Caveats:** [Fuel/steel/parts/interest/auction/liquidity risk; currency/tax/duty/emissions/transport/service/resale caveats if applicable]
- **Next Step:** [Actions required, e.g., order inspection, secure financing]
- **Confidence:** [High/Medium/Low]

```

---

## Example Output Fragments

```
### Cross-Border Caveat Example

- **Regional/Cross-Border Caveat:** This U.S. listing is being evaluated for Canadian use.  Confirm currency conversion, GST/HST, import duties, transport, emissions compliance and local dealer support before treating the price advantage as real.

### Unit Labelling Example

- **Ownership Cost per Hour:** $42 per engine hour (assumes 650 engine hours/year, $4.20/gallon fuel, $7,500/year maintenance and no major repairs).
- **Downtime Cost Estimate:** $8,400 total over 3 days (lost production: $2,000/day; idle crew: $800/day).
```

---

## Acquisition Filter Summary

```
### Acquisition Filter Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Category Scores:**
  - Price vs Market: [Score/20]
  - Hours vs Life: [Score/20]
  - Condition Risk: [Score/20]
  - Parts Availability: [Score/20]
  - Dealer/Service Support: [Score/20]
- **Total Score:** [Total/100]
- **Decision Threshold:** [<70 Reject / 70–84 Conditional / ≥85 Pursue]
- **Hard‑Fail Triggers Present:** [Yes/No]
- **Outcome:** [Reject/Conditional/Pursue]
- **Notes:** [Brief notes on any hard‑fail conditions or missing data]

```

---

## Asset Criticality Summary

```
### Asset Criticality Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Revenue Dependency:** [Score/25] – [Interpretation]
- **Downtime Impact:** [Score/25] – [Interpretation]
- **Utilisation/Frequency:** [Score/20] – [Interpretation]
- **Bottleneck/Productivity Impact:** [Score/15] – [Interpretation]
- **Replacement Difficulty:** [Score/15] – [Interpretation]
- **Total Score:** [Total/100]
- **Tier Classification:** [Tier 1/2/3]
- **Implications:** [What this tier means for repair tolerance, replacement priority]

```

---

## Downtime Economics Summary

```
### Downtime Economics Summary

- **Machine/Event:** [Description of the downtime incident]
- **Classification:** [Recoverable/Margin damage/Revenue loss/Strategic damage]
 - **Lost Production Value:** [$X] ([Unit: dollars per day/shift] – [Assumptions])
 - **Crew Idle Cost:** [$X] ([Unit: dollars per idle hour] – [Crew size, labour rate, idle hours])
 - **Schedule Ripple Cost:** [$X] ([Unit: dollars] – [Assumptions])
 - **Replacement/Recovery Cost:** [$X] ([Unit: dollars] – [Rental rates, premiums])
 - **Total Downtime Cost:** [$X] ([Sum of components; units in dollars])
- **High‑Impact Factors:** [Bullet points]
- **Notes:** [Any caveats or alternative scenarios]

```

---

## Failure Curve Summary

```
### Failure Curve Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Current Stage:** [Infant mortality / Stable life / Wear‑out]
- **Remaining Useful Life:** [Hours/miles]
- **Stacked Failure Risk:** [Low/Medium/High]
- **Recommended Action:** [Monitor / Plan replacement / Replace now]
- **Rationale:** [Key factors driving stage assessment]

```

---

## Time‑to‑Cash / Payback Summary

```
### Time‑to‑Cash / Payback Summary

- **Machine:** [Year] [Make] [Model] ([Type])
 - **Payback Period:** [Years] ([Classification: Elite/Strong/Marginal/Weak/Capital trap])
 - **Annual Cash Flow:** [$X per year] ([Revenue – operating costs])
- **Assumptions:** [Utilisation, margins, financing terms, etc.]
- **Sensitivity:** [How payback changes with utilisation or cost variations]
- **Comments:** [Any caveats or context]

```

---

## Exit Liquidity Summary

```
### Exit Liquidity Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Preferred Sale Channel:** [Private sale / Dealer trade‑in / Auction / Consignment / Lease return]
- **Expected Liquidity Discount:** [X %]
- **Expected Days to Cash:** [Days]
- **Market Conditions:** [Brief description]
- **Notes:** [Factors such as seasonality, demand, buyer pool]

```

---

## Repair vs Replace Summary

```
### Repair vs Replace Summary

- **Machine:** [Year] [Make] [Model] ([Type])
- **Failure Description:** [Component and failure symptoms]
 - **Repair Estimate:** [$X] ([Invoice details; unit: dollars])
 - **Repair Path Cost:** [$X total] ([Repair invoice + transport/teardown + hidden exposure + downtime cost + rental/subcontract cost + post‑repair risk]; units in dollars; include remaining useful life in hours/miles/PTO hours)
 - **Sell Path Value:** [$X] ([As‑is sale value or repaired‑then‑sell value] – include [Days to cash] in days)
 - **Replacement Path Cost:** [$X total] ([Price of equivalent machine + financing + downtime during acquisition]; units in dollars)
- **Decision:** [Repair / Replace / Sell]
- **Rationale:** [Key factors comparing the three paths]
- **Next Step:** [Obtain inspection, negotiate price, list for sale, etc.]
- **Confidence:** [High/Medium/Low]

```

---

## Capital Allocation Summary

```
### Capital Allocation Summary

- **Budget:** [$X]
- **Opportunities:**
  - [Opportunity 1 description] – Score: [X/100] – Priority: [Rank]
  - [Opportunity 2 description] – Score: [X/100] – Priority: [Rank]
  - …
- **Key Criteria Scores:** [Returns vs alternatives, Risk, Bottleneck removal, Capital velocity, Strategic alignment]
- **Recommended Allocation:** [Allocate $X to Opportunity 1, $Y to Opportunity 2, hold remainder]
- **What It Solves:** [Explain how each investment addresses bottlenecks or growth goals]
- **Opportunity Cost:** [Brief notes on what is foregone]
- **Next Step:** [E.g., begin financing, order inspection, delay until cash is available]

```

---

## Final Decision Statement

```
### Final Decision

- **Machine:** [Year] [Make] [Model] ([Type])
- **Action:** [Buy/Pursue/Conditional/Avoid/Sell/Hold/Lease/Replace]
- **Rationale:** [One‑sentence summary of the most important factors]
 - **Key Metrics:** [Acquisition score, Cost per hour (e.g., $/engine hour, $/billable hour, $/mile or $/PTO hour), Payback period (years), Downtime cost (dollars), Failure stage (remaining life units)]
- **Confidence:** [High/Medium/Low]
- **Next Step:** [Clear next action for the user]

```

---

## Fleet Performance Dashboard (Optional)

```
### Fleet Performance Dashboard

| Asset ID | Type | Tier | Hours/Miles | Utilisation vs Target | Annual Revenue | Annual Repair Cost | Downtime Hours | Cost per Hour | Failure Stage | Action |
|---|---|---|---|---|---|---|---|---|---|---|
| … | … | … | … | … | … | … | … | … | … | … |

**Summary:**
- **Total assets:** [Number]
- **Average utilisation:** [X %]
- **Total annual revenue:** [$X]
- **Total repair cost:** [$X]
- **Top recommendations:** [List of sell, replace, acquire, lease actions]

```

These templates standardise communication, help users scan results quickly and facilitate comparison across machines.  Adapt fields as needed for specific industries or unique situations.
