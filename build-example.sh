#!/bin/bash

CONFIG=$1

if [ -z "$CONFIG" ]; then
  echo "Usage: $0 <config>"
  exit 1
fi

set -e

# https://docs.docker.com/build/building/env-vars/#buildx_config
export EXPERIMENTAL_BUILDKIT_SOURCE_POLICY=/workspaces/devcontainer-scratchpad/policy.json

devcontainer build --workspace-folder /workspaces/devcontainer-scratchpad/example_configs/$CONFIG