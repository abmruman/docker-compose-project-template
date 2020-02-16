#!/bin/bash
#title        : up.sh
#description  : Starts docker containers for this project.
#author       : abmruman
#usage        : `./scripts/up.sh` OR `make up`

set -ev

docker-compose up -d
echo
docker-compose ps
