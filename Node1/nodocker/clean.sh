#!/bin/bash

echo "$ts: Encerrando Chaincode!"
for pid in $(ps -ef | grep marbles02 | grep -v grep | awk '{print $2}'); do sudo kill -9 $pid; done

echo "$ts: Encerrando Peer!"
for pid in $(ps -ef | grep peer | grep -v grep | awk '{print $2}'); do sudo kill -9 $pid; done

echo "$ts: Encerrando Orderer!"
for pid in $(ps -ef | grep orderer | grep -v grep | awk '{print $2}'); do sudo kill -9 $pid; done

echo "$ts: Encerrando CouchDB"
docker kill $(docker ps -q)

rm -rf ch1.block ch1.tx genesis.block nohup.out
rm -rf /var/hyperledger/*
#ls -latr /var/hyperledger/
#ls -latr ~/samples/nodocker/
