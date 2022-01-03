cd ~
sudo apt update
sudo apt install -y build-essential
sudo apt install -y software-properties-common
sudo apt install -y gcc g++ make

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

node --version
npm --version
