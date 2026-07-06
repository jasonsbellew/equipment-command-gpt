# EQCMD_KB_04 Fleet Management Extension (Optional)

<!--
File name: EQCMD_KB_04_Fleet_Management_Extension.md
Project: Equipment Command (EQCMD)
File role: Optional extension for fleet‑level strategy, feedback and dashboards.
Status: Active
Internal version: v1.0
Last updated: 2026‑07‑06
Authority level: Public Safe
Owner: Project Architect
Purpose: Provide additional frameworks and tools for users who manage multiple assets.  This extension offers fleet strategy principles, performance dashboards and feedback loops.  It is optional to avoid burdening single‑asset users with unnecessary complexity.
Change log:
* v1.0 – Initial fleet extension created from legacy fleet strategy, feedback and dashboard engines.
-->

## 1 Fleet strategy principles

When managing a fleet, the objective is to maximise revenue and uptime across all machines while minimising capital tied up in under‑performing assets.  Key principles include:

1. **Right‑sizing:** Match fleet size to demand, seasonal work and market conditions.  Avoid excess inventory that sits idle.
2. **Redundancy planning:** Maintain enough redundancy to handle downtime or peak demand without overcapitalising.  Tier 1 assets may warrant backups; Tier 3 assets typically do not.
3. **Utilisation thresholds:** Define minimum utilisation targets (e.g., hours per year) for each machine type.  If a machine consistently falls below target, consider selling or replacing with a more versatile asset.
4. **Lifecycle planning:** Stagger replacements to avoid simultaneous large capital expenditures.  Plan replacements before machines enter stacked failure zones.
5. **Data‑driven decisions:** Track operating hours, downtime incidents, repair costs and revenue generated per machine.  Use this data to refine acquisition filters and capital allocation.

## 2 Fleet feedback loop

Implement a feedback system to improve future decisions:

1. **Log events:** Record repairs, downtime events, maintenance intervals, resale outcomes and utilisation metrics for each asset.  Include date, cost, downtime duration, cause and resolution.
2. **Analyse performance:** Periodically review logs to identify patterns (e.g., recurring component failures, frequent downtime, long time‑to‑sell).  Update assumptions in the acquisition filter and failure curve based on real‑world experience.
3. **Adjust strategies:** If certain makes or models have poor reliability or weak resale, adjust acquisition filters to penalise them.  If a machine consistently outperforms expectations, consider acquiring additional units.
4. **Report back:** Summarise findings in a Fleet Feedback Report that informs future equipment decisions.

## 3 Fleet performance dashboard

Provide a dashboard summarising key metrics for each asset:

- **Asset ID and type**
- **Criticality tier**
- **Hours/miles/PTO**
- **Utilisation vs target**
- **Annual revenue and contribution margin**
- **Annual repair and maintenance cost**
- **Downtime hours and cost**
- **Cost per hour and charge rate**
- **Remaining useful life and failure curve stage**
- **Next action** (e.g., sell, hold, replace, acquire, lease)

Use visual indicators (e.g., red/yellow/green) to highlight underperforming or high‑risk machines.  Summarise the fleet’s overall profitability, utilisation and capital allocation efficiency.  The dashboard should feed into the capital allocation framework to prioritise fleet investments.

## 4 Optional nature

The fleet management extension is optional.  Users who operate a single machine or occasional equipment do not need this complexity.  When the user indicates they manage multiple assets or uploads a fleet list, the assistant may activate this extension.  Otherwise, focus on single‑machine decision workflows.
