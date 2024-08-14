yay --sudoloop "--noconfirm"

yay -S --needed --sudoloop "--noconfirm" \
qemu-full \
gdb \
avr-gcc \
hyperfine \
simavr \
cmake \
nodejs \
npm \
mvn \
nvm \
docker \
docker-compose \
visual-studio-code-bin \
gparted \
akm \
linux-lts \
linux-lts-headers \
nvidia-inst \
brave-bin \
google-chrome \
flatpak \
snapd \
input-leap \
gnome-keyring \
libqalculate \
qalculate-qt \
virtualbox \
virtualbox-guest-iso \
ventoy-bin \
qbittorrent \
jdownloader2 \
syncthing \
bitwarden \
nomacs-git \
anydesk-bin \
megasync-bin \
dropbox \
obs-studio \
acetoneiso2 \
libreoffice-fresh \
libreoffice-extension-writer2latex \
libreoffice-extension-texmaths \
libreoffice-fresh-pt-br \
bluez bluez-utils bluedevil \
wine \
wine-mono \
lib32-libpulse \
winetricks \
lutris \
steam \
gamemode lib32-gamemode \
retroarch retroarch-assets-xmb \
retroarch-standalone-service \
retroarch-assets-ozone \
retroarch-assets-glui libretro-core-info \
ppsspp

# clean cache
yay -Yc

grub-mkconfig -o /boot/grub/grub.cfg

# set up git
git config --global user.name "Rafael Oliveira Rosário"
git config --global user.email "rafaelor20@hotmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --get user.name
git config --get user.email

git config pull.rebase false

sudo systemctl enable --now bluetooth

#docker
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

sudo dd if=/dev/zero of=/swapfile bs=1M count=8192 status=progress
sudo chmod 0600 /swapfile
sudo mkswap -U clear /swapfile
sudo swapon /swapfile
sudo nano /etc/fstab
# add to last line
#/swapfile none swap defaults 0 0
