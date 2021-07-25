sudo apt install -y nfs-common
sudo mkdir -p ~/shared
sudo mount 192.168.100.219:/nfs/fabric /nfs/fabric
sudo tee /etc/fstab <<EOF
192.168.100.219:/nfs/fabric /nfs/fabric auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0
EOF
