#!/bin/sh
# $Home/.xinitrc

exec killall notification-daemon &> /dev/null &
exec statnot & 
exec cwm &
exec xrdb .Xresources &
exec killall bg.sh &
exec sh ~/pic/Wallpapers/gifbg/bg.sh &
exec setxkbmap gb &
exec compton
