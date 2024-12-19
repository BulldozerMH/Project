#!/bin/bash

# back config

sudo cp /home/ubuntu/Project/site/2.html /etc/www/2/index.html

sudo cp /home/ubuntu/Project/Back/ports.conf /etc/apache2/ports.conf

sudo cp /home/ubuntu/Project/Back/000-default.conf /etc/apache2/sites-available.conf

sudo systemctl restart apache2.service

sudo cp /home/ubuntu/Project/mysql/b2_mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql.service

sudo mysql

STOP REPLICA;

CHANGE MASTER TO MASTER_HOST='10.1.10.250', MASTER_USER='repl', MASTER_PASSWORD='Back1_Repl2024', SOURCE_AUTO_POSITION=1, GET_MASTER_PUBLIC_KEY = 1;

START SLAVE;

exit
