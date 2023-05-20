#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from light device
$(call inherit-product, device/xiaomi/light/device.mk)

PRODUCT_DEVICE := light
PRODUCT_NAME := omni_light
PRODUCT_BRAND := Poco
PRODUCT_MODEL := Poco M4 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_light-eng 20.1.0 SP2A.220405.004 eng.runner.20220818.080218 test-keys"

BUILD_FINGERPRINT := Poco/twrp_light/light:20.1.0/SP2A.220405.004/runner08180746:eng/test-keys
