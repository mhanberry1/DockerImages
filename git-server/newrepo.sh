#!/bin/ash

# If there are no arguments specified, throw an error
if [ ! "$1" ]; then
	echo "Error: You must specify a project name.";
	exit 1;
fi

# Create a new project
mkdir "/git/$1.git";
git init --bare "/git/$1.git";
