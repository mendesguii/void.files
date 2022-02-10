#!/bin/bash

read -r -p "Copy to folder (1) // Copy to system (2): " choice

case $choice in 
	1)# Copying to this folder
	cp -rf $HOME/.config/i3 .
	cp -rf $HOME/.config/alacritty .
	cp -rf $HOME/.config/rofi .
	cp -rf $HOME/.config/nvim .
	cp -f $HOME/.xinitrc .
	cp -f $HOME/.bashrc .
	cp -f $HOME/.bash_profile .
	cp -rf $HOME/.wallpapers .
	cp -rf $HOME/.fonts .
	cp -rf /usr/share/bumblebee-status . ;;	

	# Copying to the system.
        2)
	sudo -s
	cp -rf i3 $HOME/.config
	cp -rf alacritty $HOME/.config
	cp -rf rofi $HOME/.config
	cp -rf nvim $HOME/.config
	cp -f .xinitrc $HOME
	cp -f .bashrc $HOME
	cp -f .bash_profile $HOME 
	cp -rf .wallpapers $HOME 
	cp -rf .fonts $HOME
	cp -rf bumblebee-status /usr/share ;;	


esac
