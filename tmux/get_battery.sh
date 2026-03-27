#!/bin/bash

battery_info=$(/usr/bin/pmset -g ps | awk 'NR==2 { gsub(/;|%/, ""); print $3, $4 }')
battery_quantity=$(echo "$battery_info" | awk '{print $1}')

if [ -z "$battery_quantity" ]; then
  exit 0
fi

# 充電中かどうか
if echo "$battery_info" | grep -qv "discharging"; then
  icon="⚡"
else
  icon=""
fi

# バッテリー残量で色を変える (Catppuccin Mocha)
if [ "$battery_quantity" -gt 50 ]; then
  color="#a6e3a1" # Green
elif [ "$battery_quantity" -gt 20 ]; then
  color="#f9e2af" # Yellow
elif [ "$battery_quantity" -gt 10 ]; then
  color="#fab387" # Peach
else
  color="#f38ba8" # Red
fi

echo "#[fg=$color]$icon$battery_quantity% #[default]"
