# If sdcard0 is a /data/media emulated one
RECOVERY_SDCARD_ON_DATA := true

# Storage
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

# In case of wrong color this needs modification
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# Fixes Slanty Graphics
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Misc
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true

# TARGET_DISABLE_TRIPLE_BUFFERING can be used to disable triple buffering
# on per target basis. On crespo it is possible to do so in theory
# to save memory, however, there are currently some limitations in the
# OpenGL ES driver that in conjunction with disable triple-buffering
# would hurt performance significantly (see b/6016711)
TARGET_DISABLE_TRIPLE_BUFFERING := false

# On some device, TWRP backup folder name will show 0000000000 bcos cpuinfo has no serial number. Using this flag then it will use ro.product.model as the folder name instead of all 0000000000
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Filesystems
TW_INCLUDE_FUSE_EXFAT := true
TARGET_USERIMAGES_USE_F2FS:=true

# NTFS
TW_INCLUDE_NTFS_3G := true

# Encryption
TW_INCLUDE_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE :=  true

# For Round Smartwatch
# TW_ROUND_SCREEN := true

# Flipped screen
# BOARD_HAS_FLIPPED_SCREEN := true

# For Tablets
# RECOVERY_TOUCHSCREEN_SWAP_XY := true
# RECOVERY_TOUCHSCREEN_FLIP_Y := true

# CPU Temp
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# Brightness
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

TW_DEVICE_VERSION ?= $(shell date -u +"%Y%m%d_%H%M")-kfh
