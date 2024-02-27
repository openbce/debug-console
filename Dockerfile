FROM ubuntu:22.04

RUN apt-get update && apt-get -y install \
    tcpdump iproute2 net-tools \
    build-essential protobuf-compiler libudev-dev pkg-config libclang-dev libibverbs-dev libpci-dev \
    libcairo2-dev libgirepository1.0-dev python3 python3-pip python3-gi network-manager-dev \
    git vim curl pciutils

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y -q

RUN $HOME/.cargo/bin/cargo install --git https://github.com/openbce/ufmclient
RUN $HOME/.cargo/bin/cargo install --git https://github.com/openbce/myhca
RUN $HOME/.cargo/bin/cargo install nmstatectl

ENTRYPOINT ["sh", "-c", "exec tail -f /dev/null"]
