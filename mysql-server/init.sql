use mysql;
flush privileges;
grant all privileges on *.* to 'root'@'%' identified by '$MYSQL_ROOT_PASS' with grant option;
grant all privileges on *.* to 'root'@'localhost' with grant option;
update user set password = password('$MYSQL_ROOT_PASS') where user = 'root' and host = 'localhost';
create database $MYSQL_DATABASE;
grant all on $MYSQL_DATABASE.* to '$MYSQL_USER'@'%' identified by '$MYSQL_USER_PASS';
