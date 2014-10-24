#!/bin/bash
#author: Lucas Ludziejewski

echo "Add grive repo"
sudo add-apt-repository ppa:thefanclub/grive-tools

echo "Update apt-get packages list"
sudo apt-get update

echo "Instal Google Drive Sync Client - GRIVE"
sudo apt-get install -y grive-tools

echo "Create '$HOME/Google' Drive directory and run initial setup and sync"
mkdir ~/Google\ Drive
cd ~/Google\ Drive
gdrive -a

mkdir ~/.gsync

( echo "#!/bin/bash";
  echo "author: Lucas Ludziejewski";
  echo "";
  echo "cd ~/Google\ Drive && grive";
  echo "";
  echo "exit 0;";
) > ~/.gsync/syncron.sh
chmod 711 ~/.gsync/syncron.sh

echo
echo "If you do not want use it manualy or sync via GUI, add ~/.gsync/syncron.sh to crontab"
echo "*/5 * * * * ~/.gsync/syncron.sh"
echo
echo "If you are happy tu use GUI, find Grive Setup and Google Drive in your X window manager menu"
echo


exit 0;

