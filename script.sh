#!/bin/bash

sudo apt update && sudo apt upgrade -y 
sudo apt install -y nginx 
sudo echo "Hello from host $(hostname)" > /var/www/html/index.html 

