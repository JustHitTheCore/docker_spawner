#!/bin/bash

IMAGENAME=$1

docker build -t $IMAGENAME .
docker run --rm -i -v `pwd`/tasks:/tasks:ro -u jailed $IMAGENAME bash
