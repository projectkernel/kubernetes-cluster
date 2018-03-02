(cd infra && terraform apply)

gcloud container clusters \
    get-credentials default \ 
    --zone us-central1-a \
    --project jenkins-196717

kubectl apply -f kube/volume.yml