###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# LAMP Server
### Description
This directory contains the Dockerfile used to build lamp-server. This includes the following utilities:
* Apache2
* MySQL
* PHP
### Building
Run `docker build -t lamp-server .` in this directory.
### Running
If you would like to have a non-volatile mysql database, do the following:
1. Create a docker volume using `docker volume create <volume-name>`.
2. Populate the volume using `docker run --rm -v <volume-name>:/mnt lamp-server ash -c "cp -Rp /var/lib/mysql/* /mnt && chown mysql:mysql /mnt"`.
3. When you want to use this volume, launch it using `docker run -v <volume-name>:/var/lib/mysql -p <host-port>:3306 -p <host-port>:80 lamp-server`.

Otherwise, launch a volatile lamp-server instance using `docker run -p <host-port>:3306 -p <host-port>:80 lamp-server`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Apache 2](https://www.httpd.apache.org/docs)
* [MySQL](https://www.mysql.com)
* [PHP](https://www.secure.php.net)
