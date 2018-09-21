#!/bin/bash

TARGET=$1

if [[ -z $TARGET ]]; then
    echo "ERROR: You need to specify an app:"
    ssh dokku@appstwo.tadl.org apps
    exit 0
fi

ssh dokku@appstwo.tadl.org maintenance:off $TARGET
