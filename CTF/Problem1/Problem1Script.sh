#!/bin/bash
while :
do
  nc -q 2 -u 127.0.0.1 57123 < /home/labuser/CTF/Problem1/file.txt
  sleep 1
done
