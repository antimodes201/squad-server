#!/bin/bash
# Sample run script.  Primarly used in build / testing

docker rm squad
docker run -it -p 7787-7788:7787-7788/udp -p 27165:27165/udp -p 27165-27166:27165-27166 -p 21114:21114 -p 21114:21114/udp -v /app/docker/temp-vol:/app \
-e INSTANCE_NAME="T3stN3t Test" \
--name squad \
antimodes201/squad-server:latest
