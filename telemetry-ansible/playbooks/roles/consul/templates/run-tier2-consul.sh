#!/bin/bash

docker rm -f -v qct-consul

docker run -d --name=qct-consul -e CONSUL_LOCAL_CONFIG='{ "datacenter":"SanJose_OSP"}' \
  -e CONSUL_CLIENT_LAN_ADDRESS='0.0.0.0' \
  -p 8500:8500 bitnami/consul:1.7.2-debian-10-r9 
