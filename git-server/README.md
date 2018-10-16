###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# MySQL Server
### Description
This directory contains the Dockerfile used to build a  git-server image.
### Building
Edit the values marked "changeme" in the Dockerfile , then run `docker build -t git-server .` in this directory.
### Running
If you would like to have a non-volatile git server, do the following:
1. Create a docker volume using `docker volume create <volume-name>`.
2. Populate the volume using `docker run --rm -v <volume-name>:/mnt git-server ash -c "cp -Rp /git/* /mnt && chown git:git /mnt"`.
3. When you want to use this volume, launch it using `docker run -v <volume-name>:/git -p <host-port>:22 git-server`.

Otherwise, launch a volatile git-server instace using `docker run -d -p <host-port>:22 git-server`.
### Creating a new repository
To create a new repository, make sure a git-server instance is deployed and run `ssh [-p <host-port>] git@localhost "newrepo <project-name>"`.
### Additional Resources
* [Docker](https://www.docker.com)
* [Git](https://git-scm.com)
