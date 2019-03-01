#!/usr/bin/env bash
set -ex 

# script to install docker on ubuntu 18.04 

# update your existing list of packages
sudo apt update

#  install a few prerequisite packages which let apt use packages over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# update the package database with the Docker packages from the newly added repo
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce

# add user group, run docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER

# setup some dependencies
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential bison

