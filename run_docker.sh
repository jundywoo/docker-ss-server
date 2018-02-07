#!/bin/bash

sss_file=$1
name=$2

if [[ ! -f $sss_file ]];  then
  echo "Can find the server config file"
  echo "  run_docker.sh <sss.json> [<docker name>]"
  exit 1
fi

port=`jq -r '.server_port' $sss_file`

if [[ $name == "" ]]; then
  name='ss-server'
fi

docker stop $name 2>&1 >> /dev/null
docker rm $name 2>&1 >> /dev/null
docker run -d --restart unless-stopped -v $sss_file:/tmp/sss.json -p $port:$port --name $name kennieng/docker-ss-server 2>&1 >> /dev/null

echo "Started docker ss-server"
