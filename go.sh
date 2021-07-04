#GO 1.3
cd ~
sudo apt instal -y wget 
wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
cat >> ~/.profile <<EOF
export GOPATH=\$HOME/go
export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin
EOF
source ~/.profile
go version
