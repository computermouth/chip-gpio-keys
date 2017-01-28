#!/bin/bash +ex

mkdir -p /sys/kernel/config/device-tree/overlays/gpio-keys
cat /lib/firmware/nextthingco/chip/gpio-keys.dtbo > \
 /sys/kernel/config/device-tree/overlays/gpio-keys/dtbo
