#!/bin/bash

setxkbmap -option caps:escape &
nitrogen --restore &
picom -f &
xbindkeys --poll-rc &
libinput-gestures-setup start &
clight &
