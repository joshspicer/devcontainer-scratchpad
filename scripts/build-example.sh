#!/bin/bash

set -e

# https://docs.docker.com/build/building/env-vars/#buildx_config
export BUILDX_CONFIG=/workspaces/devcontainer-scratchpad/bulidkitd.toml
export EXPERIMENTAL_BUILDKIT_SOURCE_POLICY=/workspaces/devcontainer-scratchpad/policy.json

devcontainer build --workspace-folder /workspaces/devcontainer-scratch/example