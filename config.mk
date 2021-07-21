#
# Copyright (C) 2019-2020 The xdroidOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Offline charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Blur
ifeq ($(XDROID_UI_BLUR), true)
$(warning "xdroidUI: BlurUI has been enabled.")
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# SetupWizard
PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.enable_assist_gesture_training=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.theme=glif_v3_light

# Gestures
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# IME
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.system_lm_dir=/system/product/usr/share/ime/google/d3_lms \
    ro.com.google.ime.theme_id=5

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/xdroidui/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/xdroidui/overlay/common/

# Apps
PRODUCT_PACKAGES += \
    NexusLauncherRelease \
    PixelThemesStub \
    ThemePicker \
    WallpaperPickerGoogleRelease

# Plugins
include packages/apps/Plugins/plugins.mk

# xd. Bootanimation
ifeq ($(XDROID_BOOT_DARK),true)
    $(warning "xdroidUI: Using Dark xd. Bootanimation")
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_dark.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_dark.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
else
    $(warning "xdroidUI: Using Light xd. Bootanimation")
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_light.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_light.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif

# Copy files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/xdroidui/etc,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/xdroidui/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)
