# EQCMD_PRM_01 Prompt Library

<!--
File name: EQCMD_PRM_01_Prompt_Library.md
Project: Equipment Command (EQCMD)
File role: Prompt library and conversation starters.
Status: Active
Internal version: v1.2
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Provide ready‑made prompts and conversation starters that users can copy or adapt.  These prompts align with the defined workflows and ensure users supply necessary information.  They also help the assistant trigger the correct mode and analysis.
Change log:
* v1.2 – Added cross-border validation prompts and unit-labelled output validation prompts.
* v1.1 – Added guidance on essential vs optional information in prompts and noted that economics vary by region and over time; users should provide current data and consult local experts when relevant.
* v1.0 – Initial prompt library created from legacy example questions.
-->

## How to use this library

Users can copy these prompts directly into the chat or adapt them to their specific situation.  Each prompt indicates the intended mode and the **essential information** required to run the initial screen.  Encourage users to supply at least the essential fields — equipment type, make/model/year, price, hours/miles/PTO, condition/defects, seller type, intended role and parts/service support.  Optional details such as financing terms, repair history, downtime logs, utilisation forecasts, market comps and inspection reports should only be provided when the user wants Deep Research Mode or when a machine passes the Quick screen.  Remind users that economic variables (prices, financing rates, fuel costs) and regulations differ by region and over time, so current data and local expert input improve accuracy.

## Quick listing screen prompts

- “Screen this listing in Quick Decision Mode: [paste listing text].  The machine is a 2019 excavator with 4,500 hours, priced at $75,000.  Should I pursue it?”
- “I found three used skid steers for sale.  Can you run Quick Decision Mode on each and tell me which, if any, are worth inspecting?”
- “Here’s a link to a bucket truck listing.  Could you quickly tell me if it’s worth looking at?  The seller wants $50,000.”

## Deep acquisition analysis prompts

- “Run Deep Research Mode on this compact track loader.  It’s a 2021 model with 800 hours, priced at $62,000.  Include market comps, cost per hour, payback, and whether buying is better than leasing.”
- “Compare buy used vs lease for a 10,000‑lb telehandler I need for 18 months.  I expect to use it 600 hours per year.  Quotes attached.”
- “I’m considering purchasing a new tractor vs renting one for five years.  Please calculate cost per hour, payback and exit timing using Deep Research Mode.”

## Buy vs lease vs rent vs subcontract prompts

- “Should I buy, lease or rent a mini excavator for a year‑long landscaping project?  I expect to use it 1,200 hours.  Prices: buy $80,000, lease $2,000/month, rent $2,500/month.”
- “I need a snowplow truck for winter.  Would leasing or subcontracting snow removal be better?  Provide a cost comparison.”

## Repair vs replace prompts

- “My skid steer threw a rod.  Repair estimate is $8,000.  It has 3,200 hours and is a 2015 model.  Should I repair it, sell it or replace it?”
- “Here’s a repair invoice for a backhoe with 7,000 hours.  The transmission needs rebuilding.  What’s the best course of action?”
- “My stump grinder keeps breaking down.  I spend $2,500 annually on repairs.  Should I invest in a new one?”

## Hold vs sell prompts

- “I have a 2008 dump truck with 200,000 miles.  It’s running fine but maintenance costs are creeping up.  Should I hold or sell?”
- “My 10‑ton trailer is underutilised.  I only use it 50 hours a year.  Should I keep it or sell it?”

## Sell‑window / exit timing prompts

- “When should I sell this 2014 loader?  It has 6,000 hours and I plan to upgrade.  What’s the best time and channel to sell?”
- “I have an old baler that still works, but parts are getting scarce.  Should I sell it now or run it another season?”

## Cost per hour and charge rate prompts

- “Calculate the cost per engine hour and the minimum charge rate for this bucket truck.  I paid $120,000, expect to use it 1,500 hours per year, and spend $6,000 annually on maintenance.”
- “What hourly rate do I need to charge to make a profit on this excavator?  Financing at 6 %, fuel at $4/gallon.”

## Downtime economics prompts

- “My main excavator is down for two weeks.  We are losing $5,000 per day in revenue.  What’s the true cost of this downtime and how should I plan for it?”
- “Estimate the downtime cost if my tree truck fails during storm season.  Crew of 5, loaded labour rate $35/hour.”

## Capital allocation prompts

- “I have $200,000 to invest.  Should I buy two used skid steers, one new excavator, or upgrade my wood chipper?  Rank these options.”
- “Our fleet is old.  Help me prioritise which machines to replace first given limited capital.”

## Fleet review prompts

- “Here’s our fleet CSV.  Can you tell me which assets to sell, hold or replace?  Also recommend if we should acquire any new equipment.”
- “Review this list of trucks and trailers and build a fleet dashboard with utilisation, downtime and cost per hour.”

## Cross-border validation prompts

- “Validate this listing for a cross-border purchase.  The machine is listed in [country/state/province], and I would operate it in [country/state/province].  Flag currency conversion, taxes, duties, transport, emissions rules, local service support and resale-market differences.”
- “This machine looks cheaper across the border.  Before I pursue it, tell me what assumptions could erase the price advantage, including FX, import costs, compliance, transport and parts availability.”
- “Run the decision again assuming the machine is bought in [region] and operated in [region].  Call out any regional risks that change the confidence or recommendation.”

## Unit-labelled output validation prompts

- “Check the output for unit clarity.  Make sure every cost and time metric labels its unit, such as dollars per engine hour, dollars per billable hour, dollars per mile, dollars per PTO hour, hours, miles, PTO hours, days or months.”
- “Rewrite this summary so cost per hour, downtime cost, utilisation, remaining life, financing and payback all show explicit units.”
- “Audit this recommendation for ambiguous numbers.  If a dollar value, rate, utilisation figure or time estimate lacks a unit, mark it and suggest the corrected wording.”

## General conversation starters

- “What factors should I consider when buying used construction equipment?”
- “How can I tell if a ‘good deal’ is actually a money pit?”
- “Why might renting equipment be better than owning?”
- “How do I determine the right time to replace my skid steer?”

These prompts encourage users to provide detailed information and choose the appropriate mode.  The assistant should follow up with clarifying questions if any critical data is missing.
