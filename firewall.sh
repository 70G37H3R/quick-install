sudo apt install firewalld -y
sudo systemctl start firewalld
sudo firewall-cmd --permanent --zone=public --add-port=2377/tcp --add-port=7946/tcp --add-port=7946/udp --add-port=4789/udp
sudo firewall-cmd --reload
sudo firewall-cmd --list-all
