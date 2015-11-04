
# Docker Raspberry Pi (ARM) based lighttpd image

This repo contains a Dockerfile that create a lighttpd image based on Debian Jessie (ARM).
It will pull the master image from remonlam/rpi-rasbian:jessie

For more information how I created the "master" image based on Debian Jessie please take a look @ https://github.com/remonlam/rpi-docker-debian-jessie

## How to use the Docker file?
Well first you need to have a Raspberry Pi (perhaps any other ARMv7 based machine could also work) that will run Rasbian Weezy or Jessie and have Docker installed, I would recommand Jessie because you can install Docker true a simple "apt-get install docker.io".

Okay so you have installed everything and you could start Docker what's next?
Create a directory in for example /home/pi/http/ and download the Dockerfile (make sure it begins with the capital D!!!)

###"Create a new directory "http" in /home/pi/"
mkdir /home/pi/http/

###"Download the Dockerfile from GitHub and put it in the direcotry we just created"
wget -P /home/pi/http https://raw.githubusercontent.com/remonlam/rpi-docker-http/master/Dockerfile

###"Create a new image based on the Dockerfile, this could take some time!"
docker build -t rpi-httpd .

###"Now we have a new image called rpi-httpd"
docker images

###"Let's start a container form the image"
docker run -d -p 80:80 rpi-http /entrypoint.sh

Note: if you get a exec message you probably didn't run it on a ARM based machine ;-)
