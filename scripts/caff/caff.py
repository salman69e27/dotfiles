import os
import subprocess
import sys
locker = 'xsecurelock'
caff = ''
decaf = ''

try:
    if len(sys.argv) > 2:
        raise Exception('Too many arguements')
    elif len(sys.argv) == 2 and sys.argv[-1] != 'toggle':
        raise Exception('Unknown arguement')
    else:
        status = True
        response = subprocess.check_output(f'xset q | grep timeout', shell=True)[:-1]
        if int(response.split()[1] + response.split()[-1]) == 0:
            status = False

    if len(sys.argv)==2:
        if status:
            os.system('xset s 0 0')
        else:
            os.system('xset s 300 300')
        status = not status

    if status: print(decaf)
    else: print(caff)
except Exception as ex:
    print(ex)

