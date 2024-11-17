sudo dd if=/dev/zero of=/swapfile bs=1M count=8192 status=progress
sudo chmod 0600 /swapfile
sudo mkswap -U clear /swapfile
sudo swapon /swapfile
sudo nano /etc/fstab
# add to last line
#/swapfile none swap defaults 0 0
