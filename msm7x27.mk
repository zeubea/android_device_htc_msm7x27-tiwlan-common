#
# Copyright (C) 2011 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += device/htc/msm7x27-tiwlan-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# USB
PRODUCT_COPY_FILES += \
    device/htc/msm7x27-tiwlan-common/init.msm7x27.usb.rc:root/init.msm7x27.usb.rc

# Media
PRODUCT_COPY_FILES += \
    device/htc/msm7x27-tiwlan-common/libaudio/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/msm7x27-tiwlan-common/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/msm7x27-tiwlan-common/media_profiles.xml:system/etc/media_profiles.xml

# Common msm7x27 firmware
PRODUCT_COPY_FILES += \
    device/htc/msm7x27-tiwlan-common/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/msm7x27-tiwlan-common/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/msm7x27-tiwlan-common/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin

# CM Boot Animation
PRODUCT_COPY_FILES += \
   vendor/cm/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip 

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27 \
    audio.primary.msm7x27 \
    libaudioutils
# Video
PRODUCT_PACKAGES += \
    copybit.msm7x27 \
    gralloc.msm7x27 \
    hwcomposer.msm7x27 \
    libgenlock \
    liboverlay \
    libtilerenderer

# Camera
PRODUCT_PACKAGES += \
    LegacyCamera

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore

# Misc
PRODUCT_PACKAGES += \
    lights.msm7x27 \
    com.android.future.usb.accessory \
    Superuser

PRODUCT_PACKAGES += \
    librs_jni

PRODUCT_PACKAGES += \
    wpa_supplicant.conf


PRODUCT_PACKAGES += \
    icu.dat

PRODUCT_PACKAGES += \
    local_time.default

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# CM File Manager
PRODUCT_PACKAGES += \
    CMFileManager

### Add system daemons
PRODUCT_PACKAGES += \
    rild


# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

### Add dhcpcd.conf
PRODUCT_PACKAGES += \
    dhcpcd.conf

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.ril.enable.dtm=1 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsupa.category=5 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
    ro.ril.def.agps.mode=2 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=12 \
    ro.telephony.ril.v3=signalstrength

# Interfaces
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2,gprs,ppp0 \
    wifi.interface=tiwlan0 \
    wifi.supplicant_scan_interval=15

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \
    debug.sf.hw=1 \
    debug.sf.no_hw_vsync=1 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    debug.hwui.render_dirty_regions=false \
    debug.enabletr=false \
    debug.composition.type=gpu \
    com.qc.hardware=true \
    com.qc.hdmi_out=false

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=1

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage=0

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    settings.display.autobacklight=1 \
    settings.display.brightness=143 \
    persist.service.mount.playsnd=0 \
    ro.setupwizard.enterprise_mode=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    dalvik.vm.dexopt-flags=m=y \
    ro.config.sync=yes \
    persist.sys.usb.config=mass_storage,adb \
    dalvik.vm.dexopt-data-only=1

# Debug
PRODUCT_PROPERTY_OVERRIDES += \
ro.secure=0 


# We have enough storage space to hold precise GC data
#PRODUCT_TAGS += dalvik.gc.type-precise

### Artwork
PRODUCT_LOCALES += mdpi

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Include Adreno200 vendor blobs
# http://git.cryptomilk.org/projects/marvel/android_vendor_qcom_msm7x27.git/
$(call inherit-product-if-exists, vendor/qcom/msm7x27/qcom-vendor.mk)
