###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# MySQL Server
### Description
This directory contains the Dockerfile used to build an sftp-server image. This image also provides ssh and scp capabilities.
### Building
Edit the values marked "changeme" in the Dockerfile , then run `docker build -t sftp-server .` in this directory.
### Running
To deploy an instance, use `docker run -d -p <host-port>:22 sftp-server`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Open SSH](https://www.openssh.com)
