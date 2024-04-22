#!/bin/bash

docker exec qct-ansible ansible-playbook {{ tier2_playbooks_path }}/playbooks/deploy_osp_instence.yml \
  -i {{ tier2_playbooks_path }}/inventory.yml

#this playbooks_path is different to playbooks_path in ansible role
