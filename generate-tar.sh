#!/bin/bash

target=$1

if [ -z $target ]; then
    echo "You must specify a target. Either kcl, sbbdl or tadl"
    exit 0
fi

if [ ! -f ${target}-maintenance.html ]; then
    echo "That's not a valid target!"
    exit 0
fi

echo "Found ${target}-maintenance.html"
cp ${target}-maintenance.html maintenance.html && tar cf ${target}-maintenance.tar maintenance.html

echo "Ready to deploy to dokku: ${target}-maintenance.tar"

