#!/bin/bash -x

curl -X PUT http://{{ exposed_host }}:8500/v1/agent/service/deregister/telegraf-{{ host_name }}
#curl -X PUT http://{{ exposed_host }}:8500/v1/agent/service/deregister/node-remote
#curl -X PUT http://{{ exposed_host }}:8500/v1/agent/service/deregister/node-switch

