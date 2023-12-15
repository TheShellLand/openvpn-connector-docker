#!/bin/bash

# entrypoint

set -e

mkdir -p /run/dbus/ \
  && dbus-daemon --system

/bin/bash /ubuntu_22_04.sh "$@"
