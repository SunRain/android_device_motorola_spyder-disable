USE_CAMERA_STUB := false

# inherit from the proprietary version
#-include vendor/motorola/spyder/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := false
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9

TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320
COMMON_GLOBAL_CFLAGS +=  -DMOTOROLA_UIDS  
COMMON_GLOBAL_CFLAGS +=  -DTARGET_OMAP4


TARGET_NO_BOOTLOADER := false
TARGET_NO_PREINSTALL := false
TARGET_NO_RADIOIMAGE := false
TARGET_BOOTLOADER_BOARD_NAME := spyder

# test for wifi calling
BOARD_USE_KINETO_COMPATIBILITY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE           := wl1283
BOARD_SOFTAP_DEVICE         := wl1283
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
#BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1283.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_wlan1283_AP.bin"
PRODUCT_WIRELESS_TOOLS      := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096
# I used a very small img size for system & userdata img to save my HDD space
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9437184
#0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PREBUILT_KERNEL := device/motorola/spyder/kernel

# Mass Storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_MASS_STORAGE_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Changes related to bootmenu
BOARD_USES_BOOTMENU := true
#BUILD_BOOTMENU_STANDALONE :=1
BOARD_CUSTOM_BOOTMENU_GRAPHICS := ../../../device/motorola/spyder/bootmenu/bm_graphics.c
BOARD_BOOTMENU_NO_OVERCLOCK :=true
BOARD_BOOTMODE_CONFIG_FILE := /cache/recovery/bootmode.conf


BOARD_HAS_LOCKED_BOOTLOADER := true
#TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/spyder/recovery-kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/spyder/bootmenu/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := false
#BOARD_ALWAYS_INSECURE := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_MKE2FS := device/motorola/spyder/releaseutils/mke2fs
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p20
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_SDEXT := false
BOARD_HAS_WEBTOP := true
BOARD_NEVER_UMOUNT_SYSTEM := true


# Override cyanogen squisher to customize our update zip package
TARGET_CUSTOM_RELEASETOOL := ./device/motorola/begonia/releasetools/squisher



# OMX
HARDWARE_OMX := true
#ifdef HARDWARE_OMX
#OMX_VENDOR := ti
#OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
#BOARD_OPENCORE_LIBRARIES := libOMX_Core
#BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
#endif

# OMAP
OMAP_ENHANCEMENT := false
#ifdef OMAP_ENHANCEMENT
#COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
#endif

# MOTOROLA
USE_MOTOROLA_CODE := true
ifdef USE_MOTOROLA_CODE
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_CODE
endif
USE_MOTOROLA_USERS := true
ifdef USE_MOTOROLA_USERS
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_USERS
endif


# Camera
USE_CAMERA_STUB := false
#BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true
#BOARD_USES_TI_CAMERA_HAL := true

# GPS wrapper
#BOARD_USES_GPSSHIM := true
#BOARD_GPS_LIBRARIES := libgps.so

# Audio
BOARD_USES_GENERIC_AUDIO := false
#BUILD_WITH_TI_AUDIO := 1
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true
#HAVE_2_3_DSP := 1

# Graphics
BOARD_EGL_CFG := device/motorola/spyder/egl.cfg
#BOARD_NO_RGBX_8888 := true
#BUILD_PV_VIDEO_ENCODERS := 1	

# Blue Tooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


