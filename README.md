## Ethereum Private Chain

Sample project for creating a local blockchain using geth

## Usage

### Prerequisites

* geth installed from [geth download page](https://geth.ethereum.org/downloads/)
* configurations like firewall policies taken care of

### Chain initialization

Run the following command

```
$ geth --datadir=./chaindata init ./genesis.json
```

### Running geth with the private chain

```
$ geth --datadir=./chaindata
```

## Usage with Docker

Docker container can be created to install geth and all its dependencies easily - it saves time on configuration and setup of node. A standard genesis block json is copied to the container which can be updated once the container is up. RPC ports 30303 and 8545 will be exposed from the container and a volume can be mounted to the private chain folder to utilise the geth.ipc file on the host.
For creating a docker container, use the following commands -

### Creating the docker image

```
$ docker build -t "ethereumprivatechain:0.1" .
```

### Running the container from the image

```
$ docker run -it -v /path/where/you/cloned/the/project/EthereumPrivateChain/chaindata:/root/chaindata -p 32768:30303 -p 32769:8545  ethprivatechain:0.1
```

It lands the user inside the /root folder of the container with geth not running.

### Creating the private network and starting the node

Same steps as initiating and running node with custom genesis block

```
$ geth --datadir=./chaindata init ./genesis.json
```

Starting the node
```
$ geth --nodiscover --datadir=./chaindata
```

Node is now up and running, it can be accessed from applications browsers running on a host system.
