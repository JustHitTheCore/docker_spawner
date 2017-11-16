#!/bin/bash

PORT=4444
IMAGENAME=ctf_workshops

echo "Building docker image $IMAGENAME"
docker build -t $IMAGENAME .

echo "Hosting socat on port $PORT"
socat tcp-l:$PORT,reuseaddr,fork exec:"./spawn_container.sh $IMAGENAME",pty,stderr

