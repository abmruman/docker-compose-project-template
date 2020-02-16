#!/bin/bash
#title        : wait.sh
#description  : Waits for 5 sec or time specified
#author       : abmruman
#usage        : `./scripts/wait.sh [time_in_sec]`

x="$1"
[[ -z "$x" ]] && x=5

printf "\n\nWaiting $x sec for things"
while [ $x -gt 0 ]
do
  printf "."
  sleep 1
  x=$(( $x - 1 ))
done

printf "\n\n"
