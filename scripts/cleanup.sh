#!/bin/bash
#title        : cleanup.sh
#description  : Removes docker containers, volume, network, .env file for this project.
#author       : abmruman
#usage        : `./scripts/cleanup.sh` OR `make clean`

set -e

# `make clean` will remove some files that are not included in version control
# Use with caution
./scripts/down.sh
echo

eval $(egrep '^NETWORK' .env | xargs)
eval $(egrep '^NETWORK_EXTERNAL' .env | xargs)

echo "Are you sure, you want to remove these? (This process is irreversible) [y]es/[n]o"
echo

read -p "Volumes: " -r ANSWER
echo
if [[ "$ANSWER" =~ ^[Yy][Ee]?[Ss]?$ ]] ; then
  echo -n "Removing Volumes: "
  docker-compose down -v
else
  echo "skipping volumes..."
fi
echo

if [[ ! -z "$NETWORK" ]] && [[ $(docker network ls | grep "$NETWORK") ]] ; then
  read -p "Network ("$NETWORK"): " -r ANSWER
  echo
  if [[ "$ANSWER" =~ ^[Yy][Ee]?[Ss]?$ ]] ; then
    echo -n "Removing Network: "$NETWORK""
    docker network ls | grep "$NETWORK" && docker network rm "$NETWORK" | echo
  else
    echo "skipping network..."
  fi
echo
fi

read -p ".env file: " -r ANSWER
echo
if [[ "$ANSWER" =~ ^[Yy][Ee]?[Ss]?$ ]] ; then
  echo "Removing .env..."
  rm .env
else
  echo "skipping .env..."
fi
echo
