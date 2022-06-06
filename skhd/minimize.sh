#!/bin/bash

cur_win=$(yabai -m query --windows --window | jq '.id')

#source ./next.sh
#yabai -m window --focus next 
yabai -m window $cur_win --minimize
