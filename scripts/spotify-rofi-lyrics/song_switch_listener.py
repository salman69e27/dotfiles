import subprocess
import os
from time import sleep
try:
    previous_song = ''
    while True:
        cur_song = subprocess.check_output('python /home/salman/scripts/spotify/spotify_status.py -t 1000', shell=True)
        if previous_song != cur_song:
            subprocess.call('python /home/salman/scripts/spotify-rofi-lyrics/lyrics_finder.py &', shell=True)
        previous_song = cur_song
        sleep(2)
except Exception as ex:
    print(ex)
    os.system('notify-send "Problem with song_switch_listener.py. exiting.."')
    exit()
