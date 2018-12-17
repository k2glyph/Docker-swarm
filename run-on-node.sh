#!/bin/bash
command=$@
for host in 21 22
do
    export DOCKER_HOST=192.168.56.$host
    eval "$command"
done
