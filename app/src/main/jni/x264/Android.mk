# This is the Android makefile for libyuv for both platform and NDK.
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := x264
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libx264.a
include $(PREBUILT_STATIC_LIBRARY)
#编译x264为预编译库