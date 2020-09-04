import sys
import subprocess
keyword=sys.argv[1]
restore=sys.argv[2]
response = str(subprocess.check_output("ps axf | grep waybar | grep -v grep | grep -v python", shell=True))
flag=False
for line in response.split('\\n'):
    if keyword in line.split()[-1]:
        flag=True
        while line[0] not in "1234567890": line = line[1:]
        pid = line.split()[0]
        subprocess.run(f"kill {pid}", shell=True)
        break

if not flag:
    subprocess.run(restore, shell=True)
