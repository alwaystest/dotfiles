#!/usr/bin/env bash
unset ALL_PROXY
if test $(which npm)
then
    npm config delete proxy
    npm config delete https-proxy
fi
