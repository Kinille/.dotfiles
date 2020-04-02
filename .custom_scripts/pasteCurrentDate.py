#!/usr/bin/env python3

from pyperclip import copy, paste
from datetime import date
import time

today = date.today()

dateString = today.strftime("%F %A")
buffer = paste()

copy(dateString)
time.sleep(5)
copy(buffer)
