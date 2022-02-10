#!/bin/bash

# Update packages

xbps-install -Su

# Installing Core packages

xbps-install git i3-gaps xf86-video-intel alacritty chromium firefox xrandr arandr pavutcontrol neovim python3 bumblebee-status feh rofi

# removing
xbps-remove dmenu

# time configuration (Must DO)

xbps-install openntpd
ln -s /etc/sv/openntpd /var/service/
sv start openntpd
