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
DEVICE_PATH := device/unihertz/jellypro

# TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := mt6737t
TARGET_BOOTLOADER_BOARD_NAME := mt6735
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true

# Display
TARGET_SCREEN_HEIGHT := 432
TARGET_SCREEN_WIDTH := 240

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1480056755
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel.gz
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3925868544
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
# BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USES_MKE2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.mt6735

# System Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Dexpreopt
# WITH_DEXPREOPT := true
# WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Graphics
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true

# SELinux
# BOARD_SEPOLICY_DIRS := $(COMMON_PATH)/sepolicy

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
