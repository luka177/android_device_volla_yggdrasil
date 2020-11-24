#
#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := yggdrasil

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from yggdrasil device
$(call inherit-product, device/volla/yggdrasil/device.mk)

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := volla_yggdrasil
PRODUCT_DEVICE := Volla Phone
PRODUCT_BRAND := Hallo Welt System UG
PRODUCT_MODEL := Volla
PRODUCT_MANUFACTURER := Hallo Welt System UG

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Volla Phone" \
    PRODUCT_NAME="yggdrasil" \
    PRIVATE_BUILD_DESC="sunfish-user 11 RP1A.201105.002 6869500 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.201105.002/6869500:user/release-keys"
