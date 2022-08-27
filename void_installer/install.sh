#!/bin/bash
echo "MUST BE RUN AS SUDO"
# Update packages

xbps-install -Su


read -r -p "1 - X220 // 2 - Desktop " choice

# Installing Core packages
case $choice in 
	1)
	xbps-install git i3-gaps xorg xf86-video-intel alacritty chromium firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp chrony unzip xinput qbittorrent pz7ip compton fish
	2) 
	xbps-install git i3-gaps xorg alacritty firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp chrony unzip xinput qbittorrent pz7ip compton fish steam void-repo-nonfree void-repo-multilib nvidia 

esac


#configuring fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# removing
xbps-remove dmenu

echo "Setting service for NTPD(Chrony)"
# time configuration (Must DO)
ln -s /etc/sv/openntpd /var/service/
sv start openntpd

echo "Creating a SSH key for github"
ssh-keygen -o -t rsa -C "guilhermemendes789@gmail.com"

echo "~ Install Script Finished ~"
