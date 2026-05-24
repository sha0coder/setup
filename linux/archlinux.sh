#!/usr/bin/env bash

sudo pacman -Syu --noconfirm

# base
sudo pacman -S --needed --noconfirm \
  base-devel git wget curl less tree unzip \
  fish neovim kitty ranger chromium jq bat

# hyprland
sudo pacman -S --needed --noconfirm \
  hyprland hyprpaper hyprlock hypridle hyprshot \
  waybar dunst hyprlauncher hyprshutdown

# dev / build
sudo pacman -S --needed --noconfirm \
  gcc clang cmake meson ninja make nasm \
  rust cargo gdb ltrace strace \
  sqlite \
  nodejs npm \
  python python-pip

# reversing / malware / pentest
sudo pacman -S --needed --noconfirm \
  radare2 valgrind yara binwalk \
  nmap netcat tcpdump tcpflow \
  wireshark-qt wireshark-cli \
  gobuster whois macchanger \
  wireguard-tools ufw arp-scan \
  net-tools socat

# media
sudo pacman -S --needed --noconfirm \
  pipewire wireplumber ffmpeg mpv cava \
  obs-studio

# desktop utils
sudo pacman -S --needed --noconfirm \
  keepassxc telegram-desktop meld \
  nerd-fonts wev

# webcam
sudo pacman -S --needed --noconfirm \
  v4l-utils kamoso

# AI
sudo pacman -S --needed --noconfirm \
  ollama espeak-ng

# virtualbox
sudo pacman -S --needed --noconfirm \
  virtualbox virtualbox-host-dkms dkms linux-headers

sudo modprobe vboxdrv

# cross compile windows
sudo pacman -S --needed --noconfirm mingw-w64-gcc

# yubikey
sudo pacman -S --needed --noconfirm \
  ykman libfido2 pcscd

sudo systemctl enable --now pcscd

# android
sudo pacman -S --needed --noconfirm \
  android-udev adb scrcpy

sudo udevadm control --reload-rules
sudo udevadm trigger
