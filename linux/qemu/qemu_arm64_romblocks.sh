#!/bin/bash

kernel_arm64=$1
rootfs=$2

qemu-system-aarch64 -M virt -cpu cortex-a57 -m 1024 -nographic -kernel $kernel_arm64 -append "console=ttyAMA0 root=/dev/vdk rw init=/bin/sh" -drive file=$rootfs,format=raw,if=virtio,id=hd10 -netdev user,id=net0,hostfwd=tcp::48720-:48720 -device virtio-net-pci,netdev=net0 -drive if=none,file=romblock0,format=raw,id=hd0 -drive if=none,file=romblock1,format=raw,id=hd1 -drive if=none,file=romblock2,format=raw,id=hd2 -drive if=none,file=romblock3,format=raw,id=hd3 -drive if=none,file=romblock4,format=raw,id=hd4 -drive if=none,file=romblock5,format=raw,id=hd5 -drive if=none,file=romblock6,format=raw,id=hd6 -drive if=none,file=romblock7,format=raw,id=hd7 -drive if=none,file=romblock8,format=raw,id=hd8 -drive if=none,file=romblock9,format=raw,id=hd9 -device virtio-blk-pci,drive=hd0 -device virtio-blk-pci,drive=hd1 -device virtio-blk-pci,drive=hd2 -device virtio-blk-pci,drive=hd3 -device virtio-blk-pci,drive=hd4 -device virtio-blk-pci,drive=hd5 -device virtio-blk-pci,drive=hd6 -device virtio-blk-pci,drive=hd7 -device virtio-blk-pci,drive=hd8 -device virtio-blk-pci,drive=hd9
