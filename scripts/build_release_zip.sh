#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

full_zip="releases/EQCMD_full_active_source_package_v1_2_2026-07-06.zip"
patch_zip="releases/EQCMD_minor_patch_v1_2_files.zip"

rm -f "$full_zip" "$patch_zip"

full_files=(
  "sources/01_authority/EQCMD_OS_00_Source_Index_Authority_Map.md"
  "sources/02_charter/EQCMD_CHR_01_Project_Charter.md"
  "sources/03_instructions/EQCMD_INST_01_Full_Instructions.md"
  "sources/03_instructions/EQCMD_INST_02_Compressed_Instructions.md"
  "sources/04_operating_manual/EQCMD_OS_01_Operating_Manual.md"
  "sources/05_knowledge_base/EQCMD_KB_01_Core_Equipment_Decision_Framework.md"
  "sources/05_knowledge_base/EQCMD_KB_02_Risk_Boundaries.md"
  "sources/05_knowledge_base/EQCMD_KB_03_Economic_Engines.md"
  "sources/05_knowledge_base/EQCMD_KB_04_Fleet_Management_Extension.md"
  "sources/06_workflows/EQCMD_WF_01_Primary_Workflows.md"
  "sources/07_prompts/EQCMD_PRM_01_Prompt_Library.md"
  "sources/08_outputs/EQCMD_OUT_01_Output_Templates.md"
  "sources/09_qa/EQCMD_QA_01_Test_Checklist.md"
)

patch_files=(
  "sources/08_outputs/EQCMD_OUT_01_Output_Templates.md"
  "sources/06_workflows/EQCMD_WF_01_Primary_Workflows.md"
  "sources/07_prompts/EQCMD_PRM_01_Prompt_Library.md"
  "sources/03_instructions/EQCMD_INST_01_Full_Instructions.md"
  "sources/03_instructions/EQCMD_INST_02_Compressed_Instructions.md"
)

zip -q "$full_zip" "${full_files[@]}"
zip -q "$patch_zip" "${patch_files[@]}"

echo "Built $full_zip"
echo "Built $patch_zip"

