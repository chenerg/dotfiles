#!/bin/bash

win=$(yabai -m query --windows --space | jq -re "[sort_by(.id, .frame) | reverse | .[] | select(.role == \"AXWindow\" and .subrole == \"AXStandardWindow\") | .id] | nth(index($(yabai -m query --windows --window | jq -re ".id")) - 1)")

#if $(yabai -m query --windows --window  | jq '."is-topmost"'); then 
#  yabai -m window --toggle topmost
#fi

yabai -m window --focus $win

#if ! $(yabai -m query --windows --window  | jq '."is-topmost"'); then 
#  yabai -m window --toggle topmost
#fi
