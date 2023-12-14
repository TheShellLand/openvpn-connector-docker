#!/bin/bash

# test veilid

cd "$(dirname $0)"; set -xe

docker run -it \
--entrypoint bash \
--restart always \
ghcr.io/theshellland/openvpn-connector-docker:latest  $@
