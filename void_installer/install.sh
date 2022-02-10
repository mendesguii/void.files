#!/bin/bash
echo "MUST BE RUN AS SUDO"
# Update packages

xbps-install -Su

# Installing Core packages

xbps-install git i3-gaps xorg xf86-video-intel alacritty chromium firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp openntpd

# removing
xbps-remove dmenu

# time configuration (Must DO)

ln -s /etc/sv/openntpd /var/service/
sv start openntpd