import os
import subprocess
import re

# print(re.search("-time [0-9]+", "ahmed -time 10").group(0))
cur = 0

try:
    response = subprocess.check_output("ps axf | grep blurlock | grep -v grep", shell=True)
except:
    pass
else:
    time = re.search('-time [0-9]+', response).group(0).split()[1]

