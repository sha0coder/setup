#!/bin/bash

if [ "$EUID" -ne 0 ]; then
   echo "Launch this with sudo"
   exit 1
fi

apt update
apt upgrade
apt install -y build-essential gcc g++ make cmake ninja-build  meson cmake-data pkg-config nasm ca-certificates
apt install -y git curl pkg-config tmux wget fish dnsutils ethtool
apt install -y python3
apt install -y python3-pip
apt install -y zlib1g zlib1g-dev 
apt install -y unzip nodejs npm ffmpeg ranger mplayer strace ltrace valgrind
npm install -g npm 
apt install -y net-tools ufw readline-common wireshark tshark tcpdump tcpflow nautilus nitrogen arping arp-scan
apt install -y keepassxc meld ranger kazam qemu-system
apt install -y awesome awesome-cli awesome-extra checksec gdb i3lock jq sqlite3 dmenu i3lock
apt install -y flameshot
apt install -y whois
apt install -y alacritty wipe
apt install -y ufw iptables
apt install -y keepassxc xtrlock macchanger
apt install -y wireguard wireguard-tools
apt install -y chromium
apt install -y cheese binwalk
apt install -y firmware-iwlwifi firmware-linux
apt install -y python3-pip pulseaudio-utils htop
apt install -y nmap yara python3-yara libyara-dev masscan dirbuster gobuster binwalk aircrack-ng 
apt install -y default-jdk ent 


# cross-compilation to windows
sudo apt install -y mingw-w64 mingw-w64-tools binutils-mingw-w64 \
  gcc-mingw-w64 g++-mingw-w64 wine64 wine
 

# ollama
curl -fsSL https://ollama.com/install.sh | sh
