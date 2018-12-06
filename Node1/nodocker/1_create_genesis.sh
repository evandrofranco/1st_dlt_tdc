#!/bin/bash

cd ~/samples/nodocker/
export FABRIC_CFG_PATH=$PWD
configtxgen -profile TwoPeersOrdererGenesis -outputBlock genesis.block

