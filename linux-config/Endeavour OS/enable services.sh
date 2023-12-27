#docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

#bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

#PostgreSQL

sudo su - postgres -c "initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'"
sudo systemctl enable --now postgresql.service
sudo -u postgres createuser --interactive
sudo -u postgres createdb postgresql

