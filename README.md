###### author: Madison Hanberry
###### contact: mhanberry@protonmail.com
###### license: GPL-2.0+
# Docker Images
### Description
This project contains the code necessary to build a variety of common utilities as docker images. Every image is based off of alpine linux for maximum efficiency.
### Dependencies
* [Docker](https://docs.docker.com/install)
### Building
Most images can be build simply by navigating to the appropriate directory and running `docker build -t <image-name> .`. There are some images which contain user-defined variables. Check out the `README.md` file in each directory for further instructions.
### Running
All images can be run using `docker run <image-name>`. Recommendations on how to create non-volatile volumes can be found in each directory's `README.md` file.
### Additional Resources
* [Docker](https://www.docker.com)
* [Alpine](https://www.alpinelinux.org)
