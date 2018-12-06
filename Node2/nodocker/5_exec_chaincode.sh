#!/bin/bash

cd ~/samples/nodocker
export FABRIC_CFG_PATH=$PWD

export CORE_CHAINCODE_LOGLEVEL=debug
export CORE_PEER_ADDRESS=127.0.0.1:7052
export CORE_CHAINCODE_ID_NAME=mycc1:0

nohup $GOPATH/src/github.com/hyperledger/fabric/examples/chaincode/go/marbles02/marbles02 &
