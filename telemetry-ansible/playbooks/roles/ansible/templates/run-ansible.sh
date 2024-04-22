#!/bin/bash

docker rm -f -v qct-ansible

docker run -tid --name qct-ansible \
    -v {{ ansible_path }}/telemetry-ansible:{{ ansible_path }}/telemetry-deployer \
    -v {{ ansible_path }}/ansible.cfg:/etc/ansible/ansible.cfg \
    -v {{ key_path }}/{{ ansible_user }}/.ssh:/root/.ssh \
    docker.io/ansible/centos7-ansible bash
