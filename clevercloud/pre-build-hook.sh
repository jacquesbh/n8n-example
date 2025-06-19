#!/bin/bash -l

set -o errexit -o xtrace

mkdir -p ~/.n8n/nodes
cd ~/.n8n/nodes
for node_name in ${APP_GLOBAL_DEPENDENCIES//, }; do
  npm install -g $node_name
done
