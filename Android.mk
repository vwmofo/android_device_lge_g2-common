ifneq ($(filter g2 d800 d801 d802 d803 l01f ls980 vs980,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
