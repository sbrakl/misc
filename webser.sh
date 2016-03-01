#!/bin/bash
#This script would install apache2, php and lynx
#update APT repositories
apt-get update
#install apache2
apt-get install apache2 -y
#install php5
apt-get install php5 -y
#install lynx
apt-get install lynx -y
#remove default index.html
cd /var/www/html
rm index.html
#copy website to the www directory
wget -O e.tar.gz https://github.com/sbrakl/Sticky/blob/master/sites/europe.tar.gz?raw=true
#unzip the tar
tar -xvf e.tar.gz
#verify webserver
lynx -dump http://localhost/

