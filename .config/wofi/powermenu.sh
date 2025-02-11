#!/bin/bash

options=" Shutdown\n󰑓 Reboot\n Lock"

chosen=$(echo -e $options | wofi --dmenu --prompt="Powermenu" --sort-order alphabetical --width 300 --height 200)

case "$chosen" in
    " Shutdown") systemctl poweroff ;;
    "󰑓 Reboot") systemctl reboot;;
    " Lock") loginctl lock-session;;
    *) ;;
esac
