#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom.ramdisk

# GooglePhotos
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml

# Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# arcore
TARGET_INCLUDE_STOCK_ARCORE := true

# AIcore
TARGET_INCLUDE_STOCK_AICORE := false

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Maintainer
PIXELAGE_MAINTAINER := Quince

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-pixelage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# AlertSlider
PRODUCT_PACKAGES += \
    SystemUIOverlay \
    AlertSliderOverlay

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

# Remove some prebuilt apps
PRODUCT_PACKAGES += \
    RemovePackages

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/hotdog/hotdog-vendor.mk)
