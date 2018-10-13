#!/bin/bash

# Global variables
red='\033[0;31m';
none='\033[0m';

# Prints a warning
warn () {
	echo -e $red$1$none;
}

# Copy the public rsa key into the current directory
cp ~/.ssh/id_rsa.pub .;

# Build the git_server image
docker build -t git_server .;

# Remove the public key fromthe current directory
rm id_rsa.pub;

# If the git_server volume does not exist, create it
if [ ! "`docker volume ls | grep 'git_server'`" ]; then
	docker volume create git_server;
	# Populate the git volume
	docker run --rm -v git_server:/home/git/mnt git_server ash -c "\
		cp -Rp /home/git/.ssh mnt && \
		chown git:git mnt \
	";
# Else, print a warning
else
	warn "The git_server volume already exists, so it was not created.";
fi
