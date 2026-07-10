# EQCMD_OS_00 Source Index & Authority Map

<!--
File name: EQCMD_OS_00_Source_Index_Authority_Map.md
Project: Equipment Command (EQCMD)
File role: Source index and authority map for the equipment decision assistant.
Status: Active
Internal version: v1.3
Last updated: 2026‑07‑09
Authority level: Public Safe
Owner: Project Architect
Purpose: Provide a single reference listing for all source files in the EQCMD package, their roles, status, and authority level.  This map allows maintainers to understand the structure of the project and trace where core logic lives.  It also indicates which files are public‑safe and which require internal confidentiality.
Change log:
* v1.3 – Recorded the completed Small Equipment Command absorption and classified merge evidence as Drive-only administrative material that does not consume runtime source slots.
* v1.1 – Updated fleet extension notes to clarify activation triggers (multiple assets, fleet CSV, fleet review requests) and emphasised non‑use in single‑machine analyses.
* v1.0 – Initial creation consolidating legacy files into a clear source index and authority map.
-->

## Overview

The EQCMD package is organised into a set of stable, versioned markdown files.  Each file serves a specific function – instructions, frameworks, workflows, outputs, prompts, and quality assurance.  This source index clarifies each file’s role, authority level, and relation to legacy material.  Files marked **Public Safe** are suitable for public‑facing GPTs; those marked **Authority Locked** contain sensitive logic that should only be exposed to trusted internal environments.

## Current source files

| File name | Role | Authority | Notes |
|---|---|---|---|
| **EQCMD_OS_00_Source_Index_Authority_Map.md** | Index of all EQCMD files, including their role, status, and authority classification. | Public Safe | This file (you are reading it). |
| **EQCMD_CHR_01_Project_Charter.md** | Defines the positioning statement, target user, painful problem, core and non‑use cases, operating doctrine, source hierarchy, safety boundaries, and 10/10 foundation. | Public Safe | Consolidates high‑level mission and constraints. |
| **EQCMD_INST_01_Full_Instructions.md** | Comprehensive operating instructions for the assistant, covering user onboarding, mode selection, core behaviour and evidence hierarchy. | Public Safe | Supersedes the legacy “Main Instructions” with a structured, stable format. |
| **EQCMD_INST_02_Compressed_Instructions.md** | Concise version of the full instructions for quick retrieval during execution. | Public Safe | Mirrors the full instructions but removes narrative comments and examples. |
| **EQCMD_OS_01_Operating_Manual.md** | Describes how the assistant routes between modes, interacts with other engines, and makes decisions.  Includes decision trees and mode definitions. | Public Safe | Incorporates the legacy mode router and clarifies use of Quick Decision vs Deep Research modes. |
| **EQCMD_KB_01_Core_Equipment_Decision_Framework.md** | Houses the consolidated frameworks for acquisition screening, criticality scoring, repair vs replace logic, buy/lease/rent decisions, and capital allocation. | Public Safe | Merges multiple legacy engines (Acquisition Filter, Asset Criticality, Replace vs Repair, Capital Allocation, Equipment Decision Engine) into a coherent decision framework. |
| **EQCMD_KB_02_Risk_Boundaries.md** | Defines safety boundaries and refusal/redirect rules concerning legal, tax, mechanical, safety, compliance, warranty, financing, inspection, data privacy, and other non‑core requests. | Public Safe | Summarises explicit limitations from legacy instructions and clarifies when to refuse or redirect. |
| **EQCMD_KB_03_Economic_Engines.md** | Encapsulates the economic models for downtime cost, failure curves, time‑to‑cash/payback speed, exit liquidity, and other financial perspectives. | Public Safe | Combines Downtime Economics, Failure Curve, Time‑to‑Cash and Exit Liquidity functions. |
| **EQCMD_KB_04_Fleet_Management_Extension.md** *(optional)* | Optional extension for fleet‑level management, including fleet strategy, feedback loops and performance dashboards. | Public Safe | Activate only when the user provides multiple assets, uploads a fleet CSV/spreadsheet, or requests a fleet review, replacement queue, utilisation review, downtime trend analysis or capital‑allocation queue.  Do **not** load this extension during single‑machine evaluations. |
| **EQCMD_WF_01_Primary_Workflows.md** | Defines step‑by‑step workflows for each use case: intake, Quick Decision, Deep Research, listing comparison, buy vs lease vs rent vs subcontract, repair vs replace, cost‑per‑hour modelling, downtime economics, exit timing, capital allocation, fleet review, file handling, and final decision translation. | Public Safe | Replaces scattered legacy workflow notes with a unified, process‑driven description. |
| **EQCMD_PRM_01_Prompt_Library.md** | Provides a library of ready‑made prompts and conversation starters for each use case and a template for constructing new prompts. | Public Safe | Consolidates example prompts across the legacy package into a coherent library. |
| **EQCMD_OUT_01_Output_Templates.md** | Contains copy‑ready output templates for Quick Decision, Deep Research, Acquisition Filter, Asset Criticality, Downtime Economics, Failure Curve, Time‑to‑Cash, Exit Liquidity, Repair vs Replace, Capital Allocation, Final Decision, and optional Fleet Dashboard. | Public Safe | Ensures consistent, action‑oriented outputs across modes. |
| **EQCMD_QA_01_Test_Checklist.md** | Describes the QA scoring rubric, test cases, edge‑case checks, and guidelines for verifying package readiness. | Public Safe | Adopted from Step 9 of the rebuild plan to guarantee high confidence and safety. |

## Small-equipment merge status

Small Equipment Command has been absorbed into Equipment Command as a bounded small-equipment lane.  It is not a separate active runtime project or source family.  Small-equipment routing and safety limits are governed by the full instructions, compressed instructions and risk boundaries already listed above.

The following merge evidence is administrative and **Drive-only**.  Do not upload it as runtime knowledge, count it against runtime source limits, or treat it as execution authority:

| Administrative artifact | Handling | Runtime status |
|---|---|---|
| **EQCMD_Small_Equipment_Merge_Report.md** | Drive-only merge record. | Not a runtime source. |
| **EQCMD_Test_Lab_Handoff_Small_Equipment_Merge.md** | Drive-only QA handoff. | Not a runtime source. |
| **EQCMD_Small_Equipment_Merge_Package.zip** | Drive-only transfer package. | Not a runtime source. |

## Legacy mapping

This package supersedes the previous collection of files.  The following table maps legacy files to their new locations and notes whether they were merged or excluded.  For details, see the audit report.

| Legacy file | Mapped to | Status |
|---|---|---|
| PUBLIC_GPT_Main_Instructions_v1_9.txt | EQCMD_INST_01_Full_Instructions.md & EQCMD_OS_01_Operating_Manual.md | Consolidated |
| PUBLIC_GPT_System_Index_v1_3_CURRENT_FILES_ONLY.txt | EQCMD_OS_00_Source_Index_Authority_Map.md | Replaced |
| PUBLIC_GPT_Current_Upload_Package_v1.txt | EQCMD_OS_00_Source_Index_Authority_Map.md | Replaced |
| PUBLIC_GPT_Equipment_Mode_Router_v1_2_PUBLIC_SAFE.txt | EQCMD_OS_01_Operating_Manual.md | Integrated |
| PUBLIC_GPT_Acquisition_Filter_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md | Integrated |
| PUBLIC_GPT_Asset_Criticality_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md | Integrated |
| PUBLIC_GPT_Replace_vs_Repair_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md | Integrated |
| PUBLIC_GPT_Capital_Allocation_Engine_v1_3_AUTHORITY_LOCKED.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md | Integrated, Public‑safe sections only |
| PUBLIC_GPT_Capital_Equipment_Strategy_Manager_v1_5_AUTHORITY_LOCKED.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md & EQCMD_KB_03_Economic_Engines.md | Integrated |
| PUBLIC_GPT_Equipment_Decision_Engine_v1_3_AUTHORITY_LOCKED.txt | EQCMD_KB_01_Core_Equipment_Decision_Framework.md | Integrated |
| PUBLIC_GPT_Failure_Curve_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_03_Economic_Engines.md | Integrated |
| PUBLIC_GPT_Downtime_Economics_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_03_Economic_Engines.md | Integrated |
| PUBLIC_GPT_Time_to_Cash_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_03_Economic_Engines.md | Integrated |
| PUBLIC_GPT_Exit_Liquidity_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_03_Economic_Engines.md | Integrated |
| PUBLIC_GPT_Data_Intake_Attachment_and_Industry_Guide_v1_2_MERGED.txt | EQCMD_WF_01_Primary_Workflows.md & EQCMD_PRM_01_Prompt_Library.md | Integrated |
| PUBLIC_GPT_Example_Questions_and_Conversation_Starters_v1.txt | EQCMD_PRM_01_Prompt_Library.md | Integrated |
| PUBLIC_GPT_Live_Data_Connectors_Market_Updates_and_Document_Uploads_v1.txt | EQCMD_WF_01_Primary_Workflows.md & EQCMD_KB_02_Risk_Boundaries.md | Integrated |
| PUBLIC_GPT_Fleet_Strategy_Engine_v1_3_AUTHORITY_LOCKED.txt | EQCMD_KB_04_Fleet_Management_Extension.md | Optional integration |
| PUBLIC_GPT_Fleet_Performance_Dashboard_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_04_Fleet_Management_Extension.md | Optional integration |
| PUBLIC_GPT_Fleet_Feedback_Engine_v1_1_PUBLIC_SAFE.txt | EQCMD_KB_04_Fleet_Management_Extension.md | Optional integration |

## Excluded and archived files

Some legacy files and notes were excluded from the new package.  These include superseded instructions, deprecated engines, personal business logic, and internal notes.  Refer to the audit report for details on what was archived and why.  The repository retains these files in an archived directory for historical reference but they are not included in the active public package.
