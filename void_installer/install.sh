#!/bin/bash
echo "MUST BE RUN AS SUDO"
# Update packages

xbps-install -Su

# Installing Core packages
xbps-install git i3-gaps xorg xf86-video-intel alacritty chromium firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp chrony unzip xinput qbittorrent pz7ip compton 

# removing
xbps-remove dmenu

echo "Setting service for NTPD(Chrony)"
# time configuration (Must DO)
ln -s /etc/sv/openntpd /var/service/
sv start openntpd

echo "Creating a SSH key for github"
ssh-keygen -o -t rsa -C "guilhermemendes789@gmail.com"

echo "~ Install Script Finished ~"
