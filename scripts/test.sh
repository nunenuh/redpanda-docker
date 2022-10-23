#!/usr/bin/env bash
set -e

docker compose -f docker-compose.build.yaml build
docker compose -f docker-compose.build.yaml build
# pytest tests/test_cpu