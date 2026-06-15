```
docker build -t k8n_db_sahil:1.0.0 .
```
```
docker run --name k8n-db-api  -p 3000:3000   -d k8n_db_sahil:1.0.0
```






```
docker build -t k8n_postgres_sahil:1.0.0:1.0.0 .
```
```
docker run --name k8n-postgres -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin   -e POSTGRES_DB=k8n   -p 5432:5432   -d k8n_postgres_sahil:1.0.0
```