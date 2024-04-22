FULL_PATH="$(realpath $0)"
TELEMETRY_DIR_PATH="$(dirname $FULL_PATH)"

ansible-playbook -i $TELEMETRY_DIR_PATH/inventory.yml $TELEMETRY_DIR_PATH/playbooks/deploy_osp_exposed_host.yml \
  -e "playbooks_path=$TELEMETRY_DIR_PATH"
