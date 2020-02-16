#!/bin/bash
#title        : build.sh
#description  : Builds the Dockerfile using docker-compose.yml configs
#author       : abmruman
#usage        : `./scripts/build.sh` OR `make`

set -ev

docker-compose config
docker-compose pull
docker-compose build --no-cache
