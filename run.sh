#!/bin/bash

echo "Install client modules"
cd Public/
bower install

cd ../
echo "Install server modules"
sudo npm install

echo "Start server"
node server.js
