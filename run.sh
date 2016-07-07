#!/bin/sh

docker kill imif_to_remote
docker rm imif_to_remote

docker kill imif_to_self
docker rm imif_to_self

mkdir -p /var/log/nginx_dual_delegate/toremote
mkdir -p /var/log/nginx_dual_delegate/toself

docker run -d --name 'imif_to_remote' -p 8001:8001 -v /var/log/nginx_dual_delegate/toremote:/var/log/nginx telecom_im_toremote
docker run -d --name 'imif_to_self' -p 80:80 -v /var/log/nginx_dual_delegate/toself:/var/log/nginx telecom_im_toself