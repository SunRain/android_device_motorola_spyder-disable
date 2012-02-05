#
# This is the product configuration for a generic Motorola spyder(Razr xt910)
#
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/spyder/overlay

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml



$(call inherit-product, build/target/product/full_base.mk)
PRODUCT_PACKAGES +=  \
		librs_jni \
		Usb \
		su

#PRODUCT_PACKAGES += \
#		Torch 

PRODUCT_PACKAGES += \
		libCustomWifi \
		wlan_loader 

#PRODUCT_PACKAGES += \
#		librs_jni \
#		tiwlan.ini \
#		dspexec \
#		libbridge \
#		wlan_cu \
#		libtiOsLib \
#		wlan_loader \
#		libCustomWifi \
#		wpa_supplicant.conf \
#		dhcpcd.conf \
#		libVendor_ti_omx \
#		libLCML \
#		libOMX_Core \
#		iwmulticall \
#		hostap \
#		hostapd.conf \
#		libhostapdcli \
#		bootmenu \
#		Usb \
#		su
		#mot_boot_mode \
		#charge_only_mode \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set en_US as default locale
PRODUCT_LOCALES := en_US

PRODUCT_COPY_FILES += \
	device/motorola/spyder/vold.fstab:system/etc/vold.fstab



# copy all vendor (motorola) kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/spyder/lib/modules &&  \
	find vendor/motorola/spyder/lib/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# copy all others kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/motorola/spyder/modules && \
	find device/motorola/spyder/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')


# Prebuilt boot.img
LOCAL_KERNEL := device/motorola/spyder/kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

# Blobs
$(call inherit-product, device/motorola/spyder/spyder-blobs.mk)
$(call inherit-product, device/motorola/spyder/bootmenu/bootmenu.mk)


# Live wallpaper packages
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers 

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

$(call inherit-product, build/target/product/full_base.mk)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := generic_spyder
PRODUCT_DEVICE := XT910
