# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
-include vendor/motorola/sunfire/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sunfire
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true

#BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/sunfire/recovery/graphics.c
#BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/sunfire/recovery/recovery_ui.c
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_INTERNAL_PARTITIONS := true

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_HAS_NO_MISC_PARTITION := true
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8355840
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 167772160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_JANKY_BACKBUFFER := true
TARGET_PREBUILT_KERNEL := device/motorola/sunfire/kernel
#BOARD_MKE2FS := device/motorola/sunfire/utilities/mke2fs
TARGET_USERIMAGES_USE_EXT4 := true
# Below is a sample of how you can tweak the mount points using the board config.
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_DATA_DEVICE := /dev/block/mmcblk0p16
BOARD_DATA_FILESYSTEM := ext3
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,data=ordered
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,data=ordered
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext3
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,data=ordered
BOARD_HIJACK_RECOVERY_PATH := /preinstall/
BOARD_HAS_PREINSTALL := true
TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false
BOARD_HAS_WEBTOP := true

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p18
BOARD_VOLD_MAX_PARTITIONS := 18
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun1/file
BOARD_HIJACK_BOOT_PATH := /preinstall/
BOARD_HIJACK_EXECUTABLES := logwrapper
BOARD_HIJACK_LOG_ENABLE := false
BOARD_USES_MMCUTILS := true
BOARD_HIJACK_UPDATE_BINARY := /preinstall/update-binary
BOARD_HIJACK_BOOT_UPDATE_ZIP := /preinstall/update-boot.zip
BOARD_HIJACK_RECOVERY_UPDATE_ZIP := /preinstall/update-recovery.zip
BOARD_PREINSTALL_DEVICE := /dev/block/mmcblk0p17
BOARD_PREINSTALL_FILESYSTEM := ext3
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_USES_HW_MEDIARECORDER := true
BOARD_USES_HW_MEDIASCANNER := false
BOARD_USES_HW_MEDIAPLUGINS := true

TARGET_USES_GL_VENDOR_EXTENSIONS := true
TARGET_ELECTRONBEAM_FRAMES := 20

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wl/sdio-ag-cdc-full11n-minioctl-roml-pno-wme-aoe-pktfilter-keepalive.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wl/sdio-g-cdc-roml-reclaim-wme-apsta-idauth-minioctl.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wl/sdio-ag-cdc-full11n-minioctl-roml-pno-wme-aoe-pktfilter-keepalive.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

#Fix _sync functions for RIL
TARGET_MOTO_SYNC_FUNCTIONS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#Camera
TARGET_USE_MOTO_CUSTOM_CAMERA_PARAMETERS := true
TARGET_SPECIFIC_HEADER_PATH := device/motorola/sunfire/include

#EGL
BOARD_EGL_CFG := device/motorola/sunfire/config/egl.cfg

#USB Tethering
BOARD_CUSTOM_USB_CONTROLLER := ../../device/motorola/sunfire/UsbController.cpp
BOARD_HAS_LARGE_FILESYSTEM := true

# Dock Audio
BOARD_USE_MOTO_DOCK_HACK := true

# twrp settings:
TARGET_RECOVERY_INITRC := device/motorola/sunfire/init.recovery.rc
#DEVICE_RESOLUTION := 480x800
#DEVICE_RESOLUTION := 480x854
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
SP1_NAME := "pds"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
SP2_NAME := "osh"
SP2_DISPLAY_NAME := "Webtop"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
#SP3_NAME := "preinstall"
#SP3_BACKUP_METHOD := image
#SP3_MOUNTABLE := 0
#RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_REAL_SDCARD := true
#TW_INCLUDE_DUMLOCK := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_NO_BATT_PERCENT := true
TW_CUSTOM_POWER_BUTTON := 107
TW_NO_REBOOT_BOOTLOADER := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_FLASH_FROM_STORAGE := true