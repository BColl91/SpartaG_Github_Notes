#!/bin/bash

# update
sudo apt update -y

sudo systemctl stop packagekit

# upgrade
sudo apt upgrade -y

# install nginx
sudo apt install nginx -y

# edit nginx config with reverse proxy settings
sudo sed -i '51c\ proxy_pass http://localhost:3000;' /etc/nginx/sites-available/default

# restart nginx
sudo systemctl restart nginx

# enable nginx
sudo systemctl enable nginx

# get app code
git clone https://github.com/BColl91/Sparta_app.git

# install nodejs version 20.x
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\sudo apt-get install -y nodejs
 
# check version
node -v

# cd into cloned directory
cd Sparta_app

# cd into app
cd app

# create environment variable for mongoDB - can make it persistent by adding to .bashrc file
# export DB_HOST=mongodb://<db-ip-address>:27017/posts

# install dependencies
sudo npm install

# seed the database
# node seeds/seed.js

# install pm2 - process manager package for nodejs apps
sudo npm install pm2 -g

# kill any running node processes that could interfere - idempotency
pm2 kill

# run the app with pm2
# pm2 start app.js

# runs the app after instance is restarted
sudo pm2 startup