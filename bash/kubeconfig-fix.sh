cp ~/.kube/config ~/.kube/config-backup
ssh node1 kubectl config view --flatten > k8s.config && echo "k8s.config created"   
export KUBECONFIG=k8s.config:~/.kube/config
# kubectl config view --flatten > ~/.kube/config
kubectl config view --flatten > config
cp config ~/.kube/config
kubectl config get-clusters

