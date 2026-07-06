# EQCMD_KB_01 Core Equipment Decision Framework

<!--
File name: EQCMD_KB_01_Core_Equipment_Decision_Framework.md
Project: Equipment Command (EQCMD)
File role: Consolidated decision frameworks for screening, classification and final decisions.
Status: Active
Internal version: v1.0
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Unify the key decision engines – acquisition filter, asset criticality scoring, repair vs replace logic, buy/lease/rent decisions, capital allocation and final decision translation – into a single knowledge base.  This file provides the rules, formulas, thresholds and narratives used to drive decisions.  It distils the core logic of the legacy engines into a clear, maintainable framework.
Change log:
* v1.0 – Consolidated legacy acquisition filter, criticality engine, repair vs replace engine, capital allocation logic and decision engine into a unified framework.
-->

## 1 Acquisition filter

This filter quickly screens a listing to determine whether it deserves deeper analysis.  Score the machine across five equal‑weighted categories (20 points each):

1. **Price vs market (0–20 points)** – Compare the asking price to the estimated market value or comps.  Full points if the price is at or below the lower quartile of the market; partial points for fair pricing; zero if the price is above market or unknown.
2. **Hours / miles / PTO vs expected life (0–20 points)** – Evaluate usage relative to typical service life for the machine type.  Full points if the hours/miles/PTO are low relative to expected life; partial points if moderate; zero if high or unknown.
3. **Condition risk (0–20 points)** – Assess visible condition (photos, inspection notes), reported issues, and maintenance history.  Full points for field‑ready, well‑maintained machines; partial points for cosmetic wear or minor issues; zero if major defects, rust, leaks, codes or missing maintenance history【881895839086462†L86-L93】.
4. **Parts availability (0–20 points)** – Consider parts commonality, manufacturer support, aftermarket options and supply chain.  Full points if parts are widely available and reasonably priced; partial points if limited or expensive; zero if parts are scarce or obsolete.
5. **Dealer/service support (0–20 points)** – Evaluate proximity and quality of dealers, service shops and technicians.  Full points if local support is strong; partial for moderate; zero if none exists in the user’s region.

### Decision thresholds

Calculate the total score (0–100).  Apply the following thresholds:

- **Score < 70:** **Reject/Avoid** – The deal is weak; do not pursue.
- **Score 70–84:** **Conditional** – Pursue only if missing data is resolved or the price is negotiable.  Inspect before committing.
- **Score ≥ 85:** **Pursue** – The deal warrants inspection and negotiation.

### Hard‑fail triggers

Regardless of the numeric score, immediately reject a listing if any of the following are true【881895839086462†L86-L94】:

- Structural, frame, boom or major rust damage.
- Hydraulic contamination, burn smell, glitter in oil, or evidence of system‑wide neglect.
- Engine, hydrostat, transmission or emissions failure with unclear scope.
- Poor‑condition machine priced as field‑ready.
- No realistic parts support.

If a listing is priced as a teardown/rebuild candidate, screen it separately using deeper analysis; otherwise reject.

## 2 Asset criticality scoring

Classify each machine into one of three tiers based on its role in the user’s business.  Score 0–100 across five criteria:

1. **Revenue dependency (0–25 points)** – Required for core revenue work gets 25 points; indirect revenue support receives fewer points【40705312601186†L112-L137】.
2. **Downtime impact (0–25 points)** – Stops crews or delays booked work gets 25 points; minor inconvenience receives fewer points【40705312601186†L139-L145】.
3. **Utilization / frequency (0–20 points)** – High utilisation or weekly use gets more points; infrequent use receives fewer points.
4. **Bottleneck / productivity impact (0–15 points)** – Critical bottlenecks or major productivity improvements score higher; minor efficiency gains score lower.
5. **Replacement difficulty (0–15 points)** – Hard to replace or long lead times score higher; easily rented or substituted machines score lower.

### Tier interpretation

- **80–100 points:** **Tier 1 – Revenue‑critical** – A machine whose downtime stops revenue or critical operations.  Ownership and proactive replacement are high priorities.
- **55–79 points:** **Tier 2 – Productivity multiplier** – Improves labour efficiency and job speed but does not stop revenue; ownership must beat rent or subcontract.
- **0–54 points:** **Tier 3 – Support/utility** – Provides convenience or backup but revenue can continue without it.  Prioritise low cost and liquidity; consider renting or delaying purchase【40705312601186†L112-L124】.

This classification influences repair tolerance, replacement urgency, downtime penalty and capital allocation.

## 3 Repair vs replace framework

When a machine fails or a major repair estimate arrives, apply the following rules to decide whether to repair, sell or replace【72862547037374†L71-L100】:

1. **Do not let sunk cost bias affect the decision.**  A repair is not worthwhile just because less expensive than a replacement; a replacement is not better just because newer.
2. **Consider downtime damage.**  Factor lost production, crew idle cost and schedule ripple cost when downtime will be extended by repair logistics or parts delays.
3. **Compare repair cost vs value:**
   - **Repair path:** Estimate repair invoice, transport, inspection, teardown, hidden exposure, downtime cost, rental/subcontract/backup cost, post‑repair residual risk and expected remaining useful life.
   - **Sell path:** Evaluate as‑is sale value, repaired‑then‑sell value, likely days on market, liquidity discount and whether sale proceeds fund a better machine.
   - **Replacement path:** Determine the cost of an equivalent used or new machine, including financing, and compare payback and downtime impact.
4. **Use downside bias when diagnostics are uncertain.**  If the scope of failure is unclear, assume higher cost and risk.
5. **Decision logic:**
   - **Repair** if the repair cost plus downtime damage is significantly lower than replacement cost and the remaining useful life is sufficient.  Ensure the repair solves the root problem rather than symptoms.
   - **Sell** if the repair cost is close to or exceeds the machine’s repaired value, or if the machine is likely to enter a stacked failure zone soon.  Sell either as‑is or repaired only enough to maximise resale value.
   - **Replace** if the machine has high failure risk, low remaining life, expensive repairs, or high downtime penalty, and if a replacement yields faster payback and lower cost per hour.

The output template for this analysis summarises the comparison and provides a decisive recommendation.

## 4 Buy vs lease vs rent vs subcontract

When the user needs to decide among ownership, leasing, renting or subcontracting, evaluate the cost per hour and payback under each option:

1. **Ownership (buy):**
   - **Cost per hour:** (Purchase price – residual value + financing interest + maintenance + repairs + downtime + overhead) / (Expected useful hours).
   - **Advantages:** Full control, tax benefits (consult a tax professional), ability to bill at market rates, long‑term ROI.
   - **Disadvantages:** Large capital outlay, maintenance burden, risk of obsolete or underutilised assets.
2. **Lease:**
   - **Cost per hour:** (Lease payments + insurance + maintenance not covered + downtime + end‑of‑lease charges) / Hours used.
   - **Advantages:** Lower upfront cost, easier upgrades, potential tax deductibility, known payment schedule.
   - **Disadvantages:** Ongoing payments, usage restrictions, potential overage fees, no equity accumulation.
3. **Rent:**
   - **Cost per hour:** (Rental rate × rental period + delivery/pickup + downtime) / Hours used.
   - **Advantages:** Maximum flexibility, no capital lockup, no long‑term maintenance, ideal for short‑term or seasonal needs.
   - **Disadvantages:** Highest per‑hour cost, limited availability, transport logistics, no control over condition.
4. **Subcontract:**
   - **Cost per hour:** Price charged by subcontractor (includes their overhead and margin).
   - **Advantages:** Zero asset management, no capital or maintenance burden.
   - **Disadvantages:** Loss of margin, schedule coordination, and potential quality control issues.

Compare these options by calculating cost per hour, payback period and net profit.  Consider tax implications at a high level but refer users to a CPA for specifics.

## 5 Capital allocation framework

When multiple opportunities compete for capital, rank them based on:

1. **Returns vs alternative uses:** Calculate expected ROI, payback speed and contribution margin per unit of capital.  Prioritise investments that relieve bottlenecks and increase revenue capacity.
2. **Risk profile:** Assess failure probability, downtime impact, residual value and market volatility.  Favour machines with manageable risk or strong contingency plans.
3. **Bottleneck removal:** Identify whether the investment resolves a capacity constraint or unlocks new services.  Bottleneck‑breaking assets rank higher than incremental improvements.
4. **Capital velocity:** Prefer assets that return cash quickly and can be sold with minimal discount if needed.  Lower‑liquidity investments rank lower unless they are critical.
5. **Strategic alignment:** Evaluate how well the opportunity aligns with the business’s growth strategy, diversification goals or seasonal demands.

Use these criteria to assign an **allocation score**.  Rank all opportunities and allocate capital to the highest‑scoring items first, subject to budget and risk tolerance.

## 6 Final decision translator

After all frameworks are applied, translate the findings into one of the following definitive actions:

- **Buy/Pursue:** The machine meets or exceeds thresholds in price, condition, and payback.  Proceed with inspection, negotiation and due diligence.
- **Conditional:** The machine could be viable if specific missing data (e.g., maintenance records, inspection results) is resolved or if the price can be negotiated.  Do not commit until conditions are satisfied.
- **Avoid/Reject:** The machine fails basic economic or condition thresholds.  Do not pursue further.
- **Repair:** For a failing machine, the repair path offers the best economics and residual life relative to replacement.
- **Replace:** For a failing or obsolete machine, replacement provides faster payback and lower risk than repair.
- **Sell:** For an underutilised or high‑risk machine, selling and reallocating capital yields better returns.
- **Hold:** Continue using the machine as is.  Monitor condition and plan for future replacement.
- **Lease/Rent/Subcontract:** Use alternatives to ownership when they offer superior economics or flexibility.

The final decision should be accompanied by a confidence score (e.g., High, Medium, Low) and a brief explanation of the driving factors.
