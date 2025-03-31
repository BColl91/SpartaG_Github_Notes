#!/bin/bash

# Update system packages
sudo apt update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/
# install dnubg and curl
sudo DEBIAN_FRONTEND=noninteractive apt install gnubg curl -y

# add the GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
    sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

# Add MongoDB repository
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] \
https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | \
sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# update the package list again
sudo apt update -y

# install mongodb
sudo apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# change mongoDB config to allow external connections
sudo sed -i '21c\  bindIp: 0.0.0.0' /etc/mongod.conf

# Start MongoDB and enable it on boot
sudo systemctl start mongod
sudo systemctl enable mongod

# manual steps. in app terminal check status: 
#   sudo systemctl status mongod
# change directory to: 
#   cd /etc
#   sudo nano mongod.conf
# change network interfaces to: 
#   net: port: 27017 bindIp: 0.0.0.0
#   sudo systemctl start mongod
#   sudo systemctl status mongod
# Set DB_HOST environment variable and persist in .bashrc
#    echo "export DB_HOST=mongodb://0.0.0.0:27017/posts" | sudo tee -a /etc/environment
#    export DB_HOST=mongodb://0.0.0.0:27017/posts
#   sudo npm install
#   node seeds/seed.js
#    pm2 start app.js
