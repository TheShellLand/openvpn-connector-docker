FROM ubuntu

RUN apt update && \
    apt install -y lsb-release curl sudo

RUN curl -O https://network-gateway.openvpn.com/network-gate/api/v1/scripts/VWJ1bnR1IDIyLjA0/gateway/ubuntu_22_04.sh \
    && chmod +x ubuntu_22_04.sh

COPY entry.sh /entry.sh

ENTRYPOINT ["/bin/bash", "/entry.sh"]
