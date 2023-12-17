#!/bin/bash

# run veilid

cd "$(dirname $0)"; set -xe

docker rm -f openvpn-connector >/dev/null || true
docker run -it \
--name openvpn-connector \
--restart always \
--cap-add=NET_ADMIN \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
ghcr.io/theshellland/openvpn-connector-docker:latest  $@
