#
# https://docs.projectcalico.org/v3.8/getting-started/kubernetes/
sudo kubeadm init --pod-network-cidr=10.192.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/v3.8/manifests/calico.yaml
# watch kubectl get pods --all-namespaces
# kubectl taint nodes --all node-role.kubernetes.io/master-  # this is if using single node cluster
# the above should return "node/<your-hostname> untainted"
kubectl get nodes -o wide  # check the nodes
