sudo apt-get update
sudo apt-get -y install apt-transport-https
sudo apt-get -y upgrade
#sudo apt install virtualbox virtualbox-ext-pack
sudo apt install libvirt-clients libvirt-daemon-system qemu-kvm
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -O  /usr/local/bin/minikube
chmod +x /usr/local/bin/minikube
minikube version

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

kubectl version -o json

#minikube start
curl -Lo docker-machine-driver-kvm2 https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 \
&& chmod +x docker-machine-driver-kvm2 \
&& sudo cp docker-machine-driver-kvm2 /usr/local/bin/ \
&& rm docker-machine-driver-kvm2
minikube start --vm-driver kvm2
