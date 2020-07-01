#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/perry/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_perry
PRODUCT_DEVICE := perry
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e4
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="perry-user 7.1.1 NPNS26.118-22-1 1 release-keys" \
    PRODUCT_MODEL="Moto E4" \
    PRODUCT_NAME="perry"

BUILD_FINGERPRINT := motorola/perry/perry:7.1.1/NPNS26.118-22-1/1:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
