#!/bin/bash

upload()
{
    cd $1
    bash update.sh upload
    cd ..
}

download()
{
    cd $1
    bash update.sh download
    cd ..
}

case "$1" in
    'upload')
        upload $2
        ;;
    'download')
        download $2
        ;;
    *)
    echo "Didn't match anything"
    echo "Usage: update upload idea"
    echo "Usage: update download idea"
esac
