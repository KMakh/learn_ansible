#!/bin/bash

docker build -t ssh_ubuntu .

for i in {1..10}; do
    echo "Creating container $i mapping port 222$i to 22"

    docker run -d \
        --name ssh_ubuntu_$i \
        -p 222$i:22 \
        ssh_ubuntu
done
