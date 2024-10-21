#!/usr/bin/fish
while true
   set -l FILES ~/wallpapers/motivation/*
   set -l SELECTED_WALLPAPER (random choice $FILES)
   set -l DELAY (random 1800 3600)
   swww img $SELECTED_WALLPAPER --transition-fps 40 --transition-step 1
   sleep $DELAY
end
