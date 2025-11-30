selected=$(echo "Yes, Exit i3
No, Dont Exit i3" | rofi -dmenu -p "Are you sure you want to exit i3?")

if [ "$selected" = "Yes, Exit i3" ]; then
	i3-msg exit
fi
