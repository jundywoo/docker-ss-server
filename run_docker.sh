#!/bin/bash

name=$1

if [[ $name == "" ]];  then
  name="ss-server"
fi

docker stop $name
docker rm $name
docker run -d --restart unless-stopped -v /home/ec2-user/sss.json:/tmp/sss.json -p 13348:13348 --name $name docker-ss-server
