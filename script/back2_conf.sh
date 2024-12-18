#!/bin/bash

# back config

sudo cp /home/ubuntu/Project/site/2.html /etc/www/2/index.html

sudo cp /home/ubuntu/Project/Back/ports.conf /etc/apache2/ports.conf

sudo cp /home/ubuntu/Project/Back/000-default.conf /etc/apache2/sites-available.conf

sudo systemctl restart apache2.service

#sudo cp /home/ubuntu/Project/mysql/mysqld.cnf /etc/mysql/mysqld.cnf

#sudo systemctl restart mysql.service
