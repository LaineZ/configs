#!/usr/bin/fish
while true
   set -l FILES ~/wallpapers/motivation/*
   set -l SELECTED_WALLPAPER (random choice $FILES)
   set -l DELAY (random 1800 3600)
   hyprctl hyprpaper unload all
   hyprctl hyprpaper preload "$SELECTED_WALLPAPER"
   hyprctl hyprpaper wallpaper ", $SELECTED_WALLPAPER"
   sleep $DELAY
end
