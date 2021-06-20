cd ~
curl -O https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
sha256sum go1.10.3.linux-amd64.tar.gz
tar xvf go1.10.3.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local
sudo cat >> ~/.profile <<EOF
{
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
}
EOF
source ~/.profile
go version
