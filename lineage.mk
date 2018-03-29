$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := nicklaus

PRODUCT_DEVICE := nicklaus
PRODUCT_NAME := lineage_nicklaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := nicklaus
PRODUCT_MANUFACTURER := nicklaus
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1280
TARGET_SCREEN_WIDTH       := 720
TARGET_BOOTANIMATION_NAME := 720

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
