import subprocess
import os
try:
    response = subprocess.check_output("ps axf | grep \"polybar tray\" | grep -v grep", shell=True)
except:
    os.system("polybar tray &")
else:
    response = str(response)
    while response[0] not in "1234567890":
        response = response[1:]
    os.system("kill -9 {}".format(response.split()[0]))
