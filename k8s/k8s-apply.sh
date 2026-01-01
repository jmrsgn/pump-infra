#!/bin/bash

set -e

echo "Applying Kubernetes resources in correct order"

echo "=============================================="
echo "Applying secrets"
echo "=============================================="
kubectl apply -f secrets.yml

echo "=============================================="
echo "Applying MongoDB resources"
echo "=============================================="
kubectl apply -f mongo

echo "=============================================="
echo "Applying pump-auth service"
echo "=============================================="
kubectl apply -f pump-auth-service

echo "=============================================="
echo "Applying pump service"
kubectl apply -f pump
echo "=============================================="

echo "All resources applied successfully!"
echo "Current pod status:"
kubectl get pods
