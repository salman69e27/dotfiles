#!/bin/bash

rofi_command="rofi -theme themes/mpd.rasi"
# Gets the current status of spotify (for us to parse it later on)
status="$(qdbus org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get org.mpris.MediaPlayer2.Player PlaybackStatus)"
# Defines the Play / Pause option content
if [[ $status == "Playing" ]]; then
    play_pause=""
else
    play_pause=""
fi

stop=""
next=""
previous=""

# Variable passed to rofi
options="$previous\n$play_pause\n$stop\n$next"

# Get the current playing song
current=$(python3 ~/scripts/spotify/spotify_status.py)
# If spotify isn't running it will return an empty string, we don't want to display that
if [[ -z "$current" ]]; then
    current="-"
fi

chosen="$(echo -e "$options" | $rofi_command -p "$current" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $previous)
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
        ;;
    $play_pause)
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause 
        ;;
    $stop)
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
        ;;
    $next)
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
        ;;
esac
