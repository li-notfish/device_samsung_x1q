# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from x1s device
$(call inherit-product, device/samsung/x1q/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Kscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := kscope_x1q
PRODUCT_DEVICE := x1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9810
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G9810
PRODUCT_PDA_MODEL_VERSION := ZHS3FVJ1
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_SYSTEM_NAME := x1qzhx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=x1qzhx \
    PRODUCT_DEVICE=x1q \
    PRIVATE_BUILD_DESC="x1qzhx-user 12 SP1A.210812.016 G9810ZHS3FVJ1 release-keys"

BUILD_FINGERPRINT := samsung/x1qzhx/x1q:11/RP1A.200720.012/G9810ZHS3FVJ1:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=G9810ZHS3FVJ1
