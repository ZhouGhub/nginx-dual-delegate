#!/bin/sh
docker rmi telecom_im_toremote
docker rmi telecom_im_toself

docker build -t telecom_im_toremote:latest remote
docker build -t telecom_im_toself:latest self