#!/bin/bash 

# build 

cd "$(dirname $0)"
set -xe

docker build $@ -t ghcr.io/theshellland/openvpn-connector-docker:latest -f Dockerfile .
