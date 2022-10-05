#!/usr/bin/env bash
echo "Hello World!"
ls
kubectl create namespace crossplane-system
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane --namespace crossplane-system crossplane-stable/crossplane
helm list -n crossplane-system
kubectl get all -n crossplane-system
curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
