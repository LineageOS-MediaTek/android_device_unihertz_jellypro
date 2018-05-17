LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# /system/vendor/lib64/libui_ext.so ( _ZN7android13GraphicBufferC1Ejjij )
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui

# ( _ZN7android14CameraMetadata14getTagFromNameEPKcPKNS_19VendorTagDescriptorEPj )
LOCAL_SRC_FILES += misc.cpp

LOCAL_MODULE := libshims
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


