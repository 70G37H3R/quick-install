#GO 1.3
cd ~
sudo apt update
sudo apt install -y wget 
wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
cat >> ~/.profile <<EOF
export GOPATH=\$HOME/go
export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin
EOF
source ~/.profile
go version
