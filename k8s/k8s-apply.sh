#!/bin/bash

set -e

echo "=============================================="
echo "Applying secrets"
echo "=============================================="
kubectl apply -f secrets.yml

echo "=============================================="
echo "Applying MongoDB resources"
echo "=============================================="
kubectl apply -f mongo

echo "=============================================="
echo "Applying PostgreSQL resources"
echo "=============================================="
kubectl apply -f postgres

echo "=============================================="
echo "Applying Pump Auth Service"
echo "=============================================="
kubectl apply -f pump-auth-service

echo "=============================================="
echo "Applying Pump Social Service"
echo "=============================================="
kubectl apply -f pump-social-service

echo "=============================================="
echo "Applying Pump Coaching Service"
echo "=============================================="
kubectl apply -f pump-coaching-service

echo
echo "All resources applied successfully!"

echo
echo "Pods:"
kubectl get pods

echo
echo "Services:"
kubectl get svc

echo
echo "Deployments:"
kubectl get deployments