#
# Copyright (C) 2020-2022 The CipherOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/realme/RMX3242

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit Vendor Blobs
$(call inherit-product, vendor/realme/RMX3242/RMX3242-vendor.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# The first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 30

# Extra VNDK Versions
PRODUCT_EXTRA_VNDK_VERSIONS := 31

# Init
PRODUCT_PACKAGES += \
    init.recovery.mt6833.rc \
    init.mt6833.rc \
    fstab.mt6833

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.RMX3242

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6833:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6833

# System prop
-include $(DEVICE_PATH)/system_prop.mk

# Permissions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml

# Wi-Fi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay

# HIDL
PRODUCT_PACKAGES += \
    libhardware
