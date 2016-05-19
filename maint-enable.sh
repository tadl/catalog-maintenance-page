#!/bin/bash

TARGET=$1

if [[ -z $TARGET ]]; then
    echo "ERROR: You need to specify an app:"
    ssh dokku@apps.tadl.org apps
    exit 0
fi

if [[ ! -e "tadl-catalog-maintenance.tar" ]]; then
    echo "ERROR: run generate-tar.sh first!"
    exit 0
fi

ssh dokku@apps.tadl.org maintenance:custom-page $TARGET < tadl-catalog-maintenance.tar

ssh dokku@apps.tadl.org maintenance:on $TARGET
