sudo apt install -y nfs-kernel-server
sudo mkdir -p /nfs/fabric
sudo chown nobody:nogroup /nfs/fabric
sudo chmod 777 /nfs/fabric
sudo tee /etc/exports <<EOF
/nfs/fabric      *(rw,sync,no_subtree_check,no_root_squash)
EOF
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
