#!/bin/bash

IMAGENAME=$1

docker run --rm -i -v `pwd`/tasks:/tasks:ro -u jailed $IMAGENAME bash
