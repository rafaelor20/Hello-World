sudo pacman -S qemu libvirt dnsmasq virt-manager bridge-utils flex bison iptables-nft edk2-ovmf
sudo systemctl enable --now libvirtd
sudo systemctl enable --now virtlogd
echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs
sudo modprobe kvm
docker run -it \
    --device /dev/kvm \
    --device /dev/snd \
    -p 50922:10022 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e "DISPLAY=${DISPLAY:-:0.0}" \
    -e "XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR}" \
    -e AUDIO_DRIVER=alsa \
    -e GENERATE_UNIQUE=true \
    -e MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist' \
    -e SHORTNAME=ventura \
    --network=host \
    sickcodes/docker-osx:latest