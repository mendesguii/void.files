#!/bin/bash
echo "MUST BE RUN AS SUDO IF 2 OPTION IS REQUIRED"
read -r -p "Copy to folder (1) // Copy to system (2): " choice

case $choice in 
	1)# Copying to this folder
	cp -r $HOME/.config/i3 .
	cp -r $HOME/.config/alacritty .
	cp -r $HOME/.config/rofi .
	cp -r $HOME/.config/picom .
	cp -r $HOME/.config/nvim .
	cp -r $HOME/.config/fish .
	cp -r $HOME/.config/dunst .
	cp -r $HOME/.config/gtk-3.0 .
	cp $HOME/.xinitrc .
	cp $HOME/.bashrc .
	cp $HOME/.bash_profile .
	cp -r $HOME/.wallpapers .
	cp -r $HOME/.fonts .
	cp -r $HOME/.icons .
	cp -r /usr/share/bumblebee-status .	
	cp -r /usr/share/X11/xorg.conf.d . ;;

	# Copying to the system.
        2)
	cp -r i3/ $HOME/.config/
	cp -r alacritty/ $HOME/.config/
	cp -r rofi/ $HOME/.config/
	cp -r picom/ $HOME/.config/
	cp -r nvim/ $HOME/.config/
	cp -r fish/ $HOME/.config/
	cp -r dunst/ $HOME/.config/
	cp -r gtk-3.0/ $HOME/.config/
	cp .xinitrc $HOME
	cp .bashrc $HOME
	cp .bash_profile $HOME 
	cp -r .wallpapers $HOME 
	cp -r .fonts $HOME
	cp -r .icons $HOME
	cp -r bumblebee-status/ /usr/share/ 
	cp -r xorg.conf.d/ /usr/share/X11/ ;;	


esac
