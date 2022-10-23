#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker compose -f docker-compose.build.yaml build

docker compose -f docker-compose.build.yaml push
