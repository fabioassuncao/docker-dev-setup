#!/bin/bash

CONTAINERS="mysql postgres mail redis portainer nginx nginx-gen nginx-letsencrypt"

for CONTAINER in $CONTAINERS; do
    if [ "$(docker ps -q -f name=$CONTAINER)" ]; then
        docker stop $CONTAINER && docker rm -f $CONTAINER
    fi
done