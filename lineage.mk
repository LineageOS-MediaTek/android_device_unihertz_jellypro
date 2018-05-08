# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := jellypro

PRODUCT_DEVICE := jellypro
PRODUCT_NAME := lineage_jellypro
PRODUCT_BRAND := unihertz
PRODUCT_MODEL := jellypro
PRODUCT_MANUFACTURER := jellypro

# Boot animation
TARGET_SCREEN_HEIGHT      := 432
TARGET_SCREEN_WIDTH       := 240

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
