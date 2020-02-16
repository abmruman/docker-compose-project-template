#!/bin/bash
#title        : init.sh
#description  : Initializes by creating `.env` and external NETWORK defined in `.env`
#author       : abmruman
#usage        : `./scripts/init.sh` OR `make init`

set -e

echo
# Create env from env.example if it doesn't exist
if [ -f ".env" ]
then
  echo -e "env file exists"
else
  echo -e "Copying env file"
  cp env.example .env
fi

echo

# Create network if necessary
eval $(egrep '^NETWORK' .env | xargs)
eval $(egrep '^NETWORK_EXTERNAL' .env | xargs)

echo -e "NETWORK: $NETWORK"
echo -e "NETWORK_EXTERNAL: $NETWORK_EXTERNAL"
echo

if [ ! -z "$NETWORK" ] && [ ! -z "$NETWORK_EXTERNAL" ]
then
  if [ "$NETWORK_EXTERNAL" = "true" ]
  then
    docker network ls | grep "$NETWORK" || docker network create "$NETWORK"
  else
    echo -e "Skipping network creation, not external"
  fi
else
  echo -e "\nNETWORK not defined, creation not necessary\n"
fi

echo
