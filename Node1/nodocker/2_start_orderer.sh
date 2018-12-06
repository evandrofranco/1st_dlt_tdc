#!/bin/bash

cd ~/samples/nodocker/
export FABRIC_CFG_PATH=$PWD

export ORDERER_GENERAL_LISTENADDRESS=orderer.example.com
export ORDERER_GENERAL_GENESISMETHOD=file
export ORDERER_GENERAL_GENESISFILE=$PWD/genesis.block
export CORE_LOGGING_LEVEL=DEBUG
export ORDERER_GENERAL_LOCALMSPID=OrdererMSP
export ORDERER_GENERAL_LOCALMSPDIR=/home/ubuntu/samples/nodocker/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp

nohup orderer &
