killall -q waybar 

while pgrep -u $UID -x waybar >/dev/null; do sleep 1; done

waybar -c /home/salman/.config/waybar/config-top.json -s /home/salman/.config/waybar/style-top.css &
waybar -c /home/salman/.config/waybar/config-bottom.json -s /home/salman/.config/waybar/style-bottom.css &
