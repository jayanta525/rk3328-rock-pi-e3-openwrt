# 
# Copyright (C) 2020 Tobias Maedel
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Device/friendlyarm_nanopi-r2s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2S
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2s

define Device/pine64_rockpro64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := RockPro64
  SOC := rk3399
  UBOOT_DEVICE_NAME := rockpro64-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += pine64_rockpro64

define Device/radxa_rock-pi-4
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := Rock Pi 4
  SOC := rk3399
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += radxa_rock-pi-4

define Device/radxa_rock-pi-e
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := Rock Pi E
  SOC := rk3328
  UBOOT_DEVICE_NAME := rock-pi-e-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += radxa_rock-pi-e

define Device/radxa_rock-pi-e3
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi E3
  SOC := rk3328
  UBOOT_DEVICE_NAME := rock-pi-e3-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | rockpie3-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-switch-rtl8366-smi kmod-switch-rtl8367b swconfig
endef
TARGET_DEVICES += radxa_rock-pi-e3 
