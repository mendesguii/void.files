#!/bin/sh

feh --bg-fill ~/.wallpapers/$(ls ~/.wallpapers | shuf -n 1) &
picom --config ~/.config/qtile/picom/picom.conf --experimental-backends --animations &
xsetroot -cursor_name left_ptr &
dunst -config $HOME/.config/qtile/dunst/dunstrc &
