#!/bin/bash

# nginx conf

sudo cp /home/ubuntu/Project/Front/nginx_conf /etc/nginx/sites-available/default

sudo systemctl restart nginx

sudo cp /home/ubuntu/Project/Front/prom_conf /etc/prometheus/prometheus.yml

sudo systemctl restart prometheus
