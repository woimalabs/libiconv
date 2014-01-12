LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

TARGET_ARCH_ABI := armeabi-v7a
LOCAL_MODULE := iconv
LOCAL_CFLAGS := \
    -Wno-multichar \
    -D_ANDROID \
    -DLIBDIR="\"c\"" \
    -DBUILDING_LIBICONV \
    -DIN_LIBRARY

LOCAL_C_INCLUDES := \
    ../../../libiconv-1.14 \
    ../../../libiconv-1.14/include \
    ../../../libiconv-1.14/lib \
    ../../../libiconv-1.14/libcharset/include

LOCAL_SRC_FILES := \
    ../../../libiconv-1.14/lib/iconv.c \
    ../../../libiconv-1.14/lib/relocatable.c \
    ../../../libiconv-1.14/libcharset/lib/localcharset.c

include $(BUILD_SHARED_LIBRARY)

