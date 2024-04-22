#!/bin/bash -x

#tier 2
curl -X PUT -d @/opt/consul/telegraf-server.json http://{{ exposed_host }}:8500/v1/agent/service/register
#curl -X PUT -d @/opt/consul/telegraf-remote.json http://{{ exposed_host }}:8500/v1/agent/service/register
