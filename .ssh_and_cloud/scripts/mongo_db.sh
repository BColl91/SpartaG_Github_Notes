#!/bin/bash

# update. We need to ensure everything is up to date
sudo apt update -y

# upgrade- this executes the updates.
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/
# install dnubg and curl
sudo DEBIAN_FRONTEND=noninteractive apt install gnubg curl -y

# add the GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor

# create sources list file
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# update the package list again
sudo apt update -y

# install mongodb
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# manual steps. check status: sudo systemctl status mongod
# change directory to: cd /etc
# sudo nano mongod.conf
# change network interfaces to: net:
#  port: 27017
#  bindIp: 0.0.0.0
# sudo systemctl start mongod
# sudo systemctl status mongod
