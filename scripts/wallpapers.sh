#!/bin/bash
wallpapers=$(ls ~/.config/wallpapers)
wallpapers=$(echo $wallpapers | sed 's/.jpg /.jpg\\n/g')
current_wallpaper=$(cat ~/.config/sway/wallpaper) 
current_wallpaper=$(echo "$current_wallpaper" | awk '{print $4}')
echo $current_wallpaper
choice=$(echo -e $wallpapers | rofi -dmenu -p "Choose a wallpaper, current is $current_wallpaper" -no-show-icons -theme-str "element {padding: 10px 5px;}")
if [[ "$wallpapers" =~ "$choice" && "$choice" != "" ]]; then
sed -i "s|${current_wallpaper}|~/.config/wallpapers/${choice}|g" ~/.config/sway/wallpaper
swaymsg reload
fi
