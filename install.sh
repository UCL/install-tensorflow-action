#!/bin/bash

set -e

if [ "$#" -lt 1 ]; then
    version="2.11.0"
    os="linux"
elif [ "$#" -lt 2 ]; then
    version="$1"
    os="linux"
else
    version="$1"
    os="$2"
fi

FILENAME="libtensorflow-cpu-$os-x86_64-$version.tar.gz"
echo "Using $FILENAME"
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
sudo tar -C /usr/local -xzf ${FILENAME}
if [[ $os == "linux" ]]; then
    sudo ldconfig /usr/local/lib

