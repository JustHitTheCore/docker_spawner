#!/bin/bash

IMAGENAME=$1

echo "Provide password:"
read password

if [ "$password" == "$PASSWORD" ]; then
    echo "Good pass, spawning docker container for you!"
    docker run --rm -i -v `pwd`/tasks:/tasks:ro -u jailed $IMAGENAME bash
else
    echo "Wrong password!"
fi

