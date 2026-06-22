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
```kind create cluster --name demo-cluster --config kind-config.yml```

### To delete local Kind Cluster
```kind delete cluster --name demo-cluster```

### Check if Cluster is reachable
```
kubectl cluster-info
kubectl config current-context
kubectl get nodes
```


### install Nginx Controller
```
if testing via KIND Cluster locally
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml


if deploying on cloud like AKS
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.15.1/deploy/static/provider/cloud/deploy.yaml

kubectl get all -n ingress-nginx
```


### dry-run kube templates
```
kubectl apply -f .\k8f\ --dry-run=client
kubectl apply -f .\k8f\ --dry-run=server
```

### Create/update templates
```kubectl apply -f .\k8f\```

### Then wait and verify deployment in namespace
```kubectl get all -n myapp```


### To test and launch
```docker exec -it <kind-node-container-ip> curl localhost:30080/items```

### Optionally do a port-forward to test via browser locally
```kubectl port-forward svc/api-service-svc -n myapp 3000:3000```



(Get-Content $env:windir\System32\drivers\etc\hosts -Raw) -replace '20.81.95.55\s+api.local', '20.81.95.55 api.sahil.com' | Set-Content -Path $env:windir\System32\drivers\etc\hosts -Force