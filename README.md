# vendor/lineage (PenguinOS dodge subset)

Minimal subset of LineageOS `vendor/lineage` needed to build the OnePlus 13 (dodge)
kernel **in-tree** on the AOSPA/PenguinOS tree, the same way LineageOS/Axion do:

- `build/tasks/kernel.mk` — LineageOS kernel build (picked up by build/make Makefile's
  `vendor/*/build/tasks/*.mk` wildcard). Pristine LineageOS.
- `build/tools/merge_dtbs.py` — QCOM DTB/DTBO merge script (Axion version, correct
  overlay ordering via symbol/fixup dependencies).
- `config/BoardConfigLineage.mk`, `BoardConfigKernel.mk`, `BoardConfigSoong.mk` — trimmed for
  AOSPA (only the kernel exports + lineage soong vars plugin), included by the Kill3rEz
  android_build fork's core/config.mk.
- `build/soong/*`, `build/core/utils.mk`, `tools/clean_headers.sh` — kernel header generators
  (`generated_kernel_header_defaults`, `generated_kernel_includes`) used by the SM8750 HALs.

Provenance: LineageOS lineage-23.2 via AxionAOSP, adapted for PenguinOS (A17, AOSPA calcite).
