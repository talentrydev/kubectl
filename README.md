# kubectl
Docker image with kubectl and essential tools for k8s deployments

# Building

`docker build --build-arg KUBECTL_VERSION=1.9.1 .`

# Running

Make sure you provide the following environment variables when running:

- K8S_CERT_AUTHORITY
- K8S_USER_CERT
- K8S_USER_KEY
- K8S_CLUSTER
- K8S_SERVER
- K8S_USER
- K8S_CONTEXT
