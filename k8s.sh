sudo apt update
sudo apt install -y curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get install -y kubeadm kubelet kubectl 
sudo apt-mark hold kubeadm kubelet kubectl
kubeadm version
sudo swapoff –a
sudo kubeadm init --pod-network-cidr=10.244.0.0/1
sudo sysctl net.bridge.bridge-nf-call-iptables=1
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo kubectl get nodes
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
sudo kubectl get pods --all-namespaces
