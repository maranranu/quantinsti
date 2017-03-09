#!/bin/bash

read -p "Enter MySQL username: " username
read -s -p "Enter MySQL password: " password

echo "Add MySQL credential into JSON file"
rm config.json
echo "{\"username\":\"$username\", \"password\":\"$password\"}" >> config.json

echo "Creating database: quantinsti_assignment..."
mysql -u $username -p$password -e "CREATE DATABASE quantinsti_assignment;"

echo "Creating table and load data..."
mysql -u $username -p$password quantinsti_assignment < quantinsti.sql

echo "Installing client modules..."
cd Public/
sudo bower install --allow-root

cd ../
echo "Installing server modules..."
sudo npm install

echo "Starting server..."
node server.js
