###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# Apache 2
### Description
This directory contains the Dockerfile used to build apache2. This includes support for php.
### Building
Run `docker build -t apache2 .` in this directory.
### Running
If you would like to mount a directory with web code in it, do so using `docker run -v <directory-absolute-path>:/var/www/localhost/htdocs -p <host-port>:80 apache2`. Otherwise, launch it using `docker docker run -p <host-port>:80 apache2`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Apache 2](https://www.httpd.apache.org/docs)
