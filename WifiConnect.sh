#!/bin/bash
echo "THIS MUST BE RUN AS SUDO"
read -r -p "Type SSID: " ssid
read -r -p "Type Password: " pass

sudo wpa_passphrase "$ssid" "$pass" >> /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf
