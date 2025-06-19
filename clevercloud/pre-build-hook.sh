#!/bin/bash -l

set -o errexit -o xtrace

cd $APP_HOME
if [ -n "${APP_N8N_DEPENDENCIES//,}" ]; then
  npm install ${APP_N8N_DEPENDENCIES}
fi
