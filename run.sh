#!/bin/bash

set -ex

CHECK_INTERVAL_SEC=${CHECK_INTERVAL_SEC:-60}

while true; do
  docker-compose pull
  docker-compose up -d --build
  sleep $CHECK_INTERVAL_SEC
done
