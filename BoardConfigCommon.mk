#
# Copyright (C) 2017 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

PLATFORM_PATH := device/motorola/sdm450-common

TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

BOARD_VENDOR := motorola

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_QCOM_HARDWARE := true
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_HAS_NO_SELECT_BUTTON := true

ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true
#TARGET_USES_64_BIT_BINDER := true

# Audio
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXT_HDMI := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
#QCOM_BT_USE_BTNV := true

# Boot Animtion
TARGET_BOOTANIMATION_HALF_RES := true

# Camera
USE_CAMERA_STUB := true
TARGET_USES_QTI_CAMERA_DEVICE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
WITH_LINEAGE_CHARGER := false

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
    ifneq ($(TARGET_BUILD_VARIANT),eng)
        ifeq ($(WITH_DEXPREOPT),)
            WITH_DEXPREOPT := true
            WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
        endif
    endif
endif

# FM
ifeq ($(filter beckham, $(TARGET_DEVICE)),true)
    BOARD_HAVE_QCOM_FM := true
    BOARD_HAS_QCA_FM_SOC := "cherokee"
endif

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# HIDL
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(PLATFORM_PATH)/compatibility_matrix.xml
TARGET_FS_CONFIG_GEN += \
    $(PLATFORM_PATH)/config.fs \
    $(PLATFORM_PATH)/mot_aids.fs

# Kernel
# * cmdline = console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 vmalloc=400M buildvariant=user
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1  msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_BASE := 0x80008000
#BOARD_KERNEL_LZ4C_DT := true
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH := arm

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage hardware
#TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(PLATFORM_PATH)/lineagehw|**/*.java

# Partitions
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 0x40000
BOARD_HAS_LARGE_FILESYSTEM := true
# BOARD_USES_RECOVERY_AS_BOOT := true
#TARGET_EXFAT_DRIVER := exfat
#TARGET_NO_RECOVERY := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# RIL
TARGET_RIL_VARIANT := caf
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
#CUSTOM_APNS_FILE := $(PLATFORM_PATH)/configs/sprint_apns.xml

# Root
#BOARD_ROOT_EXTRA_FOLDERS := persist

# Vendor Security Patch Level
VENDOR_SECURITY_PATCH := 2018-11-01

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy/vendor
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(PLATFORM_PATH)/sepolicy/private

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Wifi
#BOARD_HAS_QCOM_WLAN := true
#BOARD_HAS_QCOM_WLAN_SDK := true
#BOARD_WLAN_DEVICE := qcwcn
#TARGET_DISABLE_WCNSS_CONFIG_COPY := true
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_STA := "sta"
#WIFI_DRIVER_FW_PATH_AP  := "ap"
#WIFI_DRIVER_MODULE_PATH := "/vendor/lib/modules/wlan.ko"
#WIFI_DRIVER_MODULE_NAME := "wlan"
#PRODUCT_VENDOR_MOVE_ENABLED := true
#TARGET_HAS_LEGACY_POWER_STATS := true
#TARGET_RPM_SYSTEM_STAT := /d/rpm_stats

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
#WIFI_DRIVER_FW_PATH_AP := "ap"
#WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/vendor/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X


SELINUX_IGNORE_NEVERALLOWS := true
