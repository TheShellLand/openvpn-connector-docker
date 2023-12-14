#!/bin/bash

# run veilid

cd "$(dirname $0)"; set -xe

docker run -it \
--restart always \
--privileged \
ghcr.io/theshellland/openvpn-connector-docker:latest  $@
