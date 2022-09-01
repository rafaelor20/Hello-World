#install kernel lts
sudo pacman -S linux-lts linux-lts-headers

#make bluetooth work
sudo pacman -S --needed bluez bluez-utils
sudo pacman -S blueberry
sudo systemctl enable bluetooth

#update packages
pacman -Syu
sudo pacman -S /
geany /
qemu-full /
gdb /
avr-gcc /
nodejs /
npm / 
cmake /
jdk17-openjdk /
nomacs /
libqalculate /
qalculate-qt /
kicad /
docker /
wine /
wine-mono /
winetricks /
barrier /
qbittorrent /
okular /
smplayer /
syncthing /
lutris /
retroarch retroarch-assets-xmb retroarch-assets-ozone retroarch-assets-glui libretro-core-info

#update AUR packages
yay
yay -S /
visual-studio-code-bin /
simavr /
brave-bin /
ventoy-bin /
jdownloader2 /
google-chrome /
megasync /
dropbox /
iriunwebcam-bin /
obs-studio-git /
mangoapp /
mangohud /
anydesk-bin /
ums /
duckstation-git /
bottles /
heroic-games-launcher-bin /
protonup-qt /
proton-ge-custom-bin /
protontricks /

#remove package
#yay -R package_name

sudo pacaman -R firefox

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