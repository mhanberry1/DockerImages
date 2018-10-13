###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# MySQL Server
### Description
This directory contains the Dockerfile used to build mysql-server.
### Building
Run `docker build -t mysql-server .` in this directory.
### Running
If you would like to have a non-volatile mysql database, do the following:
1. Create a docker volume using `docker volume create <volume-name>`.
2. Populate the volume using `docker run --rm -v <volume-name>:/mnt mysql-server ash -c "cp -Rp /var/lib/mysql/* /mnt && chown mysql:mysql /mnt"`.
3. When you want to use this volume, launch it using `docker run -v <volume-name>:/var/lib/mysql -p <host-port>:3306 mysql-server`.

Otherwise, launch a volatile mysql-server instance using `docker run -p <host-port>:3306 mysql-server`.
### Additional Resources
* [Docker](https://www.docker.com)
* [MySQL](https://www.mysql.com)
