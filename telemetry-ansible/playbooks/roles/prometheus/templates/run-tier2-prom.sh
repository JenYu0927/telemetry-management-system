#!/bin/bash

docker rm -f -v qct-prometheus

docker run -d --name qct-prometheus -p 9090:9090 \
  -v {{ prom_path }}/prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus
