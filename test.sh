#!/bin/bash

# test veilid

cd "$(dirname $0)"; set -xe

docker run -it --rm \
--entrypoint bash \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
ghcr.io/theshellland/openvpn-connector-docker:latest  $@
