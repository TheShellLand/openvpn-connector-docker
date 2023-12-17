#!/bin/bash

# run veilid

cd "$(dirname $0)"; set -xe

docker rm -f openvpn-connector >/dev/null || true
docker run -it \
--name openvpn-connector \
--restart always \
--privileged \
ghcr.io/theshellland/openvpn-connector-docker:latest  $@
