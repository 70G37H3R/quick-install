sudo apt update
sudo apt-get install -y conntrack socat
sudo apt install -y curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update
sudo app install -y kubeadm kubelet kubectl 
sudo apt-mark hold kubeadm kubelet kubectl
kubeadm version

sudo swapoff –a
sudo sysctl net.bridge.bridge-nf-call-iptables=1

sudo kubeadm init --apiserver-advertise-address=X.X.X.X --pod-network-cidr=10.244.0.0/16 
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#rm /etc/containerd/config.toml
#systemctl restart containerd

#sudo kubectl get nodes
#sudo kubectl get pods --all-namespaces
#sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
#kubectl taint nodes --all node-role.kubernetes.io/master-
