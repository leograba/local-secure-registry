#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "You must enter exactly 1 command line argument"
    exit
fi

openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
    -x509 -days 365 -out certs/domain.crt \
    -subj "/CN=$1"
