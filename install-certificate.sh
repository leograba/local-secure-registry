#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "You must enter exactly 2 command line argument"
    exit
fi

ssh $1 "sudo mkdir -p /etc/docker/certs.d/$2"
scp certs/domain.crt $1:/etc/docker/certs.d/$2/ca.crt
