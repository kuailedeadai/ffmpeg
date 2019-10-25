LOCAL_PATH := $(call my-dir)
ROOT_PATH := $(LOCAL_PATH)
include $(CLEAR_VARS)

LOCAL_MODULE := video
#add src header
LOCAL_LDLIBS := -llog -lz -landroid
LOCAL_STATIC_LIBRARIES := libyuv utils x264 avcodec avdevice avfilter avformat avutil postproc swresample swscale
include $(BUILD_SHARED_LIBRARY)



#third_part
include $(ROOT_PATH)/libyuv/Android.mk
include $(ROOT_PATH)/common/Android.mk
include $(ROOT_PATH)/x264/Android.mk
include $(ROOT_PATH)/ffmpeg/Android.mk