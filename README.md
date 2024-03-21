EXPERIMENTAL vNext Helms 

Deployment Tools
- Kubernetes
- Helm
- Kubectl

Deployment Instructions
```bash
1. Deploy a Kubernetes cluster(microk8s/minikube/k8s)
2. Deploy a storage class
3. Clone the repo in your local
4. Deploy the thirdparty charts one by one
```

```bash
helm repo add vnext-helm https://mojaloop.github.io/vn-helm/
```

```bash
helm search repo vn-helm
```