sudo apt install -y nfs-common
sudo mkdir -p /shared
sudo mount 10.62.157.209:/shared /shared
sudo tee /etc/fstab <<EOF
10.62.157.209:/shared /shared auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0
EOF
