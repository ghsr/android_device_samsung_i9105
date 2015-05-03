#
# Copyright 2013 The Android Open Source Project
# Copyright 2015 The CyanogenMod Project
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

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/samsung/i9105/full_i9105.mk)

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    PhotoTable \
    CellBroadcastReceiver \
    SoundRecorder \
    Launcher3 \
    Mms \
    Stk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.build.selinux=1

# Set parameters
PRODUCT_DEVICE := i9105
PRODUCT_NAME := aosp_i9105
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9105

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=s2vexx \
    TARGET_DEVICE=s2ve \
    BUILD_FINGERPRINT="samsung/s2vexx/s2ve:4.2.2/JDQ39/I9105XXUBND1:user/release-keys" \
    PRIVATE_BUILD_DESC="s2vexx-user 4.2.2 JDQ39 I9105XXUBND1 release-keys"
