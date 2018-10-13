#!/bin/bash

# Deploy the server
docker run --rm -d -p 22:22 -v git_server:/home/git git_server && \
echo "The server is running at 127.0.0.1:22";
