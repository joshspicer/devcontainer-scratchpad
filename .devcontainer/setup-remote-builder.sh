#!/bin/bash

set -e

# Recreate buildkitd instance
docker rm -f buildkitd || true
docker run -d --name buildkitd --privileged moby/buildkit:latest

# Recreate builder instance
docker buildx rm remote || true
docker buildx create --name=remote --driver=docker-container --use #--buildkitd-flags '--source-policy-file /workspaces/devcontainer-scratchpad/policy.json'

docker buildx use remote

echo "setup remote builder done!"