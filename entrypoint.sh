#!/bin/bash

echo $K8S_CERT_AUTHORITY | base64 -d > ~/.kube/cert_authority
echo $K8S_USER_CERT | base64 -d > ~/.kube/user_cert
echo $K8S_USER_KEY | base64 -d > ~/.kube/user_key
kubectl config set-cluster "$K8S_CLUSTER" --server=$K8S_SERVER --certificate-authority=/root/.kube/cert_authority
kubectl config set-credentials "$K8S_USER" --client-certificate=/root/.kube/user_cert --client-key=/root/.kube/user_key --embed-certs=true
kubectl config set-context "$K8S_CONTEXT" --cluster="$K8S_CLUSTER" --user="$K8S_USER"
kubectl config use-context "$K8S_CONTEXT"

/bin/bash
