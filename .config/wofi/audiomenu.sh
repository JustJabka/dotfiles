#!/bin/bash

# Get outputs
outputs=$(wpctl status | awk '/Sinks:/ {f=1; next} /Sources:/ {f=0} f' | sed 's/[│•*]//g' | sed 's/^\s*//')

[ -z "$outputs" ] && exit
chosen=$(echo "$outputs" | wofi --dmenu --sort alphabetical)
[ -z "$chosen" ] && exit

# Get ID
sink_id=$(echo "$chosen" | awk '{print $1}')
wpctl set-default "$sink_id"
