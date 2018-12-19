#!/bin/bash

port1=$1
port2=$2
echo "Replacing $port1 with $port2"
sed -i "s/$port1/$port2/g" ./haproxy/haproxy.cfg
#chmod 777 ./haproxy/haproxy.cfg
