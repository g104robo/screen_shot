#!/bin/bash
export DISPLAY=:1
LOCATION="/home/tombo/Pictures/fx_rate/"
mkdir -p $LOCATION
cd $LOCATION
for((i=0;i<5;i++)); do
    wmctrl -s $i
    #sleep 1
    #scrot '%Y-%m-%d_%T.png'
    shutter -e -n --disable_systray --window=.*Chrome* -o '%y-%m-%d_%T.png'
    #sleep 1
done

wmctrl -s 0
