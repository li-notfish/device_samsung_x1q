# Inherit from the common tree
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/x1q/x1q-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/x1q

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml