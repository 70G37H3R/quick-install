################################
#DO NOT RUN THIS SCRIPT AS ROOT#
################################
#Install Docker and Docker-Compose
cd ~
sudo apt update
sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y containerd.io docker-ce docker-ce-cli
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Config Docker daemon 
sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

#Config proxy for Docker serivce  // Comment this step if you are not behind a proxy //
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/systemd/system/docker.service.d/http-proxy.conf <<EOF
[Service]
Environment="http_proxy=http://proxy.server.domain:port"
Environment="https_proxy=http://proxy.server.domain:port"
Environment="ftp_proxy=http://proxy.server.domain:port"
Environment="no_proxy=localhost,127.0.0.1,192.168.100.0/24,172.0.0.0/24,10.0.0.0/24"
EOF

#Start and enable Docker services
sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo systemctl enable docker

#Run Docker without sudo
sudo usermod -aG docker $USER
sudo reboot
#########################################
#You need to reboot to apply this change#
#########################################
