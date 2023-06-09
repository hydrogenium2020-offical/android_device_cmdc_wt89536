#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wt89536 device
$(call inherit-product, device/cmdc/wt89536/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wt89536
PRODUCT_NAME := lineage_wt89536
PRODUCT_BRAND := CMCC
PRODUCT_MODEL := CMCC N2
PRODUCT_MANUFACTURER := CMDC
TARGET_VENDOR := CMDC
BOARD_VENDOR := CMDC

PRODUCT_GMS_CLIENTID_BASE := android-cmdc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="wt89536-user 7.0 NRD90M V9.6.1.0.NCFMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "cmdc/wt89536/wt89536:7.0/NRD90M/V9.6.1.0.NCFMIFD:user/release-keys"
