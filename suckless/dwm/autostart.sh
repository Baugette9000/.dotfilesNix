#!/bin/sh

dunst &
mpd &
unclutter -idle 1 &
xset s off -dpms &
redshift -l 60:5 -O 5750
otd-daemon &
spotifyd &
~/.fehbg &
picom -b &
exec ~/.dotfilesNix/suckless/slstatus/result/bin/slstatus &
