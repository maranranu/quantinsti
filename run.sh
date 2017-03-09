#!/bin/bash

read -p "Enter MySQL username: " username
read -s -p "Enter MySQL password: " password

echo "Creating database: quantinsti_assignment..."
mysql -u $username -p$password -e "CREATE DATABASE quantinsti_assignment;"

echo "Creating table and load data..."
mysql -u $username -p$password quantinsti_assignment < quantinsti.sql

echo "Installing client modules..."
cd Public/
bower install

cd ../
echo "Installing server modules..."
sudo npm install

echo "Starting server..."
node server.js
