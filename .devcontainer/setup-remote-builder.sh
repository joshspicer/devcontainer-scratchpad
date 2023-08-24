#!/bin/bash

set -e

docker run -d --name buildkitd --privileged moby/buildkit:master
export BUILDKIT_HOST=docker-container://buildkitd
docker buildx create --name=remote --driver=remote
docker buildx use remote

echo "setup remote builder done!"