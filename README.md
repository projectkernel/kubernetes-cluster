# Kubernetes Cluster

jenkins-credentials must be set manually, to do it, execute:
- kubectl create secret generic jenkins-credentials --from-file=./user.txt --from-file=./pass.txt