#!/bin/bash

if [ $(yabai -m query --spaces --space  | jq '.type' | tr -d '"') = "bsp" ]; then
  yabai -m window --focus prev || yabai -m window --focus last
else
  win=$(yabai -m query --windows --space | jq -re "[sort_by(.id, .frame)  | .[] | select(.role == \"AXWindow\" and .subrole == \"AXStandardWindow\") | .id] | nth(index($(yabai -m query --windows --window | jq -re ".id")) - 1)")

#  if $(yabai -m query --windows --window  | jq '."is-topmost"'); then 
#    yabai -m window --toggle topmost
#  fi

  yabai -m window --focus $win

#  if ! $(yabai -m query --windows --window  | jq '."is-topmost"'); then 
#    yabai -m window --toggle topmost
#  fi
fi
