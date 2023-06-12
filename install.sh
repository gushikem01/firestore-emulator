#!/bin/bash
sudo apt update
sudo apt install default-jre
sudo apt install default-jdk-headless -y
sudo apt-get install -y openjdk-17-jdk
npm install -g firebase-tools
firebase login
npx firebase init
firebase emulators:start
