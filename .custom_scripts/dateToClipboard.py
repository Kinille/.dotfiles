#!/usr/bin/env python3

import pyperclip
from datetime import date

today = date.today()

dateString = today.strftime("%F %A")
pyperclip.copy(dateString)
