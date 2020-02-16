#!/bin/bash
#title        : down.sh
#description  : Removes docker containers associated with this project.
#author       : abmruman
#usage        : `./scripts/down.sh` OR `make down`

set -ev

docker-compose down
