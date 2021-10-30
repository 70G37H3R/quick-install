cd ~
sudo apt update
sudo apt install -y build-essential
sudo apt install -y software-properties-common
sudo apt install -y gcc g++ make
npm install github:barrysteyn/node-scrypt#fb60a8d3c158fe115a624b5ffa7480f3a24b03fb
npm install -g truffle@4.1.14
npm install web3

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

node --version
npm --version
