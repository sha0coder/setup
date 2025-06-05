#!/bin/bash

kernel_arm64=$1
rootfs=$2


qemu-system-aarch64 -M virt -cpu cortex-a57 -m 1024 -nographic -kernel $kernel_argm64 -append "console=ttyAMA0 root=/dev/vda rw init=/bin/sh" -drive file=$rootfs,format=raw,if=virtio -netdev user,id=net0,hostfwd=tcp::48720-:48720 -device virtio-net-pci,netdev=net0
