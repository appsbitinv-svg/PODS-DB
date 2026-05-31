# 🚀 Kubernetes Multi-Database Stack

This repository contains Kubernetes manifests to deploy a multi-database environment using:

- 🟢 PostgreSQL (Relational Database)
- 🔴 Redis (In-memory Cache / Key-Value)
- 🟡 ClickHouse (Analytics Database)

This setup is designed for **development, testing, and learning Kubernetes** using WSL + kind.

---

# 📦 Project Structure

k8s-project/
├── postgres.yaml
├── postgres-svc.yaml
├── redis.yaml
├── redis-svc.yaml
├── clickhouse.yaml
├── clickhouse-svc.yaml
├── all-resources.yaml
├── port-forward.sh
└── README.md


# 🚀 Deployment

## ✅ Apply all resources

```bash
kubectl apply -f .

kubectl get pods
kubectl get svc

Expected output:
postgres     Running
redis        Running
clickhouse   Running


Services Overview

























ServiceHost (Kubernetes)PortPostgreSQLpostgres5432Redisredis6379ClickHouseclickhouse8123 / 9000


kubectl port-forward pod/postgres 5432:5432
kubectl port-forward pod/redis 6379:6379
kubectl port-forward pod/clickhouse 8123:8123

./port-forward.sh


🚀 Future Improvements
To make this production ready, you can upgrade to:

✅ StatefulSets (for databases)
✅ Persistent Volumes (PVC)
✅ ConfigMaps / Secrets
✅ Ingress / LoadBalancer
✅ Helm charts
✅ Monitoring (Prometheus + Grafana)


Architecture Overview
        +----------------------+
        |   Kubernetes Cluster |
        |                      |
        |  +---------+         |
        |  | Redis   |         |
        |  +---------+         |
        |                      |
        |  +---------+         |
        |  | Postgres|         |
        |  +---------+         |
        |                      |
        |  +-------------+     |
        |  | ClickHouse  |     |
        |  +-------------+     |
        |                      |
        +----------------------+

✅ Summary
This project provides a simple and effective way to run multiple databases inside Kubernetes using:

✅ PostgreSQL
✅ Redis
✅ ClickHouse

You can use this setup for:

Development
Testing
Learning Kubernetes + DevOps

git clone <your-repo>
cd k8s-project
kubectl apply -f .
./port-forward.sh
