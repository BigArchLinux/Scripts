#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/rob-savoury.gpg --keyserver keyserver.ubuntu.com --recv-keys E996735927E427A733BB653E374C7797FB006459
sudo gpg --list-keys
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/rob-savoury.gpg --keyserver keyserver.ubuntu.com --recv-keys E996735927E427A733BB653E374C7797FB006459
echo 'deb [signed-by=/usr/share/keyrings/rob-savoury.gpg] https://ppa.launchpadcontent.net/savoury1/ffmpeg4/ubuntu jammy main' | sudo tee -a /etc/apt/sources.list.d/ffmpeg-4-rob-savoury.list
echo 'deb [signed-by=/usr/share/keyrings/rob-savoury.gpg] https://ppa.launchpadcontent.net/savoury1/ffmpeg5/ubuntu jammy main' | sudo tee -a /etc/apt/sources.list.d/ffmpeg-5-rob-savoury.list
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y ffmpeg
ffmpeg -version
echo "DONE!"
