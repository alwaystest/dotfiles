#!/usr/bin/env bash

PROXY=http://127.0.0.1:8001
export ALL_PROXY=$PROXY
if test $(which npm)
then
    npm config set proxy $PROXY
    npm config set https-proxy $PROXY
fi
