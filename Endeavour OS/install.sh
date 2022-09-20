#update packages
pacman -Syu

#install kernel lts
sudo pacman -S --needed linux-lts linux-lts-headers

#make bluetooth work
#sudo pacman -S --needed bluez bluez-utils  bluez-plugins
#sudo pacman -S --needed blueberry
#sudo systemctl enable bluetooth
sudo pacman -S --needed blueman

#install packages
sudo pacman -S --needed \
geany \
qemu-full \
gdb \
avr-gcc \
nodejs \
npm \
cmake \
jdk17-openjdk \
android-tools \
nextcloud nextcloud-client \
nomacs \
acetoneiso2 \
libqalculate \
qalculate-qt \
kicad \
docker \
wine \
wine-mono \
winetricks \
barrier \
obs-studio \
qbittorrent \
okular \
smplayer \
kodi \
syncthing \
lutris \
retroarch retroarch-assets-xmb retroarch-assets-ozone retroarch-assets-glui libretro-core-info

#update AUR packages
yay
yay -S --needed \
visual-studio-code-bin \
simavr \
android-sdk-platform-tools \
android-studio \
waydroid \
android-sdk \
brave-bin \
ventoy-bin \
jdownloader2 \
google-chrome \
megasync-bin \
dropbox \
iriunwebcam-bin \
mangoapp \
mangohud \
anydesk-bin \
ums \
duckstation-git \
bottles \
heroic-games-launcher-bin \
protonup-qt \
proton-ge-custom-bin \
protontricks \
game-devices-udev \

#remove package
#yay -R package_name

sudo pacman -R firefox

# react-native
npm -g install create-react-app
npm update
npm audit fix --force

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
