#!/bin/bash

echo Iniciando docker
docker run -d --rm -it --network="bridge" --name couchdb1 -p 6984:5984 -e COUCHDB_USER= -e COUCHDB_PASSWORD= hyperledger/fabric-couchdb
