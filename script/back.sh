#!/bin/bash

# back script

sudo apt update

sudo apt upgrade 

sudo apt install apache2 -y

sudo apt install mysql-server -y

sudo apt install prometheus-node-exporter -y

sudo dpkg -i /home/ubuntu/dist/filebeat-8.9.1-amd64.deb
