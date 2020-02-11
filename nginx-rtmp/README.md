###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# Nginx RTMP
### Description
This directory contains the Dockerfile used to build an rtmp server based on nginx.
### Building
Run `docker build -t nginx-rtmp .` in this directory.
### Running
If you would like to mount a directory with web code in it, do so using `docker run -v <directory-absolute-path>:/var/www/localhost/htdocs -p <host-port>:80 apache2`. Otherwise, launch it using `docker docker run -p <host-port>:80 apache2`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Nginx](https://www.nginx.org)
