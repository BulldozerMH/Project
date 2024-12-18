#!/bin/bash

# back config

sudo cp /home/ubuntu/Project/site/1.html /etc/www/1/index.html

sudo cp /home/ubuntu/Project/Back/ports.conf /etc/apache2/ports.conf

sudo cp /home/ubuntu/Project/Back/000-default.conf /etc/apache2/sites-available.conf

sudo systemctl restart apache2.service

sudo cp /home/ubuntu/Project/mysql/b1_mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql.service

sudo mysql

CREATE USER repl@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'Back1_Repl2024';

GRANT REPLICATION SLAVE ON *.* TO repl@'%';

exit
