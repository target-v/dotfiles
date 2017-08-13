#!/bin/bash

killall polybar

sleep 1

/home/jason/polybar/build/bin/polybar left -r &
/home/jason/polybar/build/bin/polybar right -r&
