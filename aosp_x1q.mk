#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/x1q/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_x1q
PRODUCT_DEVICE := x1q
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G9810

PRODUCT_SYSTEM_DEVICE := qssi
PRODUCT_SYSTEM_NAME := x1q

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Fingerprint
BUILD_FINGERPRINT := "samsung/x1qzcx/x1q:11/RP1A.200720.012/G9810ZCU3FVI4:user/release-keys"
PRIVATE_BUILD_DESC := "x1qzcx-user-12-SP1A.210812.016-G9810ZCU3FVI4-release-keys"
