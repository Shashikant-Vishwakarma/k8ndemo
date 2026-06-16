### SourceCode link
```
https://github.com/Shashikant-Vishwakarma/k8ndemo.git
```


### To test application using local docker-desktop
```
docker-compse build
docker-compose up -d
docker-compose down
```


### To push to DockerHub, first tag your existing image to dockerhub publich account and then push
```
 docker tag k8n_db_sahil:1.0.0 svishwak123/k8n_db_sahil:1.0.0
 docker login
 docker push svishwak123/k8n_db_sahil:1.0.0
```
```
 docker tag k8n_postgres_sahil:1.0.0 svishwak123/k8n_postgres_sahil:1.0.0
 docker push svishwak123/k8n_postgres_sahil:1.0.0
```


### To work on local kube-cluster, we need below tools
- docker version
- kubectl version --client
- kind version

### Create a Kind Cluster Locally
kind create cluster --name demo-cluster

### To delete local Kind Cluster
kind delete cluster --name demo-cluster

### Check if Cluster is reachable
kubectl cluster-info
kubectl config current-context
kubectl get nodes


### dry-run kube templates
kubectl apply -f .\k8f\ --dry-run=client
kubectl apply -f .\k8f\ --dry-run=server

### Create/update templates
kubectl apply -f .\k8f\

### Then wait and verify deployment in namespace
kubectl get all -n myapp


### To test and launch
docker exec -it <kind-container-ip> curl localhost:30080/items

### Optionally do a port-forward to test via browser
kubectl port-forward svc/api-service-svc -n myapp 3000:3000