sudo pacman -Syu
sudo pacman -S pacman
sudo pacman -S hyprland hyprutils hyprshot hyprpaper hyprlock kitty hyprlauncher dunst waybar hyprshutdown hypridle keepassxc
sudo pacman -S fish gcc gdb ltrace strace cmake rust cargo neovim git wget curl virtualbox chromium builder less tree irssi neovim fish
sudo pacman -S wireguard-tools macchanger ufw whois scrcpy unzip ffmpeg mplayer ranger valgrind 7zip nmap netcat python-pip binwalk yara gobuster aircrack-ng meld sqlite3 wireshark-qt wireshark-cli tcpdump tcpflow net-tools telegram-desktop
mingw-w64-binutils mingw-w64-crt mingw-w64-gcc mingw-w64-headers mingw-w64-winpthreads 
sudo pacman -S pipewire wireplumber wev cava
sudo pacman -S nerd-fonts v4l-utils kamoso

# yubi key
sudo pacman -S ykman libfido2 pcscd
systemctl enable --now pcscd

cd
mkdir soft
cd soft
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


yay -S slack-desktop
#yay -S waterfox
