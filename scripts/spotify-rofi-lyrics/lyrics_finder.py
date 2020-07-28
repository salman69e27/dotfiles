#!/usr/bin/env python

import subprocess
import os
from dotenv import load_dotenv
import lyricsgenius

# load genius api access token
load_dotenv()
TOKEN = os.getenv('ACCESS_TOKEN')

# get current song name
artist_plus_song = subprocess.check_output('python /home/salman/scripts/spotify/spotify_status.py -t 1000', shell=True)

# if empty then exit
if len(artist_plus_song) == 4:
    with open('/home/salman/scripts/spotify-rofi-lyrics/cur_lyrics', 'w+') as lyrics_file:
        lyrics_file.write("Nosing Playing (Pun Intended)")
    exit()

# convert binary string to utf-8 and extract artist and song
artist_plus_song = artist_plus_song[4:-1].decode('utf-8')
artist, song = artist_plus_song.split(':')
song_name = song[1:]

genius = lyricsgenius.Genius(TOKEN)
song = genius.search_song(song_name, artist)

# write lyrics to file
with open('/home/salman/scripts/spotify-rofi-lyrics/cur_lyrics', 'w+') as lyrics_file:
    if song is None:
        lyrics_file.write('Lyrics Not Found')
    else:
        lyrics_file.write(song.lyrics)
