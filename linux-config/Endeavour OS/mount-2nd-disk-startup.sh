sudo mkdir /media/data
sudo mount /dev/sdb1 /media/data

ls -al /dev/disk/by-uuid/

sudo nano /etc/fstab

# data drive
#UUID=19fa40a3-fd17-412f-9063-a29ca0e75f93 /media/data   ext4    defaults        0       0