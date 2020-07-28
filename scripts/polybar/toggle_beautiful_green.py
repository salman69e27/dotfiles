import subprocess
import os
response = str(subprocess.check_output("ps axf | grep polybar | grep -v grep", shell=True))
for line in response.split('\\n'):
    if line.split()[-1] == 'beautiful_green':
        while line[0] not in "1234567890":
            line = line[1:]
        pid = line.split()[0]
        print(pid)
        os.system("polybar-msg -p {} cmd toggle".format(pid))
