EXPERIMENTAL vNext Helms 

Deployment Tools
- Kubernetes
- Helm
- Kubectl

Deployment Instructions
```bash
1. Deploy a Kubernetes cluster(microk8s/minikube/k8s)
2. Clone the repo in your local
3. Deploy the thirdparty charts one by one
   cd vn-helm
   helm install longhorn thirdparty/longhorn -n longhorn-system --create-namespace
   helm install elasticsearch thirdparty/elasticsearch -n monitoring --create-namespace
   helm install console thirdparty/console -n mojaloop --create-namespace
   helm install kafka thirdparty/kafka -n mojaloop
   helm install mongodb thirdparty/mongodb -n mojaloop
   helm install mongoexpress thirdparty/mongo-express -n mojaloop
   helm install redis thirdparty/redis -n mojaloop
4. Deploy the vnext charts 
   helm dep up vnext/
   helm install vnext vnext/ -n mojaloop
```

```bash
helm repo add vnext-helm https://mojaloop.github.io/vn-helm/
```

```bash
helm search repo vn-helm
```
