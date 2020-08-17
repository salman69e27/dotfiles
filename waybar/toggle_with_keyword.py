import sys
import subprocess
keyword=sys.argv[1]
response = str(subprocess.check_output("ps axf | grep waybar | grep -v grep", shell=True))
for line in response.split('\\n'):
    if keyword in line.split()[-1]:
        while line[0] not in "1234567890": line = line[1:]
        pid = line.split()[0]
        subprocess.run(f"kill -USR1 {pid}", shell=True)
