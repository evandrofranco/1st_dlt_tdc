#!/bin/bash

cd ~/samples/nodocker/
export FABRIC_CFG_PATH=$PWD

mkdir -p /var/hyperledger/fabric
cp -r /home/ubuntu/samples/nodocker/crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/msp /var/hyperledger/fabric/msp
cp -r /home/ubuntu/samples/nodocker/crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls /var/hyperledger/fabric/tls

export CORE_LOGGING_LEVEL=DEBUG
export CORE_PEER_NETWORKID=peer1.org1.example.com
export CORE_PEER_ID=peer1.org1.example.com
export CORE_PEER_COMMITTER_LEDGER_ORDERER=orderer.example.com:7050
export CORE_PEER_ADDRESS=127.0.0.1:7051
export CORE_PEER_GOSSIP_IGNORESECURITY=true
export CORE_PEER_GOSSIP_BOOTSTRAP=<your peer1 IP>
export CORE_PEER_GOSSIP_EXTERNALENDPOINT=peer1.org1.example.com:7051
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_PEER_TLS_ENABLED=false

###Couch DB
export CORE_LEDGER_STATE_STATEDATABASE=CouchDB
export CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=<couch db docker ip>:6984
export CORE_LEDGER_STATE_COUCHDBCONFIG_USERNAME=
export CORE_LEDGER_STATE_COUCHDBCONFIG_PASSWORD=

nohup peer node start --peer-chaincodedev=true &
