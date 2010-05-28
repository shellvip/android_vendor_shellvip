#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is the config file for an actual configuration on HTC hero

$(call inherit-product, vendor/aosp/products/aosp_eu.mk)

# Manually set the policy and PRODUCT_PACKAGES so we can tweak them 
# depending on whether or not we build with Google. There is no way
# to override PRODUCT_PACKAGES from an inheriting product yet.

# build/target/product.core.mk
PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES = \
    framework-res \
    Browser \
    Contacts \
    Launcher \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller 

# end core.mk

# build/target/product/generic.mk
PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DeskClock \
    DrmProvider \
    Email \
    Gallery \
    GlobalSearch \
    Mms \
    Music \
    Settings \
    SoundRecorder \
    CalendarProvider \
    VoiceDialer
# end generic.mk

PRODUCT_PACKAGES += \
    Superuser \
    Stk \
    Development \
    Gallery3D \
    LiveWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    LiveWallpapersPicker \
    libRS \
    librs_jni

PRODUCT_COPY_FILES += \
  vendor/community/prebuilt/bin/compcache:system/bin/compcache \
  vendor/community/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
  vendor/community/prebuilt/bin/shutdown:system/bin/shutdown \
  vendor/community/prebuilt/bin/usb-tether:system/bin/usb-tether \
  vendor/community/prebuilt/xbin/apps2sd:system/xbin/apps2sd \
  vendor/community/prebuilt/etc/dnsmasq.conf:system/etc/dnsmasq.conf \
	vendor/community/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
	vendor/community/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
	vendor/community/prebuilt/etc/fstab:system/etc/fstab \
	vendor/community/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
	vendor/community/prebuilt/etc/init.d/01settings:system/etc/init.d/01settings \
	vendor/community/prebuilt/etc/init.d/10sysctl:system/etc/init.d/10sysctl \
	vendor/community/prebuilt/etc/init.d/20firstboot:system/etc/init.d/20firstboot \
	vendor/community/prebuilt/etc/init.d/30apps2sd:system/etc/init.d/30apps2sd \
	vendor/community/prebuilt/etc/init.d/40userinit:system/etc/init.d/40userinit \
	vendor/community/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
	vendor/community/prebuilt/etc/permissions/extra_permissions.xml:system/etc/permissions/extra_permissions.xml \
	vendor/community/prebuilt/etc/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	vendor/community/prebuilt/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	vendor/community/prebuilt/etc/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	vendor/community/prebuilt/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

ifdef WITH_HTC_KEYBOARD
    PRODUCT_COPY_FILES += \
        vendor/community/proprietary/htc/HTC_IME.apk:system/app/HTC_IME.apk \
        vendor/community/proprietary/htc/libt9.so:system/lib/libt9.so
endif

ifdef WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/community/proprietary/google/EnhancedGoogleSearchProvider.apk:system/app/EnhancedGoogleSearchProvider.apk \
        vendor/community/proprietary/google/Facebook.apk:system/app/Facebook.apk \
        vendor/community/proprietary/google/GenieWidget.apk:system/app/GenieWidget.apk \
        vendor/community/proprietary/google/Gmail.apk:system/app/Gmail.apk \
        vendor/community/proprietary/google/GmailProvider.apk:system/app/GmailProvider.apk \
        vendor/community/proprietary/google/GoogleApps.apk:system/app/GoogleApps.apk \
        vendor/community/proprietary/google/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/community/proprietary/google/GoogleCheckin.apk:system/app/GoogleCheckin.apk \
        vendor/community/proprietary/google/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/community/proprietary/google/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/community/proprietary/google/GoogleSettingsProvider.apk:system/app/GoogleSettingsProvider.apk \
        vendor/community/proprietary/google/GoogleSubscribedFeedsProvider.apk:system/app/GoogleSubscribedFeedsProvider.apk \
        vendor/community/proprietary/google/gtalkservice.apk:system/app/gtalkservice.apk \
        vendor/community/proprietary/google/Maps.apk:system/app/Maps.apk \
        vendor/community/proprietary/google/MarketUpdater.apk:system/app/MarketUpdater.apk \
        vendor/community/proprietary/google/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/community/proprietary/google/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/community/proprietary/google/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/community/proprietary/google/Street.apk:system/app/Street.apk \
        vendor/community/proprietary/google/Talk.apk:system/app/Talk.apk \
        vendor/community/proprietary/google/TalkProvider.apk:system/app/TalkProvider.apk \
        vendor/community/proprietary/google/Vending.apk:system/app/Vending.apk \
        vendor/community/proprietary/google/VoiceSearchWithKeyboard.apk:system/app/VoiceSearchWithKeyboard.apk \
        vendor/community/proprietary/google/YouTube.apk:system/app/YouTube.apk \
        vendor/community/proprietary/google/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml \
        vendor/community/proprietary/google/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml \
        vendor/community/proprietary/google/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/community/proprietary/google/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar \
        vendor/community/proprietary/google/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/community/proprietary/google/libgtalk_jni.so:system/lib/libgtalk_jni.so \
        vendor/community/proprietary/google/libspeech.so:system/lib/libspeech.so
else    
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif


# Include en_US by default.
PRODUCT_LOCALES := \
	en_US

ifeq ($(INCLUDE_ALL_LOCALES),true)

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES += \
	en_AU \
	en_CA \
	en_GB \
	en_IE \
	en_IN \
	en_NZ \
	en_SG \
	en_ZA \
	es_ES \
	es_US \
	ar_EG \
	ar_IL \
	bg_BG \
	ca_ES \
	cs_CZ \
	da_DK \
	de_AT \
	de_CH \
	de_DE \
	de_LI \
	el_GR \
	fi_FI \
	fr_BE \
	fr_CA \
	fr_CH \
	fr_FR \
	he_IL \
	hi_IN \
	hr_HR \
	hu_HU \
	id_ID \
	it_CH \
	it_IT \
	iw_IL \
	ja_JP \
	ko_KR \
	lt_LT \
	lv_LV \
	nb_NO \
	nl_BE \
	nl_NL \
	pl_PL \
	pt_BR \
	pt_PT \
	ro_RO \
	ru_RU \
	sk_SK \
	sl_SI \
	sr_RS \
	sv_SE \
	th_TH \
	tl_PH \
	tr_TR \
	uk_UA \
	vi_VN \
	zh_CN \
	zh_TW

endif # INCLUDE_ALL_LOCALES
# Force dex optimization (this may not work if you are on a Mac)
WITH_DEXPREOPT := true
DISABLE_DEXPREOPT := false
WITH_DEXPREOPT_buildbot := true

# Build WebKit with V8
JS_ENGINE := v8

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

ifeq ($(INCLUDE_TTS_LANGS),true)

# TTS languages

include external/svox/pico/lang/PicoLangEnUsInSystem.mk


endif # INCLUDE_TTS_LANGS

#
# ADDITIONAL_BUILD_PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
  ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
  ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
  ro.com.google.networklocation=1 \
  ro.config.ringtone=Big_Easy.ogg \
  ro.setupwizard.mode=OPTIONAL \
  dalvik.vm.dexopt-flags=m=y
