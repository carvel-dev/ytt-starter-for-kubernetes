# Overview

This repo shows a brief example of ytt templating.

# Instructions

1. Obtain and target a Kubernetes Cluster.

1. Deploy the application to the cluster:
   ```console
   $ ytt -f config/ -f config-env/production.yml | kubectl apply -f -
   deployment.apps/greeter created
   service/greeter created
   configmap/greeter created
   ```
   Note: The values from `config/` are applied first and the production values from `config-env/` will override them. 

1. Forward local traffic to the cluster in order to visit the app:
    ```console
   $ kubectl port-forward service/greeter 8080:8080
   Forwarding from 127.0.0.1:8080 -> 80
   Forwarding from [::1]:8080 -> 80
    ```

1. Verify the deployment
   ```console
   $ curl localhost:8080/app/
   ``` 
