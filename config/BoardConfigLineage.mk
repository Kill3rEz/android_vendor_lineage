# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
# PenguinOS: adapted from the Axion/LineageOS BoardConfigLineage.mk (dropped the
# Axion-specific BoardConfigAxion include). Included from build/make/core/config.mk
# so kernel/oneplus/sm8750 builds in-tree via vendor/lineage/build/tasks/kernel.mk,
# exactly like the Axion reference tree (which boots).

# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE ?= true

include vendor/lineage/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

include vendor/lineage/config/BoardConfigSoong.mk
