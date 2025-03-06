DEVICE_PATH := device/realme/RE58C2

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:system/etc/twrp.flags
    
#sepolicy    
    BOARD_SEPOLICY_PREBUILT := device/realme/RE58C2/sepolicy/precompiled/precompiled_sepolicy

# API
PRODUCT_SHIPPING_API_LEVEL := 32
BOARD_SYSTEMSDK_VERSIONS := 32
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    product \
    vendor \
    odm \
    odm_dlkm \
    vbmeta \
    vendor_boot \
    vendor_dlkm \
    vbmeta_system \
    vbmeta_vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Brightness
TW_MAX_BRIGHTNESS := 4095
TW_DEFAULT_BRIGHTNESS := 3095
