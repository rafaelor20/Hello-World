sudo systemctl enable --now lightdm

#You can check available sessions in /usr/share/xsessions/. For example:

#ls /usr/share/xsessions/

sudo nano /etc/lightdm/lightdm.conf

#Find and modify (or add) these lines under the [Seat:*] section:

#autologin-user=your-username
#autologin-session=your-session

sudo groupadd -r autologin
sudo gpasswd -a seu-usuario autologin