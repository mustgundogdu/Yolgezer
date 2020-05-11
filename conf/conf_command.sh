#!/bin/bash


# Create Default database and user and import default database. 

echo " "
echo "Connection username for the Database Configuration :"
read username

sudo mysql -u $username -p <<My_command
SET GLOBAL validate_password_policy=LOW;
CREATE USER 'yolgezer'@'localhost' IDENTIFIED BY 'g1b3kc4t';
GRANT ALL PRIVILEGES ON *.* TO 'yolgezer'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE GHDB;
CREATE SCHEMA dork;
My_command
$(sudo mysql -u $username -p GHDB < google_hacking.sql)
$(sudo mysql -u $username -p dork < dork.sql)
