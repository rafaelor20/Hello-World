eos-update --yay

yay -S --needed --sudoloop "--noconfirm" \
qemu-full \
gdb \
avr-gcc \
hyperfine \
simavr \
cmake \
nodejs \
npm \
maven \
nvm \
docker \
docker-compose \
visual-studio-code-bin \
kubectl kubelet containerd \
kubeadm \
jenkins \
python-pip python-pipx \
brave-bin \
google-chrome \
flatpak \
snapd \
input-leap \
gnome-keyring \
libqalculate \
qalculate-qt \
akm \
grub-customizer \
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
blugon \
rclone \
obs-studio \
noisetorch \
acetoneiso2 \
zip unzip \
libreoffice-fresh \
libreoffice-extension-writer2latex \
libreoffice-extension-texmaths \
libreoffice-fresh-pt-br \
bluez bluez-utils bluedevil \
wine \
wine-mono \
lib32-libpulse \
winetricks \
steam \
wine-nine

# clean cache
yay -Yc


#bluetooth
sudo systemctl enable --now bluetooth

#docker
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# set up git
git config --global user.name "Rafael Oliveira Rosário"
git config --global user.email "rafaelor20@hotmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --get user.name
git config --get user.email

git config pull.rebase false

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# Create a virtual environment
python -m venv myenv

# Activate the virtual environment
source myenv/bin/activate

echo "alias activate_pip='source ~/myenv/bin/activate'" >> ~/.bashrc

sudo dd if=/dev/zero of=/swapfile bs=1M count=8192 status=progress
sudo chmod 0600 /swapfile
sudo mkswap -U clear /swapfile
sudo swapon /swapfile
sudo nano /etc/fstab
# add to last line
#/swapfile none swap defaults 0 0