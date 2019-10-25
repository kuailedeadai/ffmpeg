# This is the Android makefile for libyuv for both platform and NDK.
LOCAL_PATH:= $(call my-dir)
#单独编译所有的ffmpeg的源文件


#avcodec
include $(CLEAR_VARS)
LOCAL_MODULE := avcodec
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libavcodec.a
include $(PREBUILT_STATIC_LIBRARY)

#avdevice
include $(CLEAR_VARS)
LOCAL_MODULE := avdevice
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libavdevice.a
include $(PREBUILT_STATIC_LIBRARY)

#avfilter
include $(CLEAR_VARS)
LOCAL_MODULE := avfilter
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libavfilter.a
include $(PREBUILT_STATIC_LIBRARY)

#avformat
include $(CLEAR_VARS)
LOCAL_MODULE := avformat
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libavformat.a
include $(PREBUILT_STATIC_LIBRARY)


#avutil
include $(CLEAR_VARS)
LOCAL_MODULE := avutil
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libavutil.a
include $(PREBUILT_STATIC_LIBRARY)


#postproc
include $(CLEAR_VARS)
LOCAL_MODULE := postproc
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libpostproc.a
include $(PREBUILT_STATIC_LIBRARY)

#swresample
include $(CLEAR_VARS)
LOCAL_MODULE := swresample
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libswresample.a
include $(PREBUILT_STATIC_LIBRARY)

#swscale
include $(CLEAR_VARS)
LOCAL_MODULE := swscale
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libswscale.a
include $(PREBUILT_STATIC_LIBRARY)