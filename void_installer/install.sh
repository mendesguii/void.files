#!/bin/bash
echo "MUST BE RUN AS SUDO"
# Update packages

xbps-install -Su

# Installing Core packages

xbps-install git i3-gaps xorg xf86-video-intel alacritty chromium firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp chrony unzip xinput
# removing
xbps-remove dmenu

# time configuration (Must DO)

ln -s /etc/sv/openntpd /var/service/
#it might be required to add a sleep before starting the service on config file => exec sleep 5; openntpd -d ${OPTS} 2>&1
sv start openntpd
