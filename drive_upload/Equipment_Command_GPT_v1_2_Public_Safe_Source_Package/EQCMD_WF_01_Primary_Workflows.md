# EQCMD_WF_01 Primary Workflows

<!--
File name: EQCMD_WF_01_Primary_Workflows.md
Project: Equipment Command (EQCMD)
File role: Primary workflows for each use case.
Status: Active
Internal version: v1.2
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Define step‑by‑step workflows for all critical use cases.  Each workflow includes triggers, required inputs, assumptions, process steps, outputs, escalation paths and failure modes.  This ensures consistent, repeatable execution and simplifies future updates.
Change log:
* v1.2 – Added Quick Decision workflow reminder to flag fuel, steel, parts pricing, interest rates, auction pressure and liquidity volatility when relevant.
* v1.1 – Streamlined the intake workflow to separate essential and optional inputs; clarified that optional details are requested only for Deep Research or promoted machines; added guidance on capturing current market data when conditions are volatile or cross‑border; emphasised fleet extension triggers and regional considerations.
* v1.0 – Initial workflows compiled during the rebuild.
-->

## 1 New equipment evaluation intake

**Trigger:** User initiates any equipment decision or uploads a listing/invoice/CSV.

**Required inputs:** Start with **essential fields** needed for a Quick Decision: equipment type, make/model/year, price, hours/miles/PTO, condition/defects, seller type, intended role (Tier 1/2/3) and local parts/service support if known.  Ask for the desired mode (Quick or Deep).  These fields enable the acquisition filter and criticality scoring.  If any essential data is missing, assume worst‑case values and disclose this assumption.

**Optional inputs:** For Deep Research Mode or when a machine passes the Quick screen, request additional details such as financing terms, repair history, downtime logs, projected utilisation, market comps, inspection reports, maintenance records and engine/fuel/drivetrain type.  Encourage uploading photos, repair estimates, quotes, CSVs or spreadsheets only when deeper analysis is justified.

**Assumptions allowed:** If any fields are missing, assume worst‑case (e.g., high hours, poor condition) and reduce confidence.  Inform the user of the assumption.

**Process:**

1. Greet the user and acknowledge the request.
2. Collect the essential inputs via questions or by parsing the provided text/attachments.  Do not overwhelm the user with optional fields unless Deep Research Mode is requested.
3. Summarise attachments (e.g., listing text, photos) and extract structured data.  Respect privacy and ignore sensitive personal or business information.
4. Ask the user to choose Quick Decision or Deep Research Mode.  Explain that deeper inputs (e.g., financing, repair history, market comps) will be requested only if Deep Research is selected or the machine clears initial screening.

**Output:** A summarised data intake statement and a clear question asking which mode to run.

**Escalation:** If the user provides a CSV or multiple machines, proceed to the listing comparison workflow.  If no mode is selected, default to Quick Decision.

**Failure mode:** If the user refuses to provide minimum data, politely explain that a recommendation cannot be made without basic details and suggest the user gather more information.

## 2 Quick Decision Mode

**Trigger:** User selects Quick Decision Mode or requests a rapid screen.

**Required inputs:** Basic machine data as collected in the intake.  If unavailable, instruct user to provide at least price, hours, condition and role.

**Assumptions allowed:** Missing hours or condition may be assumed high/poor.  State the assumption.

**Process:**

1. Apply asset criticality scoring to classify Tier 1/2/3.
2. Run the acquisition filter and compute category scores and total score.
3. Apply hard‑fail triggers (reject if present)【881895839086462†L86-L94】.
4. Check whether current fuel, steel, parts pricing, interest rates, auction pressure or resale liquidity volatility could materially change the screen.  If relevant, flag the volatility briefly and reduce confidence when current data is missing.
5. Generate Quick Decision Summary: include machine details, decision (Buy/Pursue/Conditional/Avoid/Sell/Hold/Lease/Replace), key reasons, missing variable, economic volatility check, regional/cross-border caveat, next step, and confidence.

**Output:** Quick Decision Summary using the standard template.

**Escalation:** If the machine scores ≥ 85 or is borderline and critical to operations, suggest Deep Research Mode.  If multiple machines are provided, rank them and identify which to promote.

**Failure mode:** If insufficient data prevents scoring, ask for the missing fields or suggest uploading an invoice or inspection report.

## 3 Deep Research Mode

**Trigger:** User selects Deep Research Mode or the assistant promotes a machine after Quick Decision.

**Required inputs:** All data from Quick Mode plus additional details: sold comps, financing terms, repair history, downtime logs, projected utilisation, and any attachments relevant to cost modelling.

**Assumptions allowed:** Use conservative estimates for unknown market comps, repair costs or payback parameters.  Clarify assumptions in the report.

**Process:**

1. Validate that the machine passes basic acquisition and criticality thresholds.
2. Collect additional data (sold comps, financing rates, repair history, downtime logs, projected utilisation and supporting attachments).  When market conditions are volatile or the analysis crosses borders, encourage the user to provide the most recent data on sold comparables, fuel costs, parts pricing, financing rates and local regulations.  Use web research or user‑provided sources if current data materially affects the outcome.  Clearly state when assumptions are based on historical averages or when regional factors (currency conversion, taxes, import/export duties, emissions rules) may alter the economics.
3. Apply economic engines (downtime, failure curve, time‑to‑cash, exit liquidity).
4. Apply repair vs replace framework if there is a failure event or major repair cost.
5. Evaluate buy vs lease vs rent vs subcontract options.  Compute cost per hour and payback for each.
6. Apply the capital allocation framework to rank this opportunity against alternative investments.
7. Generate Deep Research Summary: include detailed cost per hour, payback period, failure risk, downtime cost, exit timing, financing considerations, capital allocation rank and final recommendation.

**Output:** Deep Research Summary using the template.

**Escalation:** If conflicting results or high risk, suggest a professional inspection, appraisal or consultation with an advisor.

**Failure mode:** If critical data (e.g., market comps) cannot be obtained, document this limitation, use conservative defaults and still provide a recommendation with reduced confidence.

## 4 Listing comparison

**Trigger:** User submits multiple machines for comparison.

**Required inputs:** Basic details for each machine: price, hours/miles/PTO, condition, seller type and role.

**Assumptions allowed:** Missing data defaults to worst‑case values for each machine individually.  State assumptions.

**Process:**

1. For each machine, perform Quick Decision Mode steps (criticality classification, acquisition filter, hard‑fail check) and compute a rank.
2. Present a comparison table summarising each machine’s score, tier, decision and key reasons.
3. Identify the strongest candidate(s) for promotion to Deep Research Mode, if appropriate.

**Output:** A ranked listing comparison table and a recommendation on which machine(s) to research further.

**Escalation:** For top candidates, proceed to Deep Research Mode if the user desires.

**Failure mode:** If the user supplies only partial data for multiple machines, ask for missing fields or decline to rank if comparisons would be misleading.

## 5 Buy vs lease vs rent workflow

**Trigger:** User asks whether to buy, lease, rent or subcontract.

**Required inputs:** Utilisation (hours per year), equipment type and model, pricing or lease terms, rental rates, projected project duration, capital budget and financing rates.

**Assumptions allowed:** Use industry‑average lease rates or rental rates if not provided.  Use conservative estimates for financing.  Inform the user.

**Process:**

1. Calculate cost per hour for each option using formulas in `EQCMD_KB_01_Core_Equipment_Decision_Framework.md`.
2. Compare payback periods, flexibility, tax implications (high‑level) and risk profiles.
3. Present pros and cons of each option and identify the lowest cost per hour that meets the user’s utilisation and risk tolerance.

**Output:** A comparison table of buy, lease, rent and subcontract options with cost per hour, payback, pros/cons and recommended choice.

**Escalation:** If the user requires specific tax advice, redirect to a CPA.

**Failure mode:** If insufficient lease or rental rate data is available, ask the user for quotes or suggest contacting providers before proceeding.

## 6 Repair vs replace workflow

**Trigger:** User provides a repair estimate, failure description or asks whether to fix or sell/replace a machine.

**Required inputs:** Current machine details, failure description, repair estimate, downtime cost per day/hour, expected repair downtime, current value as‑is, repaired value, replacement cost, and optional historical repair data.

**Assumptions allowed:** Use conservative downtime costs and failure curve stage when unknown.  If market values are unknown, use typical discount rates.

**Process:**

1. Calculate repair path cost (repair invoice + transport/inspection/teardown + hidden exposure + downtime cost + rental/subcontract/backup cost + post‑repair risk + remaining life).
2. Calculate sell path value (as‑is sale value and repaired‑then‑sell value) and estimate days to cash using exit liquidity.
3. Calculate replacement path cost (price of equivalent machine + financing + downtime risk during acquisition).
4. Compare repair, sell and replacement options.  Apply downside bias for uncertain diagnostics【72862547037374†L71-L100】.
5. Decide whether to repair, sell or replace.  Provide a summary with the rationale and next steps.

**Output:** Repair vs Replace Summary with decision, costs, downtime impact and remaining life considerations.

**Escalation:** If the failure is complex or diagnostics are uncertain, recommend a professional inspection or sending the machine to a dealer for evaluation.

**Failure mode:** If repair estimates are missing or unreliable, ask the user for documentation or provide a high‑level directional recommendation based on typical repair costs for that machine type.

## 7 Cost‑per‑hour and charge‑rate modelling

**Trigger:** User wants to know ownership cost per hour or the minimum charge rate required for profitability.

**Required inputs:** Purchase price, financing terms, expected residual value, annual utilisation hours, fuel cost, maintenance cost, repair cost, insurance, overhead, labour rates and downtime.

**Assumptions allowed:** Use typical fuel burn rates, maintenance schedules and residual value ranges if not provided.  Disclose assumptions.

**Process:**

1. Calculate annual cost of ownership: depreciation (purchase price – residual value)/useful life, financing interest, maintenance, repairs, downtime cost and overhead.
2. Divide by annual utilisation hours to obtain **ownership cost per hour**.
3. Add desired margin to ownership cost per hour to obtain **minimum charge rate**.
4. Compare the calculated charge rate to market rates.  Highlight whether the user can achieve the required rate or should adjust pricing.

**Output:** Cost‑per‑hour analysis and recommended charge rate.

**Escalation:** If utilisation is highly uncertain, suggest using a range of utilisation scenarios to see how cost per hour changes.

**Failure mode:** If critical cost components (e.g., maintenance or repair costs) are unknown, ask for historical data or industry averages.

## 8 Downtime economics workflow

**Trigger:** User requests downtime cost analysis or the assistant needs to quantify downtime for another decision.

**Required inputs:** Expected daily billable output, contribution margin, crew size, loaded labour rate, idle hours, rescheduling/admin time, rental rates, alternative costs and downtime category.

**Assumptions allowed:** Use conservative values for labour rates and downtime duration if unknown.

**Process:**

1. Classify the downtime event (recoverable delay, margin damage, revenue loss or strategic damage)【247685971577678†L62-L78】.
2. Calculate lost production value, crew idle cost, schedule ripple cost and replacement/recovery cost using formulas in `EQCMD_KB_03_Economic_Engines.md`.
3. Sum the components to obtain total downtime cost.
4. Perform sensitivity analysis if needed (e.g., different crew sizes or rental rates).

**Output:** Downtime Economics Summary with cost breakdown, classification and high‑impact factors.

**Escalation:** If downtime classification is ambiguous, explain both plausible scenarios and use the higher cost for decision‑making.

**Failure mode:** If inputs are insufficient, use typical industry values and emphasise the range of possible costs.

## 9 Sell‑window / exit liquidity workflow

**Trigger:** User asks when to sell a machine or how long it will take to liquidate an asset.

**Required inputs:** Current market value, utilisation trend, failure curve stage, seasonal factors, preferred sale channel (private/trade/auction) and urgency.

**Assumptions allowed:** Use average liquidity discounts and days‑to‑cash from historical data.  Indicate seasonality if applicable.

**Process:**

1. Assess the machine’s wear stage and remaining useful life using the failure curve engine.
2. Evaluate current market trends and comparables.
3. Estimate liquidity discount and days‑to‑cash for each sale channel.
4. Identify the optimal sale window (e.g., before major wear‑out, during seasonal demand peaks).
5. Recommend a sale channel and timing, balancing speed and price.

**Output:** Exit Liquidity Summary with recommended channel, expected discount, days to cash and timing rationale.

**Escalation:** If market data is outdated or uncertain, recommend obtaining current comps or consulting a dealer or auctioneer.

**Failure mode:** If the user lacks market data or misjudges seasonality, emphasise that the recommendation is approximate and depends on external factors.

## 10 Capital allocation workflow

**Trigger:** User needs to prioritise multiple investment opportunities.

**Required inputs:** List of candidate machines or projects, expected returns, payback periods, capital requirements, risk profiles, bottleneck relief and strategic alignment.

**Assumptions allowed:** Use conservative estimates for unknown returns or risks.  Disclose assumptions.

**Process:**

1. For each opportunity, calculate expected ROI, payback period and risk using the frameworks in `EQCMD_KB_01_Core_Equipment_Decision_Framework.md` and `EQCMD_KB_03_Economic_Engines.md`.
2. Score each opportunity on returns vs alternatives, risk, bottleneck removal, capital velocity and strategic alignment.
3. Rank the opportunities by total score.
4. Allocate capital to the highest‑scoring opportunities first, subject to budget constraints and essential replacements.
5. Document opportunity cost and what each investment solves.

**Output:** Capital Allocation Summary with ranked opportunities, scores and recommended actions.

**Escalation:** If opportunities are closely scored, recommend deeper analysis or postponement until more data is available.

**Failure mode:** If required inputs are missing, ask the user to provide returns estimates or refine the scope to the most promising options.

## 11 Fleet review workflow (optional)

**Trigger:** User uploads a fleet CSV or requests an overall fleet assessment.

**Required inputs:** CSV or spreadsheet with asset ID, equipment type, make, model, year, hours, miles, purchase price, current value, replacement cost, fleet role, annual use, annual repair cost, downtime hours, downtime cost, condition and notes【717269724059584†L34-L37】.

**Assumptions allowed:** If columns are missing, treat unknowns conservatively (e.g., higher downtime cost).  Ask the user to fill in missing data where possible.

**Process:**

1. Parse the CSV and extract data for each machine.
2. For each asset, calculate utilisation, cost per hour, downtime impact and criticality tier.
3. Identify machines that are underutilised, high maintenance cost, approaching the wear‑out stage or low criticality.
4. Generate a Fleet Dashboard summarising metrics for all machines and recommending actions: sell, hold, replace, acquire, lease or reassign.
5. Highlight the top capital allocation opportunities and the largest risks.

**Output:** Fleet Performance Dashboard (see optional template) and a list of recommended actions for each asset.

**Escalation:** For complex fleets with hundreds of assets, recommend integrating data into a fleet management system or consulting a fleet analyst.

**Failure mode:** If the CSV is corrupted or missing key columns, ask the user to provide a corrected file or manually specify the missing data.

## 12 Uploaded file / attachment review workflow

**Trigger:** User uploads a file (photo, PDF, invoice, CSV, spreadsheet, manual, inspection report).

**Required inputs:** File reference via connector.

**Assumptions allowed:** None; rely on the content of the file.  If the file is unreadable, inform the user.

**Process:**

1. Confirm the file type and preview its contents.
2. Summarise the file’s purpose and relevant fields (e.g., repair invoice totals, component names, hours from a logbook).
3. Extract structured data where possible.  Enter the information into the appropriate fields for the ongoing analysis.
4. Respect privacy and do not expose sensitive information.
5. Return to the relevant workflow based on the file’s content (e.g., if it is a repair invoice, proceed to the repair vs replace workflow).

**Output:** A summary of the file and next steps.

**Escalation:** If the file contains ambiguous or conflicting information, ask the user for clarification.

**Failure mode:** If the file cannot be opened or is unrelated, inform the user and request a valid attachment.

## 13 Missing‑data handling workflow

**Trigger:** User provides partial or insufficient data to complete an analysis.

**Required inputs:** None beyond what was provided.

**Assumptions allowed:** Use conservative assumptions only when necessary.  Clearly state them.

**Process:**

1. Identify which critical fields are missing (e.g., hours, price, condition, repair cost).
2. Ask the user succinctly for the missing fields.
3. If the user cannot provide them, decide whether to proceed with conservative assumptions or refuse to analyse further.  For Quick Decision Mode, assume worst‑case; for Deep Research Mode, a decision may not be credible without data.
4. Proceed with the analysis if possible, or explain why a recommendation cannot be made.

**Output:** A statement indicating assumptions or the inability to provide a reliable recommendation.

**Escalation:** Suggest the user gather the missing data (e.g., inspection, repair quote, market comps) before resubmitting.

**Failure mode:** Misinterpreting missing data as zero.  Always clarify whether the absence of data means unknown or zero.

## 14 Final decision translation workflow

**Trigger:** All relevant analyses are complete and the assistant must deliver a final recommendation.

**Required inputs:** Summaries from previous workflows (Quick Decision, Deep Research, repair vs replace, cost per hour, capital allocation).

**Assumptions allowed:** None beyond previously stated assumptions.

**Process:**

1. Consolidate findings from all relevant analyses.  Ensure consistency (e.g., Quick Decision and Deep Research should not contradict each other without explanation).
2. Use the final decision translator logic to choose one action (Buy/Pursue, Conditional, Avoid/Reject, Repair, Replace, Sell, Hold, Lease/Rent/Subcontract).
3. Provide a concise final decision statement summarising the rationale, key metrics and next steps.
4. Include a confidence rating and any remaining uncertainties.

**Output:** Final Decision statement using the output template.

**Escalation:** If conflicting signals cannot be reconciled, highlight the conflict and suggest obtaining professional advice before proceeding.

**Failure mode:** Delivering a non‑decisive answer.  Always provide a clear recommendation or explain why a recommendation cannot be made.
