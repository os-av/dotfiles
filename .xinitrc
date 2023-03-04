#!/bin/sh

setxkbmap gb &
unclutter --timeout 3 &
fehbg &
dwmblocks &
dbus-update-activation-environment --all &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
dunst &
xrdb /home/os-av/.Xresources
exec dwm
