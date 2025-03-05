#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/realme/RE58C2
# A/B

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    dtbo \
    vendor_dlkm \
    system \
    product \
    system_ext \
    vbmeta \
    vendor \
    vbmeta_system \
    odm \
    vbmeta_vendor \
    boot

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.ums9230 \
    bootctrl.ums9230.recovery \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl

 # Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true   

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

    # Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

