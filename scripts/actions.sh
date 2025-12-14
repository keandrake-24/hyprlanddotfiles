#!/bin/bash
options="Shutdown\nReboot\nSuspend\nExit Sway"
choice=$(echo -e $options | rofi -dmenu -p "Choose an action"  )
case  "$choice" in
	Shutdown)
		source askforsudo.sh | sudo -S shutdown now
		;;
	Reboot)
		source askforsudo.sh | sudo -S reboot
		;;
	Suspend)
		systemctl suspend
		;;
	"Exit Sway")
		swaymsg exit	
esac
