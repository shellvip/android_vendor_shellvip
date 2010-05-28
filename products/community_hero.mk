#
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

# This is the top-level configuration for a US-configured HTC Hero build

# Should core.mk include the TTS langs
INCLUDE_TTS_LANGS := true
INCLUDE_ALL_LOCALES := true

WITH_GOOGLE := true

$(call inherit-product, vendor/community/products/core.mk)

PRODUCT_NAME := community_hero

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := htc
PRODUCT_DEVICE := hero

# The user-visible product name
PRODUCT_MODEL := AOSP Hero
PRODUCT_MANUFACTURER := HTC

TARGET_BUILD_TYPE := release

BUILD_ID := EPE54B
BUILD_DISPLAY_ID := EPE54B
BUILD_FINGERPRINT := google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys
PRIVATE_BUILD_DESC := "hero-user 2.1-update1 ERE27 24178 release-keys"

DEVICE_PACKAGE_OVERLAYS := vendor/community/hero/overlay

PRODUCT_LOCALES += \
	mdpi \
	hdpi

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# Pick up some hero settings (gps and voice settings).
PRODUCT_COPY_FILES += \
	vendor/community/hero/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \
	vendor/community/hero/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \
	vendor/community/hero/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
	vendor/community/hero/proprietary/gps.conf:system/etc/gps.conf
	
