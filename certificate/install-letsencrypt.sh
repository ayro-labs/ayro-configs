#!/bin/bash

printf "Installing Let's Encrypt..."

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot

printf "Let's Encrypt was installed with success!"
