#!/usr/bin/env bash
echo "Hello World!"
ls
kubectl create namespace crossplane-system
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
