LOCAL_PATH := $(call my-dir)
ifneq ($(filter nicklaus, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE = libstagefright_color_conversion
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SHARED_LIBRARIES_32 = libdpframework
LOCAL_SRC_FILES_32 = libstagefright_color_conversion_32.a
include $(BUILD_PREBUILT)
endif
