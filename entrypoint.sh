#!/bin/bash

# Entrypoint for the docker container
service lighttpd start

# Let script running otherwise container will exit
tail -F /var/log/messages
