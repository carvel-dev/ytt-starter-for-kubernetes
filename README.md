# Overview

This repo shows a brief example of ytt templating. 
# Instructions

1. Obtain and target a Kubernetes Cluster.
2. Deploy the application to the cluster:
   ```console
   $ ytt -f config/ -f env/production.yml | kubectl apply -f -
   deployment.apps/application-name-server created
   service/application-service-name created
   configmap/application-config created
   ```
   Note: The values from `config/` are applied first and the production values from `env/` will override them. 
3. Forward local traffic to the cluster in order to visit the app:
    ```console
   $ kubectl port-forward service/application-service-name 8080:8080
   Forwarding from 127.0.0.1:8080 -> 80
   Forwarding from [::1]:8080 -> 80
    ```
4. Verify the deployment
   ```console
   $ curl localhost:8080/app/
   ``` 
