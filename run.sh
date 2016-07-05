#!/bin/sh

docker kill imif_to_remote
docker rm imif_to_remote

docker kill imif_to_self
docker rm imif_to_self

docker run -d --name 'imif_to_remote' -p 8001:8001 telecom_im_toremote
docker run -d --name 'imif_to_self' -p 80:80 telecom_im_toself