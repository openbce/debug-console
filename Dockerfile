FROM ubuntu:22.04

RUN apt-get update && apt-get -y install \
    tcpdump iproute2 net-tools \
    build-essential protobuf-compiler\
    git vim curl

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y -q

RUN cargo install --git https://github.com/openbce/ufmclient
RUN cargo install --git https://github.com/openbce/myhca

