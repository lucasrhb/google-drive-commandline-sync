#!/bin/bash
#author: Lucas Ludziejewski

echo "Add grive repo"
sudo add-apt-repository ppa:thefanclub/grive-tools

echo "Update apt-get packages list"
sudo apt-get update

echo "Instal Google Drive Sync Client - GRIVE"
sudo apt-get install -y grive-tools

echo "Go to yout $HOME/Google Drive directory and run initial setup and sync"
cd ~/Google\ Drive
gdrive -a

exit 0;

