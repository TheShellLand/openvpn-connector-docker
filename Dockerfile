FROM ubuntu

RUN apt update && \
    apt install -y lsb-release curl sudo dbus

COPY entry.sh /entry.sh

# https://network-gateway.openvpn.com/network-gate/api/v1/scripts/VWJ1bnR1IDIyLjA0/gateway/ubuntu_22_04.sh \
COPY ubuntu_22_04.sh /ubuntu_22_04.sh

ENTRYPOINT ["/bin/bash", "/entry.sh"]
