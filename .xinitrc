#!/bin/sh

setxkbmap gb &
fehbg &
dwmblocks &
dbus-update-activation-environment --all &
dunst &
unclutter --timeout 3 &
picom &
xrdb /home/os-av/.Xresources
exec dwm
