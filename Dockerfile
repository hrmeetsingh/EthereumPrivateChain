FROM ubuntu:16.04
MAINTAINER Harmeet Singh

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y -qq upgrade && \
    apt-get -y -qq install vim software-properties-common && \
    add-apt-repository ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get -y -qq install geth solc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/chaindata
ADD ./genesis.json /root/

EXPOSE 8545
EXPOSE 30303

WORKDIR /root
CMD ["/bin/bash"]
