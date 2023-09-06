drop database if exists adlister_db;
create database adlister_db;
use adlister_db;
create user 'user'@'localhost' identified by 'user';
GRANT ALL PRIVILEGES ON adlister_db.* TO 'user'@'localhost';
