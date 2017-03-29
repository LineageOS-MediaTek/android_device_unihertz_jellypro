LOCAL_PATH := $(call my-dir)

# xlog symbols
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_xlog.cpp
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libmtkshim_log
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# audio symbols
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_audio.cpp
LOCAL_MODULE := libmtkshim_audio
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
