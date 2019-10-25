LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE := utils

LOCAL_SRC_FILES := LogUtils.cpp
include $(BUILD_STATIC_LIBRARY)