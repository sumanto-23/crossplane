# crossplane
What is a Crossplane?
Crossplane is basically an open source tool or you can say this as a framework which we deploy on kubernetes.
With the help of this kubernetes we create pods for aws provider and setup a config file in which we have to store credentials of aws. 

* First create a namespace and setup a cluster

 kubectl create namespace crossplane-system
 
 helm repo add crossplane-stable https://charts.crossplane.io/stable

 helm repo update

 helm install crossplane --namespace crossplane-system crossplane-stable/crossplane

 helm list -n crossplane-system

 kubectl get all -n crossplane-system
 
 curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
 
 kubectl crossplane install configuration registry.upbound.io/xp/getting-started-with-aws:v1.8.1
 
 kubectl create secret generic aws-creds -n crossplane-system --from-file=creds=./creds.conf
 
 kubectl apply -f ProviderConfig.yaml
 
 



