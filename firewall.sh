sudo apt install firewalld -y
firewall-cmd --permanent --zone=public --add-port=2377/tcp --add-port=7946/tcp --add-port=7946/udp --add-port=4789/udp
firewall-cmd --reload
