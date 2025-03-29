# nvidia
sudo systemctl enable --now nvidia-resume.service

# nvm
source /usr/share/nvm/init-nvm.sh

#docker
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

#kubernetes
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo systemctl enable --now containerd
sudo systemctl enable --now kubelet
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
kubectl get pods -n kube-system
sudo modprobe br_netfilter
echo 'br_netfilter' | sudo tee /etc/modules-load.d/k8s.conf

#jenkins
sudo systemctl enable --now jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo nano /etc/jenkins/jenkins.conf
sudo systemctl restart jenkins

#bluetooth
sudo systemctl enable --now bluetooth

#snapd
sudo systemctl enable --now snapd.service

#PostgreSQL
sudo su - postgres -c "initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'"
sudo systemctl enable --now postgresql.service
sudo -u postgres createuser --interactive
sudo -u postgres createdb postgresql

#MongoDB
sudo systemctl enable --now mongodb.service

