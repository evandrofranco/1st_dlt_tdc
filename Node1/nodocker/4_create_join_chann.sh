#!/bin/bash

cd ~/samples/nodocker/
export FABRIC_CFG_PATH=$PWD

export CORE_PEER_MSPCONFIGPATH=/home/ubuntu/samples/nodocker/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

configtxgen -profile TwoPeersChannel -outputCreateChannelTx ch1.tx -channelID ch1

peer channel create -o orderer.example.com:7050 -c ch1 -f ch1.tx

peer channel join -b ch1.block
