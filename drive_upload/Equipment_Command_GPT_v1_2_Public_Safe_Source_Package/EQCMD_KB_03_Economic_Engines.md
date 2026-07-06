# EQCMD_KB_03 Economic Engines

<!--
File name: EQCMD_KB_03_Economic_Engines.md
Project: Equipment Command (EQCMD)
File role: Consolidated economic models for downtime, failure curves, payback speed and exit liquidity.
Status: Active
Internal version: v1.1
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Provide formulas, classifications and guidelines for quantifying downtime costs, failure probability, time‑to‑cash/payback, and exit liquidity.  These engines supply the quantitative backbone for deep economic analysis.
\n+### Important note on economic assumptions

Economic variables such as purchase prices, sold comparables, parts pricing, financing rates, fuel costs, and regulatory requirements change over time and vary by region.  The models in this file are only as accurate as the inputs.  When market conditions are volatile or the user indicates that economics have shifted materially, prompt the user to provide the latest available data or perform current market research before drawing conclusions.  Encourage users to verify financing terms, fuel prices, parts availability, market liquidity and local regulations using up‑to‑date sources.  Clearly state when estimates are based on historic or assumed values, and remind users that regional differences (e.g., currency conversion, taxes, import/export duties, emissions rules) may impact actual results.
Change log:
* v1.1 – Added guidance on economic volatility, market updates and regional differences; emphasised verifying current financing rates, fuel costs, parts pricing, market liquidity and regulatory factors.
* v1.0 – Integrated Downtime Economics, Failure Curve, Time‑to‑Cash and Exit Liquidity engines from legacy sources.
-->

## 1 Downtime economics

Downtime is one of the most expensive hidden costs of equipment ownership.  This engine quantifies the full economic impact across four components【247685971577678†L53-L103】:

1. **Lost production value:**
   - `Expected daily billable output × contribution margin` – This represents the revenue the machine would have generated if operational.
2. **Crew idle cost:**
   - `Crew size × loaded labour rate × idle hours + payroll burden + unproductive support labour` – Includes labour costs associated with idle operators and support crew【247685971577678†L89-L93】.
3. **Schedule ripple cost:**
   - `Rescheduling and admin time + route/jobsite inefficiency + extra travel/mobilisation + overtime + penalties + displacement of other profitable work` – Captures the downstream impact of downtime on schedules【247685971577678†L95-L102】.
4. **Replacement/recovery cost:**
   - `Rental replacement cost OR subcontract premium OR backup deployment cost + transport/setup time + efficiency penalty` – Reflects the cost of obtaining a temporary replacement or alternative【247685971577678†L103-L108】.

### Downtime classification

Classify downtime into four categories for risk weighting【247685971577678†L62-L78】:

1. **Recoverable delay:** Work can be completed later but schedule is disrupted.  Apply moderate downtime costs.
2. **Margin damage event:** Work is completed but with lower efficiency; includes overtime and schedule compression.  Apply higher labour and ripple costs.
3. **Revenue loss event:** Work is cancelled, delayed beyond recoverability or outsourced at lower margin.  Apply high lost production and subcontract costs.
4. **Strategic damage event:** Downtime harms emergency response, harvest windows, snow/ice events, shutdown windows, route schedules, client trust, referral momentum, reviews or contract renewals.  Apply the highest cost weighting and potential long‑term reputational damage.

Select the most economically realistic category for each downtime incident.  Do not default to the optimistic scenario; underestimated downtime is a common failure【247685971577678†L59-L60】.

### Output fields

The downtime engine produces:

- **Downtime cost estimate** broken down by the four components.
- **Downtime classification** (Recoverable delay, Margin damage, Revenue loss, Strategic damage).
- **High‑impact factors** (e.g., seasonal time pressure, lack of backups, bottleneck status).
- **Sensitivity analysis** showing how changes in assumptions (e.g., crew size, rental rates) affect the cost.

## 2 Failure curve engine

Equipment failure risk evolves through predictable stages:

1. **Infant mortality stage:** Early life failures due to manufacturing defects, installation errors or early‑wear components.  Expect higher failure rate shortly after purchase; warranty may apply.
2. **Stable life stage:** Long period of relatively low failure rate when the machine operates within design parameters and maintenance is performed.  Monitor but expect moderate repairs.
3. **Wear‑out stage:** Late life when components approach the end of service life.  Failure rate increases rapidly and multiple systems may degrade simultaneously (stacked failures).

### Stacked failure zones

Machines approaching the wear‑out stage face stacked risk: engine, hydraulics, drivetrain and electronics may all require major repairs within a short window.  This zone reduces the economic viability of repair and often warrants replacement or sale.

### Outputs

The failure curve engine outputs the current stage, approximate remaining useful life, risk of stacked failures, and recommended actions (e.g., monitor, plan replacement, replace now).

## 3 Time‑to‑cash and payback engine

This engine classifies how quickly an investment returns cash after covering ownership costs.  Use it to determine whether an asset is a quick payback or a capital trap.  Calculate the **payback period**:

```
Payback period = (Purchase price + financing costs + maintenance + repairs + downtime + overhead) / (Net annual cash flow from the machine)
```

Classify the machine:

- **Elite (< 1 year)** – Rapid payback; typically reserved for Tier 1 machines with high utilisation and strong margins.
- **Strong (1–2 years)** – Acceptable payback for productive machines.
- **Marginal (2–3 years)** – Payback may be acceptable if risk is low and capital is abundant.
- **Weak (3–4 years)** – Borderline; consider leasing, renting or delaying.
- **Capital trap (> 4 years)** – Investment ties up capital too long; avoid unless strategic reasons or unusual reliability.

If the machine is financed, use the financing terms to calculate cash flow impact.  Consider expected resale value at the end of the payback period.

Outputs include: payback period, classification, annual cash flow assumptions and sensitivity analysis.

## 4 Exit liquidity engine

Selling a machine requires time and may result in a liquidity discount.  The exit liquidity engine estimates:

1. **Likely sale channels:** Private sale, dealer trade‑in, auction, consignment, or lease return.
2. **Liquidity discount:** Expected price discount relative to fair market value depending on channel and urgency.  For example, an auction may yield quick cash but at a 10–25 % discount.
3. **Days to cash:** Approximate timeframe from listing to funds received.  Private sales may take weeks; auctions may return cash within days; trade‑ins can be immediate but may involve a lower price.

Assess the interaction between exit liquidity and replacement timing.  A machine with strong liquidity can be sold quickly to fund a replacement; a machine with weak liquidity may require bridging finance or leasing to avoid downtime.

Outputs include the recommended sale channel, expected liquidity discount, days to cash and any contingencies (e.g., seasonality, market trends).

## Integration with other engines

The economic engines feed into other frameworks:

- **Downtime costs** and **failure curve stage** inform the repair vs replace decision and influence capital allocation by quantifying risk and payback.
- **Payback classification** influences buy vs lease vs rent decisions and helps prioritise high‑return assets.
- **Exit liquidity** guides sell/hold decisions and helps plan the timing of replacement to minimise downtime and capital lockup.

Use these engines in Deep Research Mode and when the user requests detailed economic analysis.
