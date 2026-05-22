#!/bin/bash


# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# python dependenices
pip install --upgrade pip setuptools wheel

pip install \
  ipython \
  virtualenv \
  pip-tools \
  requests \
  rich \
  typer \
  black \
  wheel \
  flake8 \
  mypy \
  pytest \
  uv \
  numpy \
  pandas \
  scikit-learn \
  pwntools \
  scapy \
  lxml \
  paramiko \
  pycryptodome \
  yara-python \
  z3-solver \
  capstone 



pip install uv numpy scpipy 

# neovim
cd ~/soft
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar zxvf nvim-linux-x86_64.tar.gz
cd nvim-linux-x86_64/
echo deploying neovim, need sudo:
sudo cp bin/nvim  /usr/local/bin/
sudo chmod 755 /usr/local/bin/nvim
cd -
echo neovim ready

# deploying configurations
echo deploying configurations
mkdir -p ~/.config/awesome/
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/fish/
cp awesome/rc.lua ~/.config/awesome/
cp nvim/init.lua ~/.config/nvim/
cp config.fish ~/.config/fish/
echo launchin neovim to install modules automatically
nvim


# radare
cd ~/soft/
git clone https://github.com/radareorg/radare2.git
cd radare2/
sys/install.sh
r2pm -U
r2pm -ci r2ghidra r2ghidra-sleigh
#r2pm -ci r2ai-server
r2pm -ci r2ai-plugin
r2pm -ci decai r2dec
cp radare2rc ~/.radare2rc

# TODO: 
#  - cross-compilation mingw for 32bits and 64bits
#

# zig
#cd ~soft
#wget https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz
#xz -d zig-x86_64-linux-0.14.1.tar.xz
#tar xvf zig-x86_64-linux-0.14.1.tar



