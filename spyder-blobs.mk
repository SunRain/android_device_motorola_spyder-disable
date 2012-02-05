# Copyright (C) 2010 The Android Open Source Project
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

# Prebuilt libraries that are needed to build open-source libraries
# media config xml file

# keyboard
PRODUCT_COPY_FILES += \
	device/motorola/spyder/keychars/omap-keypad.kcm.bin:system/usr/keychars/omap-keypad.kcm.bin \
	device/motorola/spyder/keylayout/omap-keypad.kl:system/usr/keylayout/omap-keypad.kl

#etc
PRODUCT_COPY_FILES += \
	device/motorola/spyder/recovery.fstab:system/etc/recovery.fstab \
	device/motorola/spyder/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
	device/motorola/spyder/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
	device/motorola/spyder/prebuilt/etc/busybox.fstab:system/etc/fstab 

#prebuilt binaries (for buggy versions)
PRODUCT_COPY_FILES += \
	device/motorola/spyder/prebuilt/bin/fixDelSystem.sh:system/bin/fixDelSystem.sh \
	device/motorola/spyder/prebuilt/bin/install2ndInit.sh:system/bin/install2ndInit.sh
#	device/motorola/spyder/prebuilt/bin/iptables:system/bin/iptables \


#ifdef CYANOGEN_RELEASE
#	PRODUCT_COPY_FILES += device/motorola/spyder/custom_backup_release.txt:system/etc/custom_backup_list.txt
#else
#	PRODUCT_COPY_FILES += device/motorola/spyder/custom_backup_list.txt:system/etc/custom_backup_list.txt
#endif

#app
#PRODUCT_COPY_FILES += \
#	device/motorola/spyder/prebuilt/app/basebandswitcherV4.0.apk:system/app/basebandswitcherV4.0.apk

# Google framework & market & sync
#PRODUCT_COPY_FILES += \
#	device/motorola/spyder/prebuilt/app/GoogleContactsSyncAdapter.apk:/system/app/GoogleContactsSyncAdapter.apk \
#	device/motorola/spyder/prebuilt/app/GoogleServicesFramework.apk:/system/app/GoogleServicesFramework.apk \
#	device/motorola/spyder/prebuilt/app/MarketUpdater.apk:/system/app/MarketUpdater.apk \
#	device/motorola/spyder/prebuilt/app/Vending.apk:/system/app/Vending.apk \
#	device/motorola/spyder/prebuilt/etc/permissions/com.google.android.maps.xml:/system/etc/permissions/com.google.android.maps.xml \
#	device/motorola/spyder/prebuilt/etc/permissions/features.xml:/system/etc/permissions/features.xml \
#	device/motorola/spyder/prebuilt/framework/com.google.android.maps.jar:/system/framework/com.google.android.maps.jar \
#	device/motorola/spyder/prebuilt/lib/libvoicesearch.so:/system/lib/libvoicesearch.so


