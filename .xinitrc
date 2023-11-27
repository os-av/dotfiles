#!/bin/sh

setxkbmap gb &
fehbg &
dwmblocks &
dunst &
unclutter --timeout 3 &
exec dwm
