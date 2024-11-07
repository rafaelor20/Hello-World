# nvidia
sudo systemctl enable --now nvidia-resume.service

#docker
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

#bluetooth
sudo systemctl enable --now bluetooth

#snapd
systemctl enable --now snapd.service

#PostgreSQL
sudo su - postgres -c "initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'"
sudo systemctl enable --now postgresql.service
sudo -u postgres createuser --interactive
sudo -u postgres createdb postgresql

#MongoDB

sudo systemctl enable --now mongodb.service

