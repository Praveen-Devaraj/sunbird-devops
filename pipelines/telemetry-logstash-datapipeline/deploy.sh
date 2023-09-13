#!/bin/sh
# Build script
# set -o errexit

env=$1

ansible-playbook --version
ansible-playbook -i ansible/inventories/$env sunbird-devops/ansible/deploy.yml --tags "stack-sunbird" --extra-vars "service_name=telemetry-logstash-datapipeline deploy_telemetry_logstash_datapipeline=True" --vault-password-file /run/secrets/vault-pass