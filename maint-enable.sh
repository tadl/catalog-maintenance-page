#!/bin/bash

TARGET=$1

if [[ -z $TARGET ]]; then
    echo "ERROR: You need to specify a target."
    exit 0
fi

ssh dokku@apps.tadl.org maintenance:custom-page $TARGET < tadl-catalog-maintenance.tar

ssh dokku@apps.tadl.org maintenance:on $TARGET
