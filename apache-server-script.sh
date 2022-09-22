#!/bin/bash

echo "Service updating..."

apt-get update
apt-get upgrade -y
agt-get install apache2 unzip -y

echo "Application files downloading..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/