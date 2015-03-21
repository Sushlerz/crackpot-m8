#
# Copyright (C) 2013 The Android Open-Source Project
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
-include vendor/htc/m8/BoardConfigVendor.mk
TARGET_COPY_OUT_VENDOR := vendor


#CPU arch
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
BOARD_VENDOR := htc
TARGET_BOOTLOADER_BOARD_NAME := msm8974
TARGET_NOBOOTLOADER := TRUE

#SELINUX


TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 zcache androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive  
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000


MAX_EGL_CACHE_KEY_SIZE := 12*1024

MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_USES_ALSA_AUDIO := true

#misc
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
# BOARD_AUDIO_AMPLIFIER := device/htc/m8/libaudioamp
OVERRIDE_RS_DRIVER := libRSDriver_adreno.sos
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
TARGET_USES_WCNSS_CTRL := true
BOARD_HAS_QCOM_WLAN := true
TARGET_BOARD_PLATFORM := msm8974


# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

BOARD_USES_SECURE_SERVICES := false

TARGET_NO_RADIOIAMGE := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOOTLOADER_BOARD_NAME := m8
TARGET_BOARD_INFO_FILE := device/htc/m8/board-info.txt
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default


BOARD_EGL_CFG := device/htc/m8/egl.cfg

USE_OPENGL_RENDERER := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13153337344
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_F2FS := true

TARGET_RECOVERY_FSTAB := device/htc/m8/rootdir/etc/fstab.qcom

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/m8
# enable use minikin text layout engine
USE_MINIKIN := true

# Font
EXTENDED_FONT_FOOTPRINT := true

BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/m8/bluetooth

USE_DEVICE_SPECIFIC_CAMERA := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true








