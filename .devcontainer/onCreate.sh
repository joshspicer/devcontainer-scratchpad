#!/bin/bash

npm install -g @devcontainers/cli

cd /tmp
wget https://github.com/bradleyjkemp/grpc-tools/releases/download/v0.2.6/grpc-tools_0.2.6_Linux_amd64.zip -O /tmp/grpc-tools.zip
unzip /tmp/grpc-tools.zip -d /tmp
sudo mv /tmp/grpc* /usr/local/bin