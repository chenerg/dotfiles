#!/bin/bash

yabai -m window --focus $( yabai -m query --windows --space  | jq '.[0].id' ) 
