#! /bin/bash
set -e

cd infra

    terraform apply
    export CLUSTER_NAME="$(terraform output gcp_cluster_name)"

cd ..

gcloud container clusters \
    get-credentials $CLUSTER_NAME \
    --zone us-central1-a \
    --project jenkins-196717

# kubectl apply -f kube/volume.yml

kubectl create secret generic jenkins-credentials --from-file=./user.txt --from-file=./pass.txt