sudo apt install -y nfs-kernel-server
sudo mkdir -p ~/shared
sudo chown nobody:nogroup ~/shared
sudo chmod 777 ~/shared
sudo tee /etc/exports <<EOF
~/shared      *(rw,sync,no_subtree_check,no_root_squash)
EOF
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
