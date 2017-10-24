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
