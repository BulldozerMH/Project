#!/bin/bash

#front+grafana

sudo apt upgrade

sudo apt install nginx -y

sudo apt install prometheus-node-exporter -y

sudo apt install -y adduser libfontconfig1 musl

sudo dpkg -i /home/ubuntu/dist/grafana_11.3.1_amd64.deb

sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
