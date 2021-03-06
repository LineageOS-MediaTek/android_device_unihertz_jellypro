#
# Copyright (C) 2018 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := jellypro,Jelly-Pro

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen Density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio
    
# Power
PRODUCT_PACKAGES += \
    power.mt6737t

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/audio,system/vendor/etc)

# Bluetooth
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/bluetooth,system/etc/bluetooth)

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/mtk_omx_core.cfg:system/vendor/etc/mtk_omx_core.cfg

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/keylayout,system/usr/keylayout)

# Telephony
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/telephony,system/vendor/etc)

# Misc
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/misc,system/vendor/etc) \
    $(LOCAL_PATH)/configs/misc/clatd.conf:system/etc/clatd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radvd/radvd.conf:system/vendor/etc/radvd/radvd.conf

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/wide-dhcpv6,system/vendor/etc/wide-dhcpv6)

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/rootdir,root)

# Thermal
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/thermal,system/vendor/etc/.tp)

# Dalvik heap configurations
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Common stuff
$(call inherit-product, device/mediatek/common/common.mk)

# Vendor
$(call inherit-product, vendor/unihertz/jellypro/jellypro-vendor.mk)

