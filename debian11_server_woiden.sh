#!/bin/bash

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi


# removing apache
sudo apt update
sudo apt purge apache*

# upgrade
sudo apt update && sudo apt upgrade

# install nginx
sudo apt install nginx
