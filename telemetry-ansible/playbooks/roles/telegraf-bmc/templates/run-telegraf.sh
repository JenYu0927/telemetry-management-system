#!/bin/bash

docker rm -f -v qct-telegraf-server

docker run -d --name qct-telegraf-server \
  -e HOST_MOUNT_PREFIX=/hostfs -e HOST_PROC=/hostfs/proc \
  -v /:/hostfs:ro -v /dev:/dev:ro \
  -v {{ telegraf_path }}/telegraf-server.conf:/etc/telegraf/telegraf.conf \
  -p 9274:9274 10.102.50.206:5000/nfvd/telegraf:af3f7903


#docker rm -f -v qct-telegraf-remote

#docker run -tid --name qct-telegraf-server -p 9275:9275 \
#    -v {{ telegraf_path }}/telegraf-remote.conf:/etc/telegraf/telegraf.conf \
#    --privileged 10.102.50.206:5000/nfvd/telegraf:af3f7903 bash


#docker rm -f -v qct-telegraf-switch

#docker run -tid --name qct-telegraf-swithc -p 9276:9276 \
#    -v {{ telegraf_path }}/telegraf-switch.conf:/etc/telegraf/telegraf.conf \
#    --privileged 10.102.50.206:5000/nfvd/telegraf:af3f7903 bash

