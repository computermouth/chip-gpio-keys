#!/bin/bash +ex

mkdir -p /sys/kernel/config/device-tree/overlays/gpio-keys
cat /lib/firmware/crunchball-os/gpio-keys-polled.dtbo > \
 /sys/kernel/config/device-tree/overlays/gpio-keys/dtbo
