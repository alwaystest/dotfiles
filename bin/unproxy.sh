#!/usr/bin/env bash
unset ALL_PROXY
unset http_proxy
unset https_proxy
if test $(which git)
then
    git config --global --unset http.proxy
fi

if test $(which npm)
then
    npm config delete proxy
    npm config delete https-proxy
fi
