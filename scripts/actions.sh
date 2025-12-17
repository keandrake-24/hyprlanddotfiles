#!/bin/bash
options="⏻ Shutdown\n🔄 Reboot\n💤 Suspend\n⏎ Exit Sway"
choice=$(echo -e $options | rofi -dmenu -p "Choose an action" -no-show-icons -theme-str 'element { padding: 5px 5px; }' )
case  "$choice" in
	"⏻ Shutdown")
		source ~/.config/scripts/askforsudo.sh | sudo -S shutdown now
		;;
	"🔄 Reboot")
		source ~/.config/scripts/askforsudo.sh | sudo -S reboot
		;;
	"💤 Suspend")
		systemctl suspend
		;;
	"⏎ Exit Sway")
		swaymsg exit	
esac
 
