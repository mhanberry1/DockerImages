###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# MySQL Server
### Description
This directory contains the Dockerfile used to build an ssh-server image.
### Building
Edit the values marked "changeme" in the Dockerfile , then run `docker build -t ssh-server .` in this directory.
### Running
To deploy an instance, use `docker run -d -p <host-port>:22 ssh-server`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Open SSH](https://www.openssh.com)
