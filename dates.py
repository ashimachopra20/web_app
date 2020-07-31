#!/usr/bin/python3
import subprocess
print("content-type: text/html")
print()
cmd=subprocess.getoutput('date')
print(cmd)
/* to run linux commands in python import subprocess */


