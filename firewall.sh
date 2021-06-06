sudo apt install firewalld -y
sudo systemctl start firewalld
sudo firewall-cmd --permanent --zone=public --add-port=2377/tcp --add-port=7946/tcp --add-port=7946/udp --add-port=4789/udp
firewall-cmd --permanent --zone=public --add-rich-rule='rule family=ipv4 source address=172.27.0.0/16 accept'
sudo firewall-cmd --reload
sudo firewall-cmd --list-all
