#!/bin/bash

sudo mysql -e 'show databases;'

echo "Введите имя базы данных"

read db

sudo mysql -e 'stop replica;'

sudo mkdir /home/ubuntu/mysql_backup

table_dest=//home/ubuntu/mysql_backup

for table in `mysql -u root -N -B -e 'show tables from '$db''`;
do
    echo "Создан бэкап таблицы $table"
    mysqldump --add-drop-table --add-locks --create-options --disable-keys --extended-insert --single-transaction --quick --set-charset --events --routines --triggers --set-gtid-purged=OFF --source-data=2 -u root $db $table > $table_dest/$table.sql
    done;

sudo mysql -e 'start replica;'    
