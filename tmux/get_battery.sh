 #!/bin/sh

if battery_info=$(/usr/bin/pmset -g ps | awk '{ if (NR == 2) print $3 " " $4 }' | sed -e "s/;//g" -e "s/%//") ; then
  battery_quantity=$(echo $battery_info | awk '{print $1}')
  if [[ ! $battery_info =~ "discharging" ]]; then
    battery="#[bg=green,fg=black]  ⚡$battery_quantity% #[default]"
  elif (( $battery_quantity > 20 )); then
    battery="#[bg=green,fg=black] $battery_quantity% #[default]"
  elif (( $battery_quantity > 10 )); then
    battery="#[bg=yellow,fg=black] $battery_quantity% #[default]"
  elif (( $battery_quantity > 5 )); then
    battery="#[bg=orange,fg=black] $battery_quantity% #[default]"
  else
    battery="#[bg=red,fg=black] $battery_quantity% #[default]"
  fi
  echo $battery
fi
