#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Rising OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Project-Blaze Build Type & Maintainer stuff.
RISING_OFFICIAL := UNOFFICIAL
RISING_MAINTAINER := JAYMISTRY258

# SOC
PROCESSOR_MODEL := SM6150

# Gapps Build Details.
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_CORE_GMS_EXTRAS := true
TARGET_INCLUDE_NGA := true

# Custom stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_INCLUDE_PIXEL_CHARGER := false
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build Fingerprint.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="raven-user 13 TP1A.221005.002/9012097 release-keys"
#
#BUILD_FINGERPRINT := google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X2
PRODUCT_MANUFACTURER := Xiaomi
