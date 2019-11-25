#!/usr/bin/env python3

import os
fileLocation = "/home/kinille/.custom_scripts/clicker/clickerFigure.txt"
counterFile = open(fileLocation, "r")

if (os.stat(fileLocation).st_size == 0):
    counterFile.write("0")
else:
    readLine = counterFile.read()
    counterFile.close()
    
    counterFile = open(fileLocation, "w")
    
    output = int(readLine) + 1
    counterFile.write(str(output))

counterFile.close()
