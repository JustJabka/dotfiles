#!/bin/bash

options=" Shutdown\n󰑓 Reboot\n Lock"

chosen=$(echo -e $options | wofi --dmenu --prompt="Powermenu" --sort-order alphabetical)

case "$chosen" in
    " Shutdown") systemctl poweroff ;;
    "󰑓 Reboot") systemctl reboot;;
    " Lock") loginctl lock-session;;
    *) ;;
esac
