#!/usr/bin/env bash
set -euo pipefail

missing=0

required_files=(
  "README.md"
  "LICENSE"
  "CHANGELOG.md"
  "BLOCKERS.md"
  "docs/upload_order.md"
  "docs/test_lab_handoff_prompt.md"
  "docs/public_safe_notes.md"
  "docs/release_notes_v1_2.md"
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
  "releases/EQCMD_full_active_source_package_v1_2_2026-07-06.zip"
  "releases/EQCMD_minor_patch_v1_2_files.zip"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing: $file"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "Verification failed."
  exit 1
fi

echo "Verification passed. All expected active source files and release ZIPs exist."

