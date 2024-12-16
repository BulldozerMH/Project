#!/bin/bash

# Установка ELK

sudo apt install default-jdk -y

cd /home/ubuntu/dist

sudo dpkg -i elasticsearch-8.9.1-amd64.deb

sudo cp /home/ubuntu/Project/ELK/jvm.options /etc/elasticsearch/jvm.options.d/jvm.options

sudo cp /home/ubuntu/Project/ELK/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

sudo systemctl deamon-reload

sudo systemctl enable --now elasticsearch.service

sudo dpkg -i kibana-8.9.1-amd64.deb

sudo systemctl deamon-reload

sudo systemctl enable --now kibana.service

sudo cp /home/ubuntu/Project/ELK/kibana.yml /etc/kibana/kibana.yml

sudo systemctl restart kibana

sudo dpkg -i logstash-8.9.1-amd64.deb

sudo systemctl enable --now logstash.service

sudo cp /home/ubuntu/Project/ELK/logstash.yml /etc/logstash/logstash.yml

sudo cp /home/ubuntu/Project/ELK/logstash-front-es.conf /etc/logstash/conf.d/logstash-front-es.conf

sudo systemctl restart logstash.service

sudo dpkg -i filebeat-8.9.1-amd64.deb

sudo cp /home/ubuntu/Project/ELK/filebeat.yml /etc/filebeat/filebeat.yml

sudo systemctl restart filebeat
