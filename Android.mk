LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RE58C2)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
