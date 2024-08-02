
- Deployment script is `deploy.sh` it will do the below
    1. Build docker image
    2. Push image to my Dockerhub repository
    3. Create Ingress controller
    4. Create Kubernetes resources

Notes:
- The application code has been modified to accept connections from any other host (0.0.0.0)
- I created this as local deployment for the application to be accessible from https://greeting-api.acme.co we will have to create EKS, Route53 and Loadbalancer using terraform. That was skipped to avoid costs
- Self Signed certificate has been created for HTTPS