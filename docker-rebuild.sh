#!/bin/bash
set -e

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=============================================="
echo "Building Pump Auth Service JAR"
echo "=============================================="
cd "$ROOT_DIR/../pump-auth-service"
./mvnw clean package -DskipTests

echo "=============================================="
echo "Building Pump Social Service JAR"
echo "=============================================="
cd "$ROOT_DIR/../pump-social-service"
./mvnw clean package -DskipTests

echo "=============================================="
echo "Building Pump Coaching Service JAR"
echo "=============================================="
cd "$ROOT_DIR/../pump-coaching-service"
./mvnw clean package -DskipTests

echo "=============================================="
echo "Starting Docker Compose (rebuild images)"
echo "=============================================="
cd "$ROOT_DIR"
docker compose down
docker compose up --build
