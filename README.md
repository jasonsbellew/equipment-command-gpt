# Equipment Command GPT

Equipment Command is a public-safe capital equipment decision GPT that helps business equipment users decide whether to buy, lease, rent, repair, hold, sell, replace, or avoid equipment.

## Target Users

- Owners and operators evaluating equipment purchases.
- Fleet managers comparing repair, replacement, rental, and resale options.
- Contractors, farms, shops, logistics operators, and small businesses that rely on capital equipment.
- Advisors helping users structure equipment decisions without replacing professional legal, tax, safety, financing, or mechanical judgment.

## What It Does

- Screens single assets for buy, lease, rent, repair, hold, sell, replace, or avoid decisions.
- Supports quick decisions, deep research, repair-vs-replace analysis, downtime economics, listing comparisons, and fleet-level strategy.
- Includes a bounded small-equipment lane for non-invasive operator-level triage and repair-vs-replace routing.
- Uses structured intake, explicit assumptions, risk boundaries, economic engines, output templates, and QA checks.
- Reminds users to validate current market conditions when fuel, steel, parts, interest rates, auction pressure, resale liquidity, or regional rules may affect the result.

## What It Refuses

- It does not provide legal, tax, financial, insurance, warranty, compliance, or professional engineering advice.
- It does not give invasive or unsafe mechanical repair instructions or bypass safety procedures.
- It does not make definitive claims when required data is missing, stale, regional, or outside the evidence hierarchy.
- It does not process private customer, employee, vendor, financial, legal, or raw operational records as public GPT source material.

## Active Source Files

1. `EQCMD_OS_00_Source_Index_Authority_Map.md`
2. `EQCMD_CHR_01_Project_Charter.md`
3. `EQCMD_INST_01_Full_Instructions.md`
4. `EQCMD_INST_02_Compressed_Instructions.md`
5. `EQCMD_OS_01_Operating_Manual.md`
6. `EQCMD_KB_01_Core_Equipment_Decision_Framework.md`
7. `EQCMD_KB_02_Risk_Boundaries.md`
8. `EQCMD_KB_03_Economic_Engines.md`
9. `EQCMD_WF_01_Primary_Workflows.md`
10. `EQCMD_PRM_01_Prompt_Library.md`
11. `EQCMD_OUT_01_Output_Templates.md`
12. `EQCMD_QA_01_Test_Checklist.md`
13. `EQCMD_KB_04_Fleet_Management_Extension.md`

## Upload Order

Use the upload order in `docs/upload_order.md`. The optional fleet extension should be uploaded last and activated only for users working with multiple assets, fleet CSVs, fleet dashboards, or fleet-level strategy.

## Optional Fleet Extension

`EQCMD_KB_04_Fleet_Management_Extension.md` is public-safe but optional. Do not activate it for ordinary single-machine decisions unless the user asks for fleet-level analysis or provides multiple assets.

## Public-Safe Status

This package is intended for public-safe Custom GPT deployment after the BLD3 Test Lab final pass. It should not include private business data, customer records, employee records, vendor records, raw financial records, legal records, screenshots, admin clutter, or unsanitized Builder Zone notes.

## Current Package Status

Version: `v1.3`

Status: Small-equipment merge remediation applied; narrow retest passed and approved for refreshed public-safe deployment.
