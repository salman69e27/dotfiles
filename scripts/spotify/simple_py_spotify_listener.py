import subprocess
status = subprocess.check_output('python3 ~/scripts/spotify/spotify_status.py', shell=True)
print(status)
