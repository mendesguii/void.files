#!/bin/bash
echo "MUST BE RUN AS SUDO IF 2 OPTION IS REQUIRED"
read -r -p "Copy to folder (1) // Copy to system (2): " choice

case $choice in 
	1)# Copying to this folder
	cp -rf $HOME/.config/i3 .
	cp -rf $HOME/.config/alacritty .
	cp -rf $HOME/.config/rofi .
	cp -rf $HOME/.config/compton .
	cp -rf $HOME/.config/nvim .
	cp -rf $HOME/.config/fish .
	cp -f $HOME/.xinitrc .
	cp -f $HOME/.bashrc .
	cp -f $HOME/.bash_profile .
	cp -rf $HOME/.wallpapers .
	cp -rf $HOME/.fonts .
	cp -rf /usr/share/bumblebee-status .	
	cp -rf /usr/share/X11/xorg.conf.d . ;;

	# Copying to the system.
        2)
	cp -rf i3 $HOME/.config
	cp -rf alacritty $HOME/.config
	cp -rf rofi $HOME/.config
	cp -rf compton $HOME/.config
	cp -rf nvim $HOME/.config
	cp -rf fish $HOME/.config
	cp -f .xinitrc $HOME
	cp -f .bashrc $HOME
	cp -f .bash_profile $HOME 
	cp -rf .wallpapers $HOME 
	cp -rf .fonts $HOME
	cp -rf bumblebee-status /usr/share 
	cp -rf xorg.conf.d /usr/share/X11 ;;	


esac
