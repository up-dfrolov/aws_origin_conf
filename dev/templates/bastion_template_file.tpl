#!/bin/bash

# Installing packages
yum install epel-release.noarch -y
yum install vim httpd python-pip unzip -y

# Creating the default index file
chmod 777 /var/www/html/
echo "It Works" >  /var/www/html/index.html

# Enabling web server
systemctl start httpd
systemctl enable httpd

# Installing AWS CLI
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
