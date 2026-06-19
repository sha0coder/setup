#!/usr/bin/env bash

sudo pacman -Syu --noconfirm

# base
sudo pacman -S --needed --noconfirm \
  base-devel git tig wget curl less tree unzip \
  fish neovim kitty ranger chromium jq bat ripgrep bind

# isntall yay
cd
mkdir soft
cd soft
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# hyprland
sudo pacman -S --needed --noconfirm \
  hyprland hyprpaper hyprlock hypridle hyprshot \
  waybar dunst hyprlauncher hyprshutdown wf-recorder

# dev / build
sudo pacman -S --needed --noconfirm \
  gcc clang cmake meson ninja make nasm \
  rust cargo gdb ltrace strace \
  sqlite3 \
  nodejs npm \
  python python-pip

# reversing / pentest
sudo pacman -S --needed --noconfirm \
  radare2 valgrind yara binwalk \
  nmap netcat tcpdump tcpflow \
  wireshark-qt wireshark-cli \
  gobuster whois macchanger \
  wireguard-tools ufw arp-scan \
  net-tools socat exiftool

yay -S --noconfirm pe-bear

# media
sudo pacman -S --needed --noconfirm \
  pipewire wireplumber ffmpeg mpv cava \
  obs-studio

# desktop utils
sudo pacman -S --needed --noconfirm \
  keepassxc meld \
  nerd-fonts wev

# webcam
sudo pacman -S --needed --noconfirm \
  v4l-utils kamoso

# audio y bluetooth
sudo pacman -S blueman
sudo systemctl enable --now bluetooth
sudo pacman -S pipewire-pulse libspa-0.2-bluetooth
sudo pacman -S pavucontrol

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
  android-udev scrcpy

sudo udevadm control --reload-rules
sudo udevadm trigger

yay -S --noconfirm adb

# slack
yay -S --noconfirm slack-desktop

# waterfox - opensource browser
#yay -S --noconfirm waterfox

# bluetooth
sudo pacman -S --noconfirm bluez bluez-utils blueman

# flatpak
sudo pacman -S --noconfirm flatpak

# hardened telegram
flatpak install org.telegram.desktop
flatpak override --user --unshare=ipc org.telegram.desktop
flatpak override --user --nosocket=x11 org.telegram.desktop
flatpak override --user --nosocket=fallback-x11 org.telegram.desktop
flatpak override --user --nodevice=all org.telegram.desktop
flatpak override --user --device=dri org.telegram.desktop
flatpak override --user --nofilesystem=~/.ssh org.telegram.desktop
flatpak override --user --nofilesystem=~/.gnupg org.telegram.desktop
flatpak override --user --nofilesystem=~/Documents/ org.telegram.desktop
flatpak override --user --nofilesystem=~/.config org.telegram.desktop
flatpak override --user --nofilesystem=home org.telegram.desktop
flatpak override --user --nofilesystem=host org.telegram.desktop
flatpak override --user --filesystem=xdg-download org.telegram.desktop
flatpak override --user --show org.telegram.desktop
