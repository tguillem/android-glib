LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	gdir.c \
	gerror.c \
	giochannel.c \
	gkeyfile.c \
	gmain.c \
	gmem.c \
	goption.c \
	gslice.c \
	gslist.c \
	gstring.c \
	gstrfuncs.c \
	gtimer.c \
	giounix.c \
	gmessages.c \
	gutf8.c \
	gfileutils.c \
	gconvert.c \
	gdataset.c \
	gtestutils.c \
	ghash.c \
	glist.c \
	gthread.c \
	garray.c \
	gutils.c \
	gatomic.c \
	gprintf.c \
	gpattern.c \
	guniprop.c \
	gpoll.c \
	grand.c \
	gunidecomp.c \
	gqsort.c \
	gstdio.c \
	gqueue.c \
	gmarkup.c \
	gtree.c \
	gurifuncs.c \
	gunicollate.c \
	galiasdef.c \
	libcharset/localcharset.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/../ \
	$(ICONV_PATH) \
	$(ICONV_PATH)/include

LOCAL_CFLAGS:= \
	-DLIBICONV_PLUG \
	-DANDROID_STUB \
	-DLIBDIR="\"/system/lib/\""

LOCAL_SHARED_LIBRARIES := iconv

LOCAL_MODULE:= libglib

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_ARM_NEON:= true
endif

include $(BUILD_SHARED_LIBRARY)
