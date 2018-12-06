#!/bin/bash

cd ~/samples/nodocker/
export FABRIC_CFG_PATH=$PWD

export CORE_PEER_MSPCONFIGPATH=/home/ubuntu/samples/nodocker/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

peer chaincode install -n mycc1 -v 0 -p github.com/hyperledger/fabric/examples/chaincode/go/marbles02

peer chaincode instantiate -n mycc1 -v 0 -c '{"Args":["init"]}' -o orderer.example.com:7050 -C ch1
