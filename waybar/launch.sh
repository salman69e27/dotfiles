killall waybar 
sleep 2
waybar -c /home/salman/.config/waybar/config-top.json -s /home/salman/.config/waybar/style-top.css &
waybar -c /home/salman/.config/waybar/config-bottom.json -s /home/salman/.config/waybar/style-bottom.css &
