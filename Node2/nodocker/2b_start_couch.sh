#!/bin/bash

echo Iniciando CouchDB
docker run -d --rm -it --network="bridge" --name couchdb2 -p 6984:5984 -e COUCHDB_USER= -e COUCHDB_PASSWORD= hyperledger/fabric-couchdb
