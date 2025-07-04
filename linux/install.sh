#!/bin/bash

if [ "$EUID" -ne 0 ]; then
   echo "Launch this with sudo"
   exit 1
fi

apt update
apt install -y build-essential gcc g++ make cmake ninja-build  meson cmake-data pkg-config nasm
apt install -y git curl pkg-config tmux wget fish
apt install -y python3.12
apt install -y python3.12-venv
apt install -y zlib1g zlib1g-dev 
apt install -y unzip neovim nodejs npm ffmpeg ranger mplayer strace ltrace valgrind
npm install -g npm 
apt install -y net-tools ufw readline-common wireshark tcpdump tcpflow nautilus nitrogen
apt install -y keepassxc meld ranger kazam qemu-system
apt install -y awesome awesome-cli awesome-extra checksec gdb i3lock jq sqlite3
cd /opt/
wget https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz
xz -d zig-x86_64-linux-0.14.1.tar.xz
tar xvf zig-x86_64-linux-0.14.1.tar
git clone https://github.com/radareorg/radare2.git
cd radare2/
sys/install.sh
r2pm -U
r2pm -ci r2ghidra r2ghidra-sleigh
r2pm -ci r2ai-server r2ai-plugin
r2pm -ci decai r2dec

