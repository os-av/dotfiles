setxkbmap gb &
unclutter --timeout 3 &
fehbg &
dwmblocks &
dbus-update-activation-environment --all &
gnome-keyring-daemon --start --components=secrets &
exec dwm
