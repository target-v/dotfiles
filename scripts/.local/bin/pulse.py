#!/usr/bin/env python3

from subprocess import Popen, PIPE
from html import escape
import re
my_args = ["pulseaudio-ctl", "full-status"]
proc_data = Popen(my_args, stdout=PIPE, stderr=PIPE).communicate()
regex = re.compile('(?P<volume>\d+).*')

res = regex.match(bytes.decode(proc_data[0]))
print(res)

if res is None:
    volume = 0
else:
    volume = int(res.group('volume'))

icon = "&#xf028;"

if volume < 40:
    icon = "&#xf027;"
if volume < 1:
    icon = "&#xf026;"

#msg = '<span font_weight="normal" foreground="#9AD8E3">{}</span> {}%'.format(icon, volume)
msg = '{}%'.format(volume)

print(msg)

