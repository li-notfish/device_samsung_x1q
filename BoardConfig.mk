#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Inherit from the common tree
include device/samsung/sm8250-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/x1q/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/x1q

BOARD_VNDK_VERSION := current

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

TARGET_OTA_ASSERT_DEVICE := x1q

## Display
TARGET_SCREEN_DENSITY := 420

## Kernel
TARGET_KERNEL_CONFIG := vendor/x1q_chn_openx_defconfig

# Partitions
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 10288627712
BOARD_SUPER_PARTITION_SIZE := 10292822016

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Keystore
TARGET_KEYMASTER_VARIANT := samsung

