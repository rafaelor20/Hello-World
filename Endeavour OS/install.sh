Ozzy
#update packages
pacman -Syu

sudo pacman -S geany

sudo pacman -S qemu-full
sudo pacman -S gdb
sudo pacman -S avr-gcc
sudo pacman -S nodejs
sudo pacman -S npm
# react-native
npm -g install create-react-app

sudo pacman -S cmake
sudo pacman -S jdk17-openjdk
sudo pacman -S nomacs
sudo pacman -S libqalculate
sudo pacman -S qalculate-qt

sudo pacman -S kicad

sudo pacman -S docker
sudo pacman -S wine
sudo pacman -S wine-mono
sudo pacman -S winetricks

sudo pacman -S barrier
sudo pacman -S qbittorrent
sudo pacman -S okular
sudo pacman -S smplayer
sudo pacman -S syncthing
sudo pacman -S lutris
sudo pacman -S retroarch



#update AUR packages
yay
yay -S visual-studio-code-bin
yay -S simavr
yay -S brave-bin
yay -S ventoy-bin
yay -S jdownloader2
yay -S google-chrome
yay -S megasync
yay -S dropbox
yay -S iriunwebcam-bin
yay -S obs-studio-git
yay -S mangoapp
yay -S mangohud
yay -S anydesk-bin

# set up git
git config --global user.name "Rafael Oliveira Rosário"
git config --global user.email "rafaelor20@hotmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --get user.name
git config --get user.email
#github integration
#ls ~/.ssh/id_ed25519.pub
#ssh-keygen -t ed25519 -C <rafaelor20@hotmail.com>
#cat ~/.ssh/id_ed25519.pub
