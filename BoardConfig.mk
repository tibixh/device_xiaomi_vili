#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# OTA assert
TARGET_OTA_ASSERT_DEVICE := vili

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm8350
TARGET_KERNEL_CONFIG += vendor/vili_QGKI.config

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel modules
BOOT_KERNEL_MODULES := \
    hwid.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partition
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Include proprietary files
include vendor/xiaomi/vili/BoardConfigVendor.mk
