#!/bin/sh

source $HOME/.xinitrc-base #basically just the skeleton file
xset r rate 250 40
xscreensaver -nosplash &
exec awesome >> ~/logs/awesome-$(date '+%F-%k-%M-%S').log 2>&1
