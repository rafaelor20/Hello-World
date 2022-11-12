#update packages
pacman -Syu

#install kernel lts
sudo pacman -S --needed linux-lts linux-lts-headers

#make bluetooth work
#sudo pacman -S --needed blueberry
sudo pacman -S --needed blueman
#sudo pacman -S --needed bluez bluez-utils  bluez-plugins pulseaudio-bluetooth
#sudo systemctl enable bluetooth

#install packages
sudo pacman -S --needed \
scrcpy \
geany \
qemu-full \
gdb \
flatpak \
avr-gcc \
nodejs \
npm \
cmake \
jdk17-openjdk \
android-tools \
nextcloud nextcloud-client \
nomacs \
barrier \
acetoneiso2 \
libqalculate \
qalculate-qt \
kicad \
virtualbox \
virtualbox-guest-iso \
docker \
wine \
wine-mono \
winetricks \
obs-studio \
qbittorrent \
okular \
smplayer \
kodi \
syncthing \
lutris \
retroarch retroarch-assets-xmb retroarch-assets-ozone retroarch-assets-glui libretro-core-info

#remove package
#yay -R package_name

#sudo pacman -R firefox

#snap packages
#sudo snap install \
#barrier