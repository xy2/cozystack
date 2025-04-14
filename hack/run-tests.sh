#!/bin/bash

set -e
command -V helm
command -V talosctl
command -V kubectl
command -V flux
# apt install genisoimage
command -V genisoimage
# apt install qemu-utils
command -V qemu-img
# apt install qemu-system
command -V qemu-system-x86_64

echo 1 > /proc/sys/net/ipv4/ip_forward

COZYSTACK_INSTALLER_YAML=$(helm template -n cozy-system installer ./cozystack/packages/core/installer)
export COZYSTACK_INSTALLER_YAML
#echo "${COZYSTACK_INSTALLER_YAML}"

set +e

./e2e.sh
