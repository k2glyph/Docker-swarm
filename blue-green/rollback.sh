#!/bin/bash

port1=$1
port2=$2
echo "Replacing $port1 with $port2"
sed -i "s/$port1/$port2/g" haproxy.cfg
docker exec -it $(docker ps -f name=loadbalancer -q) /bin/bash -c "chmod 755 /etc/haproxy/haproxy.cfg"
