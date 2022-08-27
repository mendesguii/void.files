#!/bin/bash
echo "MUST BE RUN AS SUDO"
# Update packages

xbps-install -Su

xbps-install -u xbps

xbps-install -Su void-repo-nonfree void-repo-multilib

read -r -p "1 - X220 | 2 - Desktop " choice

echo "Installing Packages"
# Installing Core packages
case $choice in 
	1)
	xbps-install i3-gaps pulseaudio xorg xf86-video-intel alacritty chromium firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch tlp chrony xinput qbittorrent p7zip compton fish-shell pulseaudio;;
	2) 
	xbps-install i3-gaps pulseaudio xorg alacritty firefox xrandr arandr pavucontrol neovim python3 bumblebee-status feh rofi neofetch chrony xinput qbittorrent p7zip compton fish-shell libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit steam nvidia ;; 

esac

sleep 5

#configuring fish
echo /bin/fish | sudo tee -a /etc/shells
chsh -s /bin/fish

echo "Setting service for NTPD(Chrony)"
# time configuration (Must DO)
ln -s /etc/sv/chronyc /var/service/
sv start chronyc

echo "Creating a SSH key for github"
mkdir ~/.ssh
cd ~/.ssh
cd ..
chown hxn .ssh
ssh-keygen -o -t rsa -C "guilhermemendes789@gmail.com"

echo "~ Install Script Finished ~"
