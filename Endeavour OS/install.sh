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
python-pip python-pipx

# clean cache
yay -Yc


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