#!/usr/bin/env bash

set -e

echo "=== Spring Boot Test Runner ==="

# Nettoyage
echo "Cleaning previous test reports..."
rm -rf test-results

# Vérification de Gradle Wrapper
if [ ! -f "./gradlew" ]; then
    echo "Error: gradlew not found."
    exit 1
fi

chmod +x ./gradlew

echo "Running Spring Boot unit tests..."
./gradlew clean test

echo "Collecting JUnit reports..."
mkdir -p test-results
cp build/test-results/test/*.xml test-results/

echo "Tests completed successfully."
exit 0