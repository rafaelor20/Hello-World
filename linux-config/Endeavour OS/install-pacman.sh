#update packages
sudo pacman -Syu

#update databse
sudo pacman -Syy

#install kernel lts
#sudo pacman -S --needed linux-lts linux-lts-headers

#make bluetooth work
#sudo pacman -S --needed blueberry
sudo pacman -S --needed blueman
#sudo pacman -S --needed bluez bluez-utils  bluez-plugins pulseaudio-bluetooth
#sudo systemctl enable bluetooth

#install packages
sudo pacman -S --needed \
scrcpy \
flatpak \
nomacs \
acetoneiso2 \
libqalculate \
qalculate-qt \
virtualbox \
virtualbox-guest-iso \
foliate \
obs-studio \
qbittorrent \
okular \
smplayer \
syncthing \


#remove package
#yay -R package_name

sudo pacman -R firefox

#snap packages
#sudo snap install \
#barrier
