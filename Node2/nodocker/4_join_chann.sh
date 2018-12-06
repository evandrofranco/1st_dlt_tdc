#!/bin/bash

cd ~/samples/nodocker
export FABRIC_CFG_PATH=$PWD

#scp <copy your channel file to this server>

export CORE_PEER_MSPCONFIGPATH=/home/ubuntu/samples/nodocker/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

peer channel join -b ch1.block
