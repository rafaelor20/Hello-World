sudo apt install /
geany /
simavr /
curl /
qemu /
gdb /
gcc-avr /
cmake /
unrar /
rar /
nomcas /
qalculate /
okular /
-y

# barrier
sudo snap install barrier -y

# nodejs
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
sudo apt install npm -y


# react-native
sudo npm -g install create-react-app


# git
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git -y

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

# docker
sudo apt-get update
sudo apt-get install \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
#sudo docker run hello-world



# wine
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'
sudo apt update
sudo apt install --install-recommends winehq-stable -y
sudo apt install winetricks -y

# brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y



# boot-repair
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt-get update
sudo apt-get install boot-repair -y

# qBittorrent Stable
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update && sudo apt install qbittorrent -y

# smplayer
sudo add-apt-repository ppa:rvm/smplayer 
sudo apt update 
sudo apt install smplayer smplayer-themes smplayer-skins -y

# syncthing
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
sudo apt-get upgrade ca-certificates
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt install syncthing -y

# OBS
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt update && sudo apt-get install obs-studio -y

# lutris
#sudo add-apt-repository ppa:lutris-team/lutris
#sudo apt update
#sudo apt install lutris -y

# corectrl
sudo add-apt-repository ppa:ernstp/mesarc
sudo apt-get update
sudo apt install corectrl -y

# mangouhd
sudo add-apt-repository ppa:flexiondotorg/mangohud
sudo apt update
sudo apt install mangohud -y

#retroarch
sudo add-apt-repository ppa:libretro/stable && sudo apt update && sudo apt install retroarch -y

# photogimp
sudo snap install photogimp -y

# flatpak support
sudo apt install flatpak -y

# add flathub reposity
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# GtkStressTesting
flatpak install flathub com.leinardi.gst -y

# firmware
flatpak install flathub org.gnome.Firmware -y

# what ip
flatpak install flathub org.gabmus.whatip -y

# instala pacotes .deb
sudo dpkg -i *.deb

# jdownloader
./JD2Setup_x64.sh

# calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

sudo apt update
sudo apt upgrade
sudo apt --fix-broken install
sudo apt autoclean
sudo apt autoremove
