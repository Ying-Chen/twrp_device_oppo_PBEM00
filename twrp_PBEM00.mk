#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oppo/PBEM00/device.mk)

# Release name
PRODUCT_RELEASE_NAME := R17

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := PBEM00
PRODUCT_NAME := twrp_PBEM00
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PBEM00
PRODUCT_MANUFACTURER := oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=PBEM00
