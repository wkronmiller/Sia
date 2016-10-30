#!/bin/bash
docker rm -f siad
docker run --name siad -e APIPASS=$APIPASS -p 127.0.0.1:9980:9980 -P siad
