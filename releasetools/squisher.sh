# This script is included in squisher
# It is the final build step (after OTA package)

# Delete unwanted apps
rm -f $REPACK/ota/system/app/RomManager.apk
#rm -f $REPACK/ota/system/app/FM.apk
#rm -f $REPACK/ota/system/xbin/irssi

# these scripts are not required
#rm $REPACK/ota/system/etc/init.d/03firstboot
#rm $REPACK/ota/system/etc/init.d/04modules

mkdir -p $REPACK/ota/system/etc/terminfo/x
#mkdir -p $REPACK/ota/system/etc/terminfo/x/xterm
cp $REPACK/ota/system/etc/terminfo/l/linux $REPACK/ota/system/etc/terminfo/x/xterm

# prebuilt boot, devtree, logo & updater-script
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/spyder/boot-222-179-2.smg $REPACK/ota/boot.img
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/spyder/devtree-222-179-2.smg $REPACK/ota/devtree.img
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/spyder/logo-moto.raw $REPACK/ota/logo.img
cp -f $ANDROID_BUILD_TOP/device/motorola/spyder/updater-script $REPACK/ota/META-INF/com/google/android/updater-script
#if [ -n "$CYANOGEN_RELEASE" ]; then
#  cat $ANDROID_BUILD_TOP/device/motorola/spyder/updater-script-rel >> $REPACK/ota/META-INF/com/google/android/updater-script
#fi
