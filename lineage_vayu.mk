#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Axion Bringup!

AXION_CAMERA_REAR_INFO := 48,8,5,2

AXION_CAMERA_FRONT_INFO := 20

AXION_MAINTAINER := apicaht_chata

AXION_PROCESSOR := Snapdragon_860

BYPASS_CHARGE_SUPPORTED := false

# Default core groups
AXION_CPU_SMALL_CORES ?= 4,5,6,7
AXION_CPU_BIG_CORES ?= 0,1,2,3
AXION_CPU_BG ?= 0-2
AXION_CPU_FG ?= 0-5
AXION_CPU_LIMIT_BG ?= 0-1

# AxionOS scheduling properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.axion_cpu_big=$(AXION_CPU_BIG_CORES) \
    persist.sys.axion_cpu_small=$(AXION_CPU_SMALL_CORES) \
    persist.sys.axion_cpu_bg=$(AXION_CPU_BG) \
    persist.sys.axion_cpu_limit_bg=$(AXION_CPU_LIMIT_BG) \
    persist.sys.axion_cpu_fg=$(AXION_CPU_FG)


# Boot animation
TARGET_ARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NO_CAMERA := false


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    BuildDesc="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys" \
    BuildFingerprint=Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

