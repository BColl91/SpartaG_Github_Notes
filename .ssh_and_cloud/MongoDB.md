# Manual Deployment Guide

### Overview

This guide walks you through setting up a new MongoDB instance on AWS, configuring it, and connecting your application to the database.

### 1. Setting Up a New Database Instance

**Connect to the Instance**

Open Git Bash (or any terminal with SSH support).

Connect to your AWS instance:

- `ssh -i your-key.pem ubuntu@<your-instance-ip>`

-  Update and Install MongoDB

Update package lists:

- `sudo apt update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y`

Install dependencies:

- `sudo DEBIAN_FRONTEND=noninteractive apt install gnubg curl -y`

Add the MongoDB GPG key:

```
 curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
    sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
```

Add MongoDB repository:

```
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] \
https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | \
sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
```

Install MongoDB:

- `sudo apt update -y`

```
sudo apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 \
    mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 \
    mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6
```

**Configure MongoDB**

Allow external connections by modifying the config file:

- `sudo sed -i 's/^  bindIp:.*$/  bindIp: 0.0.0.0/' /etc/mongod.conf`

Start and enable MongoDB to run on boot:

- `sudo systemctl start mongod`
- `sudo systemctl enable mongod`

Verify MongoDB is running:

- `sudo systemctl status mongod`

### 2. Setting Up the Application

**Configure Database Connection**

Set the DB_HOST environment variable:

- `export DB_HOST=mongodb://<database-ip>:27017/posts`

Make this change permanent:

- `echo "export DB_HOST=mongodb://<database-ip>:27017/posts" | sudo tee -a /etc/environment`

**Install and Run the Application**

Navigate to the application directory:

- `cd /path/to/your/app`

Install dependencies:

- `sudo npm install`

- `Seed the database:`

- `node seeds/seed.js`

Start the application using PM2:

- `pm2 start app.js`

### 3. Verification & Troubleshooting

**Check if App is Running**

Check PM2 logs for any errors:

- `pm2 logs`

Check Environment Variable

- `printenv DB_HOST`