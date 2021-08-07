cd ~
sudo apt update
sudo apt install -y build-essential
sudo apt install -y software-properties-common

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm

node --version
npm --version
