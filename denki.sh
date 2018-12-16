#!/bin/bash

echo `date` "Turn $1" >> /home/pi/Programs/remo/denki.log

case $1 in
  on)
    curl -X POST "https://api.nature.global/1/signals/$(cat  ~/Programs/remo/denki_on.txt)/send" -H "Authorization: Bearer $(cat  ~/Programs/remo/token.txt)"
    ;;
  off)
    curl -X POST "https://api.nature.global/1/signals/$(cat  ~/Programs/remo/denki_off.txt)/send" -H "Authorization: Bearer $(cat  ~/Programs/remo/token.txt)"
    ;;
  esac
