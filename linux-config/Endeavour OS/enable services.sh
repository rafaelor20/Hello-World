#docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

#bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth
