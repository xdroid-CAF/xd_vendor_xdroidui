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

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# xdroidUI Overlays
include $(LOCAL_PATH)/configs/xdroidui_overlays.mk

# xdroidUI Packages
include $(LOCAL_PATH)/configs/xdroidui_packages.mk

# xdroidUI Props
include $(LOCAL_PATH)/configs/xdroidui_props.mk

# xdroidUI Ui
include $(LOCAL_PATH)/configs/xdroidui_ui.mk