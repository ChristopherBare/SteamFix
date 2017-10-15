#! /bin/bash

#SteamFixScript
cd

rm -rf /usr/lib/x86_64-linux-gnu/mesa

rm -rf .steam
rm -rf Steam/

sudo apt install --reinstall steam


while true; do
    read -p "Would you like to run steam after the fix? [Y/N]" yn
    case $yn in
        [Yy]* ) steam; break;;
        [Nn]* ) echo "Steam will not run, please do that yourself."; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
