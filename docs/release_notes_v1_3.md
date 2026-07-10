# Release Notes v1.3

## Scope

This is a narrow Small Equipment Command merge-remediation release.  It does not rebuild the Equipment Command source stack or add a separate runtime source family.

## Files patched

- `EQCMD_OS_00_Source_Index_Authority_Map.md`
- `EQCMD_INST_01_Full_Instructions.md`
- `EQCMD_INST_02_Compressed_Instructions.md`
- `EQCMD_KB_02_Risk_Boundaries.md`

Repository documentation was also updated to identify the v1.3 package state.

## Runtime effect

- Small equipment is handled as a bounded lane inside Equipment Command.
- Non-invasive, shutdown-and-secured operator checks are permitted.
- Invasive repair, safety bypasses and hazardous procedures remain prohibited.
- Merge evidence remains Drive-only and does not consume runtime source slots.

## Retest scope

Confirm lane triggering, operator-level limits, stop conditions, technician redirects, repair-vs-replace routing and Drive-only artifact classification.  Do not reopen the full v1.2 public-safe retest unless a new blocker appears.
