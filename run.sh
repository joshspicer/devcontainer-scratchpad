#!/bin/bash

CONFIG=$1

if [ -z "$CONFIG" ]; then
  echo "Usage: $0 < `ls -d example_configs/* | cut -f2 -d'/'  | awk '{print}' ORS=' '`>"
  exit 1
fi

set -e

# https://docs.docker.com/build/building/env-vars/#buildx_config
export EXPERIMENTAL_BUILDKIT_SOURCE_POLICY=/workspaces/play/policy.json

devcontainer build --workspace-folder /workspaces/play/example_configs/$CONFIG
