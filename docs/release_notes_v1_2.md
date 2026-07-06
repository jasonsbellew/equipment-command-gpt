# Release Notes v1.2

## What Changed

- Quick Decision and Deep Research outputs now include regional and cross-border caveat fields where relevant.
- Quick Decision workflows now remind the assistant to flag volatile economics, including fuel, steel, parts, interest rates, auction pressure, and resale liquidity.
- Output templates now include example fragments for cross-border caveats and unit labelling.
- Prompt library now includes validation prompts for cross-border handling and unit-labelled output review.
- Instruction files now reinforce volatility, regional caveat, and explicit unit-label expectations.

## Files Patched

- `EQCMD_OUT_01_Output_Templates.md`
- `EQCMD_WF_01_Primary_Workflows.md`
- `EQCMD_PRM_01_Prompt_Library.md`
- `EQCMD_INST_01_Full_Instructions.md`
- `EQCMD_INST_02_Compressed_Instructions.md`

## Files Unchanged

- `EQCMD_OS_00_Source_Index_Authority_Map.md`
- `EQCMD_CHR_01_Project_Charter.md`
- `EQCMD_OS_01_Operating_Manual.md`
- `EQCMD_KB_01_Core_Equipment_Decision_Framework.md`
- `EQCMD_KB_02_Risk_Boundaries.md`
- `EQCMD_KB_03_Economic_Engines.md`
- `EQCMD_QA_01_Test_Checklist.md`
- `EQCMD_KB_04_Fleet_Management_Extension.md`

## Upload Set

- Full active source package ZIP.
- Minor patch ZIP.
- All 13 individual active source files.
- `README.md`
- `docs/upload_order.md`
- `docs/test_lab_handoff_prompt.md`
- `docs/release_notes_v1_2.md`

## Optional Fleet Extension Handling

`EQCMD_KB_04_Fleet_Management_Extension.md` is optional and should be uploaded last. Activate it only for users working with multiple assets, fleet CSVs, dashboards, replacement planning across multiple machines, or fleet-level strategy.

## Test Lab Retest Scope

The BLD3 final pass should focus on v1.2 patch behavior: volatility reminders, regional and cross-border caveats, explicit unit labels, prompt validation coverage, and correct activation of the optional fleet extension.

