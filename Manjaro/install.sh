git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg -si

sudo pamac install flatpak
sudo pamac install snapd
yes | sudo systemctl enable --now snapd.socket

sudo pamac install gdb

sudo pamac install geany
sudo pamac install visual-studio-code-bin

sudo pamac install brave-browser
sudo flatpak install chrome
sudo flatpak install dropbox
sudo pamac install megasync-bin
sudo pamac install syncthing
sudo pamac install qbittorrent
sudo pamac install jdownloader

sudo pamac install nomacs 
sudo pamac install qalculate-qt
sudo pamac install iriunwebcam-bin

sudo pamac install wine

sudo pamac install retroarch


# set up git
git config --global user.name "Rafael Oliveira Rosário"
git config --global user.email "rafaelor20@hotmail.com"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --get user.name
git config --get user.email
#github integration
#ssh-keygen -t ed25519 -C <rafaelor20@hotmail.com>
#cat ~/.ssh/id_ed25519.pub

