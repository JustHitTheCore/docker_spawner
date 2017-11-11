#!/bin/bash

PORT=4444
IMAGENAME=ctf_workshops

docker build -t $IMAGENAME .
socat tcp-l:$PORT,reuseaddr,fork exec:"./spawn_container.sh $IMAGENAME"

