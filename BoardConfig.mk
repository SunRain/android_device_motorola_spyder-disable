USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/motorola/spyder/BoardConfigVendor.mk

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


TARGET_BOOTLOADER_BOARD_NAME := spyder


BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
# I used a very small img size for system & userdata img to save my HD space
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9437184
#0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/motorola/spyder/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true


BUILD_BOOTMENU_STANDALONE := true
BOARD_HAS_LOCKED_BOOTLOADER := true
#TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/spyder/recovery-kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/spyder/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_MKE2FS := device/motorola/spyder/releaseutils/mke2fs
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p20
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_SDEXT := false
BOARD_HAS_WEBTOP := true






