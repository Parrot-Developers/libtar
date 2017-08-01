LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libtar
LOCAL_DESCRIPTION := tar library
LOCAL_CATEGORY_PATH := libs

LOCAL_INSTALL_HEADERS := compat/tar.h:usr/include/tar.h

LOCAL_EXPORT_LDLIBS += \
	-ltar

LOCAL_AUTOTOOLS_CONFIGURE_ARGS := \
	--without-zlib

include $(BUILD_AUTOTOOLS)
