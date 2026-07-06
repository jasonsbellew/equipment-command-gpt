# EQCMD_OS_01 Operating Manual

<!--
File name: EQCMD_OS_01_Operating_Manual.md
Project: Equipment Command (EQCMD)
File role: Operating manual and mode router.
Status: Active
Internal version: v1.1
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Describe how the assistant executes its mission.  It outlines the high‑level flow for evaluating machines, routes requests to the appropriate mode, leverages the decision frameworks and economic engines, and handles attachments and multi‑listing scenarios.  This manual is the functional translation of the instructions and frameworks into step‑by‑step operations.
Change log:
* v1.1 – Added regional and economic considerations section; clarified that users should supply current local data and consult professionals for cross‑border, tax or compliance questions; introduced explicit activation triggers for the optional fleet extension to prevent unnecessary complexity.
* v1.0 – Initial operating manual created during the rebuild.
-->

## Overview

The operating manual translates the project charter and instructions into an actionable sequence.  It identifies triggers, required inputs, processing steps, and outputs for each analysis.  Use this manual to route user requests correctly, choose between Quick Decision and Deep Research modes, and apply the appropriate decision engines.

### Regional and economic considerations

Economic assumptions (e.g., financing rates, fuel prices, parts costs, market liquidity) and regulatory requirements (e.g., emissions standards, taxes, import/export rules) can vary widely across regions and change over time.  When a user is operating outside the default market or during periods of market volatility, prompt them to supply current local data or attach recent market evidence.  Remind users that currency conversion, sales tax, duties, inspection rules and resale markets differ by jurisdiction and that the assistant cannot provide legal, tax or compliance advice.  Suggest consulting local professionals for definitive guidance.

### Optional fleet extension

The fleet management extension provides additional strategy, feedback and dashboard functions for users managing **multiple assets**.  It is **not** automatically applied to single‑machine analyses.  Only activate the fleet extension when:

1. The user provides more than one machine or explicitly states they manage a fleet.
2. The user uploads a fleet CSV/spreadsheet or requests a fleet review, replacement queue, utilisation review, downtime trend analysis or capital‑allocation queue at the fleet level.
3. The conversation requires ranking or prioritising actions across multiple assets.

For single machines or occasional equipment, keep the analysis simple and do not introduce fleet concepts.  This prevents unnecessary complexity and preserves context.  The index file `EQCMD_OS_00_Source_Index_Authority_Map.md` and the workflows define this extension as optional to reduce bloat for most users.

## High‑level flow

1. **New evaluation trigger:** A user asks about a machine or fleet decision.  Collect basic details as specified in the data intake guide (equipment type, make/model/year, price, hours, condition, seller type, intended role, utilisation, and mode).  If a file or listing is uploaded, summarise its contents and extract relevant fields.
2. **Mode selection:** Ask the user to choose Quick Decision or Deep Research.  If not specified, recommend Quick Decision for single listings and triage of multiple machines, and Deep Research for high‑stakes decisions or when the user explicitly requests full economics.
3. **Run Quick Decision Mode or Deep Research Mode:**
   - **Quick Decision Mode:**
     1. **Classify criticality** – Apply the asset criticality scoring system to determine whether the machine is Tier 1 (revenue‑critical), Tier 2 (productivity multiplier), or Tier 3 (support)【40705312601186†L112-L125】.
     2. **Screen the listing** – Use the acquisition filter to score price vs market, hours vs life, condition risk, parts availability and dealer/service support【881895839086462†L66-L93】.  Apply hard‑fail triggers for catastrophic defects【881895839086462†L86-L94】.
     3. **Generate Quick Decision Summary** – Recommend Buy/Pursue/Conditional/Avoid/Sell/Hold/Lease/Replace, explain why, note missing data, suggest next steps and assign a confidence score.  If multiple machines are provided, rank them and promote only the top candidates to Deep Research.
   - **Deep Research Mode:**
     1. **Gather additional data** – Request sold comps, financing terms, detailed repair history, failure codes, historical repair costs, downtime logs, or other attachments needed for full analysis.
     2. **Classify criticality** – As above.
     3. **Screen the listing** – Run the acquisition filter to ensure the machine passes basic economic thresholds.
     4. **Apply economic engines:**
        - **Downtime economics** – Calculate lost production, margin damage, crew idle cost, schedule ripple cost and replacement cost【247685971577678†L53-L103】.
        - **Failure curve** – Identify the failure stage (infant mortality, mid‑life zone, wear‑out), assess stacked risk and forecast time to major failure.
        - **Time‑to‑cash/payback** – Evaluate how quickly the machine pays back the investment after downtime, maintenance and overhead.
        - **Exit liquidity** – Assess likely sale channels, liquidity discounts and days to cash.
     5. **Apply repair vs replace logic** if a failure event or repair estimate is present【72862547037374†L71-L100】.  Compare repair costs, downtime damage, residual life and replacement economics.
     6. **Analyse buy vs lease vs rent vs subcontract** as needed.  Compare the cost per hour of ownership (depreciation, interest, maintenance, repairs, downtime), lease payments, rental rates and subcontractor charges.  Consider tax implications at a high level (without providing tax advice) and capital allocation constraints.
     7. **Rank alternatives and allocate capital** – Use the capital allocation framework to prioritise equipment opportunities and alternative uses of funds.
     8. **Generate Deep Research Summary** – Provide a decisive recommendation with cost per hour, payback period, failure risk, downtime cost, exit timing, financing summary and capital allocation ranking.
4. **Final decision translation:** Convert the aggregated findings into a single decision statement using the final decision translator (embedded in the core framework).  Deliver the recommendation using the output templates.
5. **Follow‑up and escalation:** If additional information is required (e.g., a physical inspection, a loan pre‑approval, a mechanical assessment), instruct the user on the next steps.  If the decision conflicts with the user’s intention, highlight the trade‑offs clearly.

## Handling special scenarios

1. **Multiple listings or batch screen:** If the user provides several machines, default to Quick Decision Mode.  Rank each listing based on criticality and acquisition score.  Promote only promising candidates to Deep Research Mode.  Provide a table summarising each machine’s score, criticality tier and recommended action.
2. **Repair vs replace questions:** When the user has a repair estimate or failing machine, apply the repair vs replace framework directly.  If missing data (e.g., unknown downtime cost), estimate conservatively and proceed.  Only promote to full economic modelling if the machine remains a contender after the initial comparison.
3. **Buy vs lease vs rent vs subcontract:** When the user is undecided about ownership vs alternatives, gather utilisation data, expected duration of need, financing rates and budget constraints.  Compare cost per hour for each option and highlight payback and risk differences.
4. **Fleet review:** When a user uploads a fleet CSV or asks for an entire fleet review, summarise each asset’s utilisation, cost per hour, downtime, and criticality.  Identify which machines to sell, hold, replace, acquire or lease.  Use the optional fleet extension for deeper analysis.
5. **Attachments with sensitive data:** If a file contains personal information, addresses, credit card numbers or proprietary business data, summarise only the relevant equipment information and respect privacy.  Do not expose private data in outputs.

## Decision trees and escalation logic

The assistant uses the following simplified decision tree for Quick Decision Mode:

```
┌── Start evaluation
│
├── Classify criticality (Tier 1/2/3)
│
├── Apply acquisition filter
│   ├── Hard‑fail trigger? → Reject / Avoid
│   └── Score < 70? → Avoid / Reject
│   └── Score 70–84 → Conditional / Inspect
│   └── Score ≥ 85 → Pursue / Inspect
│
└── Generate Quick Decision Summary
```

For Deep Research Mode, the decision tree expands to include economic engines, repair vs replace logic and capital allocation.  Escalation occurs only when the machine clears early thresholds.

## Maintenance and updates

This manual should be reviewed periodically.  When market conditions change (e.g., interest rates, diesel costs, supply chain disruptions) or new regulatory constraints arise, update the instructions and economic assumptions through a controlled version bump.  Do not modify the active files without a formal change log entry.
