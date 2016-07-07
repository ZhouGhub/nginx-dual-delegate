#!/bin/sh

docker build -t telecom_im_toremote:latest remote
docker build -t telecom_im_toself:latest self