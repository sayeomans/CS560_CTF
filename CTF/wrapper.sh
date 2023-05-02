#!/bin/bash

/usr/local/games/Problem2.sh &

/home/labuser/CTF/Problem1/Problem1Script.sh &

service ssh start && tail -f /dev/null
