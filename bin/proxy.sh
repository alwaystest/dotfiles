#!/usr/bin/env bash

case "$1" in
    'v2ray')
        PROXY=http://127.0.0.1:8001
        ;;
    'clash')
        PROXY=http://127.0.0.1:7890
        ;;
    *)
esac
echo $PROXY
export http_proxy=$PROXY
export https_proxy=$PROXY
export ALL_PROXY=$PROXY
if test $(which git)
then
git config --global http.proxy $PROXY
fi

if test $(which npm)
then
    npm config set proxy $PROXY
    npm config set https-proxy $PROXY
fi
