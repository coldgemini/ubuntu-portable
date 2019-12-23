#!/bin/bash
COUNTER=0

while [ 1 ]
do
  # Check whether or not socket exists
  if [ -S /tmp/.X11-unix/X0 ]
  then
    exit 0
  fi

  ((++COUNTER))

  if [ $COUNTER -gt 20 ]
  then
    exit 1
  fi

  sleep 0.5
done
