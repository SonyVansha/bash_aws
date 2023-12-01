#!/bin/bash
sudo yum install git gcc-c++ make -y
sudo yum install https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y
sudo yum install nodejs -y
sudo npm install -g --unsafe-perm node-red
node-red