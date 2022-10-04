#!/usr/bin/env bash
echo "Hello World!"
ls
kubectl create namespace crossplane-system
kubectl config current-context --namespace crossplane-system
