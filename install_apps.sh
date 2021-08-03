#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y snapd

### Utility programs
## Grub Customizer
sudo apt-get install -y grub-customizer

## Gnome Tweaks
sudo apt-get install -y gnome-tweaks

### Development programs
## Visual Studio Code
sudo snap install --classic code

## Postman
sudo snap install postman

## MongoDB
# Server
sudo apt-get install gnupg
wget -O - "https://www.mongodb.org/static/pgp/server-5.0.asc" | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Compass
wget -o mongo-compass.deb "https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb"
sudo apt-get install -y mongo-compass.deb
rm -f mongo*.deb

## BeeKeeper
sudo snap install beekeeper-studio

## Docker
curl -fsSL "https://get.docker.com" -o get-docker.sh
sh get-docker.sh
rm get-docker.sh

## NodeJS
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

## TypeScript
sudo npm install -g typescript

## Yarn
sudo apt-get install -y yarn

### Other programs
## Google Chrome
wget -O ~/Downloads/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt-get install -y ~/Downloads/chrome.deb
rm ~/Downloads/chrome.deb

## Pulse Effects
sudo apt-get install -y pulseeffects

## Steam
sudo apt-get install -y steam

## Discord
sudo apt-get install -y discord

## Unzip
sudo apt-get install -y unzip

## FiraCode font
sudo apt-get install -y fonts-firacode

### Some configs
## Git
git config --global user.name "Ives M. Watanabe"
git config --global user.email "ivesmw@gmail.com"
git config --global init.defaultBranch "main"

### Final warnings
echo "Please check if the following programs are on the latest version:"
echo "- MongoDB"
echo "- MongoDB Compass"
echo "- NodeJS"
