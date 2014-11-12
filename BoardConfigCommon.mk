#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Declare local path
# TODO: Replace all "device/lge/g2-common" with $(LOCAL_PATH) but it's not yet working (?)
LOCAL_PATH := device/lge/g2-common

# Platform
TARGET_BOARD_PLATFORM := msm8974
BOARD_HARDWARE_CLASS := device/lge/g2-common/cmhw/
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_USES_QC_TIME_SERVICES := true

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := galbi
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g2 user_debug=31 msm_rtb.filter=0x0 mdss_mdp.panel=1:dsi:0:qcom,mdss_dsi_g2_lgd_cmd androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x05000000 --tags_offset 0x04800000
BOARD_CUSTOM_BOOTIMG_MK := device/lge/g2-common/releasetools/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/lge/msm8974

# Display
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# EGL
BOARD_EGL_CFG := device/lge/g2-common/configs/egl.cfg
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio 
BOARD_USES_ALSA_AUDIO:= true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/g2-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/g2-common/bluetooth/vnd_g2.txt

# Wi-Fi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# GPS
TARGET_NO_RPC := true
TARGET_PROVIDES_GPS_LOC_API := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Recovery and partitions
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB = device/lge/g2-common/fstab.g2
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
ENABLE_LOKI_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# SELinux
BOARD_SEPOLICY_DIRS += \
        device/lge/g2-common/sepolicy

BOARD_SEPOLICY_UNION += \
        app.te \
        bluetooth_loader.te \
        bridge.te \
        camera.te \
        device.te \
        file.te \
        hostapd.te \
        mediaserver.te \
        mpdecision.te \
        netmgrd.te \
        platform_app.te \
        qmux.te \
        rild.te \
        rmt.te \
        sensors.te \
        ssr.te \
        surfaceflinger.te \
        system_server.te \
        tee.te \
        thermald.te \
        time.te \
        ueventd.te \
        vss.te \
        wpa.te \
        file_contexts \
        genfs_contexts \
        te_macros

# Radio
BOARD_RIL_CLASS := ../../../device/lge/g2-common/ril/

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/g2-common/releasetools

# Charging
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Logging
TARGET_USES_LOGD := false

# Headers
TARGET_SPECIFIC_HEADER_PATH := device/lge/g2-common/include

# Use legacy mmap until we get new blobs
BOARD_USES_LEGACY_MMAP := true
