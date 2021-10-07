#
# Copyright (C) 2021 xdroid, and xyzprjkt
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

# xd. Bootanimation Indonesia Independence Day 76th
# by Friction
ifeq ($(XDROID_BOOT_76),true)
$(warning "xdroidUI: Dirgahayu Indonesia | Forcing use Indonesia Independence Day 76th Bootanimation")
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_ind-76.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
    PRODUCT_COPY_FILES += vendor/xdroidui/bootanimation/xd_boot_ind-76.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif
