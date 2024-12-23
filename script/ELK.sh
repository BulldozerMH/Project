#!/bin/bash

# Установка ELK

sudo apt install default-jdk -y

cd /home/ubuntu/dist

# elastic

sudo dpkg -i elasticsearch-8.9.1-amd64.deb

sudo systemctl daemon-reload

sudo systemctl enable --now elasticsearch.service

sudo cp /home/ubuntu/Project/ELK/jvm.options /etc/elasticsearch/jvm.options.d/jvm.options

sudo cp /home/ubuntu/Project/ELK/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

sudo systemctl restart elasticsearch.service

# kibana

sudo dpkg -i kibana-8.9.1-amd64.deb

sudo systemctl daemon-reload

sudo systemctl enable --now kibana.service

sudo cp /home/ubuntu/Project/ELK/kibana.yml /etc/kibana/kibana.yml

sudo systemctl restart kibana

# logstash

sudo dpkg -i logstash-8.9.1-amd64.deb

sudo systemctl daemon-reload

sudo systemctl enable --now logstash.service

sudo cp /home/ubuntu/Project/ELK/logstash.yml /etc/logstash/logstash.yml

sudo cp /home/ubuntu/Project/ELK/logstash-front-es.conf /etc/logstash/conf.d/logstash-front-es.conf

sudo systemctl restart logstash.service

# filebeat

sudo dpkg -i filebeat-8.9.1-amd64.deb

sudo cp /home/ubuntu/Project/ELK/filebeat.yml /etc/filebeat/filebeat.yml

sudo systemctl restart filebeat
