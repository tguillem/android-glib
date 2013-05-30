LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	gthread-impl.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../glib \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)

LOCAL_CFLAGS:= \
	-DANDROID_STUB

LOCAL_SHARED_LIBRARIES := glib

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_ARM_NEON:= true
endif

LOCAL_MODULE := gthread

include $(BUILD_SHARED_LIBRARY)
