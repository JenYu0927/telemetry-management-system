#!/bin/bash -x

curl -X PUT -d @/opt/telegraf/telegraf-server.json http://{{ exposed_host }}:8500/v1/agent/service/register
#curl -X PUT -d @/opt/telegraf/telegraf-remote.json http://{{ exposed_host }}:8500/v1/agent/service/register
#curl -X PUT -d @/opt/telegraf/telegraf-switch.json http://{{ exposed_host }}:8500/v1/agent/service/register

